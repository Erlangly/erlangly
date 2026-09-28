# Erlangly

Workforce management for contact centres: forecasting, Erlang C staffing, schedule generation that follows labour law, time off and shift swaps, adherence and a live wallboard. It runs on your own server, as one Docker container.

## Install

On a Linux server (Ubuntu or Debian, x86-64 or ARM64, 2 GB of memory or more):

```sh
curl -fsSL https://get.erlangly.com | sh
```

This installs Docker if it isn't there yet, installs the `erlangly` command, and starts Erlangly on port 80. It takes about a minute. Open the server's address in a browser to set up your organisation and your admin account.

To serve it over HTTPS with a free Let's Encrypt certificate, point a domain at the server and pass it in:

```sh
curl -fsSL https://get.erlangly.com | TLS_DOMAIN=wfm.example.com sh
```

Prefer Docker Compose? [`compose.yml`](compose.yml) runs the same container.

## Run it

```
erlangly status              Is Erlangly up, which version, and where to reach it
erlangly logs -f             Follow the app's log
erlangly restart             Restart Erlangly
erlangly upgrade             Install the latest release; rolls back by itself if it doesn't start
erlangly rollback            Go back to the previous version and the data from just before the upgrade
erlangly backup              Save all data to /var/backups/erlangly
erlangly restore <file>      Replace all data with a backup
erlangly version             Show the installed version

erlangly schedule [DATE]     Published shifts on a day (--lob CODE, --json)
erlangly volumes import FILE Import contact volume history from a CSV file
erlangly timeoff             Time off waiting for a decision (approve|decline ID [NOTE])
```

Settings live in `/etc/erlangly/erlangly.conf`. Run `erlangly restart` after changing them.

## Your data

Everything Erlangly stores lives in one Docker volume named `erlangly`: the databases, uploaded files and the secret key. Nothing leaves your server unless you set it up to:

- **Email** goes through your own mail server (Settings → Email).
- **The update check** asks get.erlangly.com once a day for the latest version number and sends nothing about you. Turn it off under Settings → System.
- **There's no telemetry.**

**Backups.** Erlangly saves a copy of all its data every night, on the server, keeping the newest 14. Those protect against mistakes and bad upgrades. To protect against losing the server, copy backups somewhere else too: `erlangly backup` writes one to `/var/backups/erlangly`, ready for your usual off-site backups.

**Upgrades** are safe to run at any time. Before a new version changes the database, Erlangly takes a snapshot. If the new version doesn't start, `erlangly upgrade` puts the previous version and the snapshot back by itself.

## Connect your ACD, and your own tools

- **Agent states:** each ACD, or a small script in front of one, sends state changes to `POST /api/v1/agent_state_events` with its own token (Settings → Connections).
- **Volumes:** interval volumes go to `POST /api/v1/volume_intervals`, or come in as CSV imports.
- **Your own scripts and AI agents** use the JSON API with a personal token (Your account). The token acts as you, with your role: read published shifts, the roster and time off, ask for or decide time off, import volumes.

## Licence

Erlangly is proprietary software from FrontLine Software Solutions Inc., licensed under the [Erlangly EULA](EULA.md). Every feature is in every plan:

- **Free:** up to 25 active agents, for good.
- **Trial:** 30 days with unlimited agents.
- **Paid:** per active agent.

See [erlangly.com](https://erlangly.com) for pricing.

## Security

Please report security problems privately: see [SECURITY.md](SECURITY.md).
