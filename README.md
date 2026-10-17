# Erlangly

Workforce management for contact centres: forecasting, Erlang C staffing, schedule generation that follows labour law, time off and shift swaps, adherence and a live wallboard. It runs on your own server, as one Docker container.

## Install

On a Linux server (Ubuntu or Debian, x86-64 or ARM64, 2 GB of memory or more, and disk for a year of your data: 20 GB for a small floor, about 80 GB for 500 agents; see [how much disk](https://erlangly.com/docs/install#disk)):

```sh
curl -fsSL https://get.erlangly.com | sh
```

This installs Docker if it isn't there yet, installs the `erlangly` command, and starts Erlangly on port 80. It takes about a minute, then prints a secret setup link: open it to create your organisation and your admin account. Until then, nobody else can set up your server. (Lost the link? Run `erlangly setup-link`.) Next, Erlangly asks you to activate a licence: the free plan, a 30-day trial or your licence key. Until you have, that's all it shows.

To serve it over HTTPS with a free Let's Encrypt certificate, point a domain at the server and pass it in:

```sh
curl -fsSL https://get.erlangly.com | TLS_DOMAIN=wfm.example.com sh
```

Already running a reverse proxy (nginx, Nginx Proxy Manager, Caddy, a Cloudflare tunnel…)? Install on another port and tell Erlangly its address; your proxy handles HTTPS and forwards to it, with WebSockets on for the live wallboard:

```sh
curl -fsSL https://get.erlangly.com | ERLANGLY_HTTP_PORT=8095 ERLANGLY_URL=https://wfm.example.com sh
```

Without either, Erlangly serves plain HTTP, so passwords and API tokens cross the network unencrypted. Use that only on a trusted network.

To read the installer before running it, check it against the published checksums: `curl -fsSLO https://get.erlangly.com/install.sh && curl -fsSL https://get.erlangly.com/SHA256SUMS | sha256sum -c --ignore-missing`. The `erlangly` command then downloads Erlangly by the image digest listed for each release at [get.erlangly.com/images](https://get.erlangly.com/images), never just by its tag.

Prefer Docker Compose? [`compose.yml`](compose.yml) runs the same container.

## Run it

```
erlangly status              Is Erlangly up, which version, where to reach it, what needs looking at
erlangly logs -f             Follow the app's log (the newest 100 MB are kept)
erlangly restart             Restart Erlangly
erlangly upgrade             Install the latest release; rolls back by itself if it doesn't start
                             (it needs twice the databases' size free on disk, and at least 2 GB;
                             --force goes ahead anyway)
erlangly rollback            Go back to the previous version and the data from just before the upgrade
                             (it asks first, and saves your data as it is now in /var/backups/erlangly)
erlangly backup              Save all data to /var/backups/erlangly
erlangly restore <file>      Replace all data with a backup
erlangly version             Show the installed version
erlangly setup-link          The secret link for creating the first admin on a new install
erlangly reset-link EMAIL    A link for someone to choose a new password (locked out, and no email)
erlangly licence             The plan, activation, agents and updates this install is licensed for

erlangly schedule [DATE]     Published shifts on a day (--lob CODE, --json)
erlangly volumes import FILE Import contact volume history from a CSV file
erlangly timeoff             Time off waiting for a decision (approve|decline ID [NOTE])
```

Settings live in `/etc/erlangly/erlangly.conf`. Run `erlangly restart` after changing them.

## Your data

Everything Erlangly stores lives in one Docker volume named `erlangly`: the databases, uploaded files and the secret key. Nothing leaves your server unless you set it up to:

- **Email** goes through your own mail server (Settings → Email). Some hosting companies, DigitalOcean among them, block outgoing mail ports (25, 465, 587) on new servers: if the test email says the mail server can't be reached, ask them to unblock port 587.
- **Litestream copies**, if you turn them on, go to your own bucket.
- **Activating your licence** goes through your browser, not the server. **Activate** opens store.erlangly.com with the licence key's id, a random id for this install and its address, and the store sends your browser back with an activation code. For the free plan, the store also asks for your organisation, a work email and your country. Your server itself never contacts us about its licence.
- **The update check** asks get.erlangly.com once a day for the latest version number and sends nothing about you. Turn it off under Settings → System.
- **There's no telemetry.**

**Backups.** Erlangly saves a copy of all its data every night, on the server, keeping one a day for the last 7 days and one a week for the 4 weeks before those (`ERLANGLY_DAILY_BACKUPS` and `ERLANGLY_WEEKLY_BACKUPS` in `/etc/erlangly/erlangly.conf` change that). Those protect against mistakes and bad upgrades. To protect against losing the server, copy backups somewhere else too: `erlangly backup` writes one to `/var/backups/erlangly`, ready for your usual off-site backups.

**Copies off the server.** Erlangly can copy every change to its database to S3-compatible storage (AWS S3, DigitalOcean Spaces, Cloudflare R2, Backblaze B2…) as it happens, with [Litestream](https://litestream.io). Add these to `/etc/erlangly/erlangly.conf` and run `erlangly restart`:

```
LITESTREAM_REPLICA_URL=s3://my-bucket/erlangly?endpoint=tor1.digitaloceanspaces.com
LITESTREAM_ACCESS_KEY_ID=…
LITESTREAM_SECRET_ACCESS_KEY=…
```

Once Erlangly is running with them (after installing, `erlangly restart` or `erlangly upgrade`), the `erlangly` command adds a copy of Erlangly's secret key to the same file (`ERLANGLY_SECRET_KEY`), which the passwords and secrets saved in Erlangly are encrypted with. Keep a copy of the whole file somewhere other than the server, as safe as your backups: with it, anyone can read the copies in your bucket and the passwords and secrets saved in them.

If you lose the server, put your copy at `/etc/erlangly/erlangly.conf` on a new one and install there: Erlangly restores the data from the copy on its first start, and carries on as before. Without the secret key, everyone signs in again and an admin enters the mail server password, the single sign-on client secret and each ACD connection's secret again (Settings → System lists them; see [erlangly.com/docs/running](https://erlangly.com/docs/running)).

**Monitoring.** Point an uptime checker at `https://your-address/up` (200 once Erlangly is running), and at `/up?deep=1` (503 while Settings → System lists something that needs looking at; the activation notice of an install from before activation, only in its last 3 days). On the server, `erlangly status` exits with 1 when Erlangly isn't up or something needs looking at, for cron or your monitoring agent.

**Upgrades** are safe to run at any time. Before a new version changes the database, Erlangly takes a snapshot (the last two upgrades' are kept). If the new version doesn't start, `erlangly upgrade` puts the previous version and the snapshot back by itself. With a lot of data the snapshot and the changes can take a few minutes, and the upgrade waits for them. Once the new version is up, it keeps the version before it for `erlangly rollback` and removes older versions, so they don't fill the disk. Upgrades, rollbacks, restores, backups and restarts run one at a time. With a pay-once licence, it installs releases that came out before your updates end; after that, your current version keeps running. A later release isn't installed, by an upgrade or by installing again over the same data, and it says which is the newest public release your updates cover (`erlangly upgrade 0.8.165`, say), or, installing again, how to run the version your data is from. It reads the date even while Erlangly is stopped; when it can't, it stops and says what to do. Without a pay-once key, nothing stops an upgrade.

## Connect your ACD, and your own tools

- **Agent states:** each ACD, or a small script in front of one, sends state changes to `POST /api/v1/agent_state_events` with its own token (Settings → Connections).
- **Volumes:** interval volumes go to `POST /api/v1/volume_intervals`, or come in as CSV imports.
- **Your own scripts and AI agents** use the JSON API with a personal token (Your account). The token acts as you, with your role: read published shifts, the roster and time off, ask for or decide time off, import volumes.

## Licence

Erlangly is proprietary software from FrontLine Software Solutions Inc., licensed under the [Erlangly EULA](EULA.md). Every feature is in every plan, and every install needs its licence activated, the free plan included; a licence runs on one install at a time.

- **Free:** up to 25 active agents, for good. Choose it when Erlangly asks you to activate: the store asks for your organisation, a work email (confirmed by email) and your country.
- **Trial:** 30 days with unlimited agents and up to 5 people signing in, on one install. When it ends, activate the free plan or a paid licence.
- **Paid:** per active agent.

Activating opens store.erlangly.com in your browser; your server never contacts us. When your browser can't reach the store, choose *No internet here?*: Erlangly shows a short code to enter at store.erlangly.com/activate on any device that can, a phone say, and you type in the code it gives back. Installs from before activation (before 0.8.165) get 30 days' notice in Erlangly first. Moving to another server: Settings → Licence → Remove the licence key on the old one, then activate it on the new one. See [erlangly.com/docs/licence](https://erlangly.com/docs/licence) for how licences work, and [erlangly.com](https://erlangly.com) for pricing.

Erlangly is built with open-source software, which keeps its own licences: [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) lists each part and its licence, and the image carries the same file.

## Security

Please report security problems privately: see [SECURITY.md](SECURITY.md).
