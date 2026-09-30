# Changes

## 0.8.16 (2026-09-30)
- Removing the sample data also removes the schedules you made from it while trying Erlangly out, as long as they weren't published and hold none of your own people's shifts.
- Forecasts longer than a week are named for their dates ("Billing, October 4, 2026 to October 31, 2026") instead of "week of".
- *Forecast every line of business* also makes a forecast for a line of business whose forecasts leave some of the days out.

## 0.8.15 (2026-09-30)
- A new forecast covers the same weeks as a new schedule period, from your organisation's week start. It used to start on a Monday, so with Sunday weeks a schedule's Sundays had no forecast.
- *Forecast every line of business* on the Forecast page makes a forecast for each line of business with history, in one go.
- When lines of business have no published forecast for some days of a schedule, the draft says so once, naming the days, instead of once a week for each. A forecast covering only part of a week no longer counts for the rest of it.
- New organisations start their weeks on Sunday. Yours keeps its setting (Settings → Organisation).
- A new install opens with a choice: look around with the sample data, or set up your own, with the steps in order. The sample lines of business now plan for realistic shrinkage, and removing the sample data works after you've forecast or scheduled it.
- The installer says when a new server is still installing its own updates, and waits for them.

## 0.8.14 (2026-09-29)
- When the mail server can't be reached at all, Settings → Email says so and names the likely cause: some hosting companies, DigitalOcean among them, block outgoing mail ports on new servers. Before, it said "execution expired".

## 0.8.13 (2026-09-29)
- Licence keys from the Erlangly store (trials now, purchases soon) are accepted alongside the keys we issue by hand. Rule packs are still only accepted with our own signature.

## 0.8.12 (2026-09-29)
- When your mail server refuses an email and hangs up straight away, as Google's SMTP relay does, Erlangly now shows what the server said (for example "Invalid credentials for relay") instead of "SSL_read: unexpected eof while reading": on Settings → Email for test emails, and in the log for emails sent in the background.

## 0.8.11 (2026-09-29)
- Copies off the server with Litestream: set `LITESTREAM_REPLICA_URL` and its two keys in `/etc/erlangly/erlangly.conf`, and every change to the database goes to your S3-compatible bucket within seconds. A new server with the same settings restores the data on its first start. On a server installed before 0.8.9, get the new `erlangly` command first (see 0.8.9).
- After such a restore, Settings → Email asks for the mail server password again instead of failing.

## 0.8.10 (2026-09-29)
- get.erlangly.com/images also lists the releases before 0.8.9, so installing or going back to one of them works with the new `erlangly` command.

## 0.8.9 (2026-09-29)
- `erlangly install` and `erlangly upgrade` download Erlangly by the image digest listed for each release at get.erlangly.com/images, never just by its tag, so the image you run is the one we built. On a server installed before 0.8.9, get the new `erlangly` command first: `curl -fsSL https://get.erlangly.com/erlangly | sudo install -m 755 /dev/stdin /usr/local/bin/erlangly`.

## 0.8.8 (2026-09-29)
- Pay-once licences: `erlangly upgrade` installs releases up to the licence's updates date, and new rule packs follow the same date. After it, your current version keeps running.
- Settings → Licence shows when a pay-once licence's updates end, and admins are told 30 days before.
- `erlangly licence` shows the plan, agents and updates date on the server.

## 0.8.7 (2026-09-28)
- *Invite to sign in* says why nobody can be invited: everyone can already sign in, email addresses are missing, or the list is only sample people.

## 0.8.6 (2026-09-28)
- Invite a whole roster at once: *Invite to sign in* on People emails an invitation to everyone on the list who has an email address and can't sign in yet.

## 0.8.5 (2026-09-28)
- Swaps only offer colleagues' shifts that neither person is already working during, so an agreed swap can always be approved.
- The installer says when a private image needs a registry token.

## 0.8.4 (2026-09-28)
- Runs behind your own HTTPS proxy: set `ERLANGLY_URL=https://wfm.example.com` (with `ERLANGLY_HTTP_PORT` for another port) and Erlangly trusts the proxy's HTTPS, so sign-in, forms and the live wallboard work.

## 0.8.3 (2026-09-28)
- Fixes 0.8.2's first start on a new server, which stopped while making the setup link.

## 0.8.2 (2026-09-28)
- A new install is set up through a secret one-time link that `erlangly install` prints (`erlangly setup-link` shows it again), so nobody else can claim a fresh server.
- Passwords need at least 12 characters, and a blank one no longer accepts an invitation or resets a password. Sessions last 30 days.
- A supervisor's own time off waits for another supervisor.
- A strict Content-Security-Policy; SMTP requires STARTTLS unless set otherwise; the install warns when it serves plain HTTP.
- The `erlangly` command keeps its files private, reads its settings instead of running them, and the installer only runs once fully downloaded.

## 0.8.1 (2026-09-28)
- Fixes from a code review: periods with shift swaps can take a new draft; expired swaps can't be approved; coverage counts only planned activities; recorded exceptions survive shift changes and swaps; ACD agent IDs match their connection; supervisors can't decide their own requests.

## 0.8.0 (2026-09-28)
- Personal API tokens and a JSON API that acts as you, with your role.
- `erlangly schedule`, `erlangly volumes import` and `erlangly timeoff` on the server.
- Email through your own mail server: invitations, password resets, published schedules, time-off and swap decisions.
- Nightly backups on the server, and a daily update check you can turn off.

## 0.7.0 (2026-09-28)
- Connections for your ACDs, with their own tokens, agent IDs and state codes.
- Adherence scored every 15 minutes against the published schedule; the wallboard on real schedules.
- Exceptions (late, sick, meetings, overtime), reported by agents and approved by supervisors.
- Saved wallboard views, alarm times, and an adherence report by person, team and line of business.

## 0.6.0 (2026-09-28)
- Agents see their own schedule on their phones and say they've seen it.
- Time off: asking, approving, importing; generation leaves it free.
- Shift swaps between agents, checked against labour law.

## 0.5.0 (2026-09-28)
- Labour-law rule packs (Canada, Jamaica, United States; beta), holidays, and checks on generation, edits and publishing.

## 0.4.0 (2026-09-28)
- Schedule periods, generated drafts, hand editing and publishing.

## 0.3.0 (2026-09-27)
- Volume history, forecasts and Erlang C staffing.

## 0.2.0 (2026-09-27)
- Sites, lines of business, teams, people, CSV import, licence keys and sample data.

## 0.1.0 (2026-09-27)
- Sign-in, roles, first-run setup, invitations, the audit trail and the installer.
