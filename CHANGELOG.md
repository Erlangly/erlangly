# Changes

## 0.8.40 (2026-10-01)
- **Genesys Cloud connector (beta), complete.** Match Genesys's queues to your lines of business (a queue taking calls and chats is listed once for each) and Erlangly reads their contacts, handle time and abandons every 15 minutes, with the last 13 weeks straight away.
- Checked against Genesys's own API description: agents on queue are recognised however Genesys spells it, and an agent who's on queue but in no active queue shows as Aux.
- Agents the OAuth client's role can't see no longer stop everyone else's status: the connection's page says how many aren't heard and which permission is missing.
- Safer: Erlangly only signs in to Genesys's own addresses for your region, checked before anything is sent; presence messages and out-of-office stay out of diagnostics.
- Setting up: erlangly.com/getting-started/acd has a Genesys Cloud section.

## 0.8.39 (2026-10-01)
- Schedules flagged before 0.8.37 also stop warning about a republished forecast on drafts made after it.

## 0.8.38 (2026-10-01)
- The schedule's hours also stretch to cover every interval the forecast needs people, so a gap with forecast volume and no shifts is never cut off.

## 0.8.37 (2026-10-01)
- **Late and overnight shifts show on their own day in the schedule.** The grid's day used to stop at 10 PM, so shifts ending later spilled into the next morning: they were counted there in the week view's coverage, and a shift ending at midnight was drawn as a sliver with its breaks outside it. Days now stretch to fit the shifts (all 24 hours once one runs past midnight), and the week and day views agree.
- The warning that a forecast was republished (or that someone moved off a line of business) now shows only on drafts made before it, not on ones generated since.

## 0.8.36 (2026-10-01)
- **Change a shift pattern's breaks and lunch without removing them.** Each activity on a shift pattern has an *Edit* link that opens it in place, with its length, window and minimum shift length filled in.
- **Genesys Cloud connector (beta), first part.** Connect it under *Settings → Connections* with a view-only OAuth client and your region: it's checked with Genesys before saving, and agents' live statuses arrive for adherence and the wallboard, pre-mapped from Genesys's own presences.

## 0.8.35 (2026-10-01)
- **Zoom Contact Center connector (beta), made sturdier:** it stays connected instead of reconnecting every half minute, notices a dropped connection within a minute, reads chat and email volumes correctly, copes with floors of more than 500 agents, waits when Zoom asks it to slow down, and shows on the connection's page when reading volumes or statuses fails. Its diagnostics file now keeps only what says nothing about a person.
- Stopping the Zoom connector's process no longer stops Erlangly.

## 0.8.34 (2026-10-01)
- The *From* date beside *Use draft* shows the whole date.

## 0.8.33 (2026-10-01)
- **Choose the day a new draft takes over the schedule.** Once a period has a schedule, *Use draft N* and *Add draft N to the schedule* ask for the day it starts from: the start of next week by default, tomorrow at the earliest. Shifts before that day stay exactly as they are, so schedules can go out with notice, and a new draft no longer replaces days already worked. Only the people whose shifts change are asked to look again.
- **People imports change contract hours from the effective date.** A row with an `effective_date` now starts the new hours and days a week on that date, like its lines of business, and the contract before ends the day before. The preview says what the contract becomes and from when.
- **Zoom Contact Center connector (beta).** Connect it under *Settings → Connections*: it's checked with Zoom before saving, Zoom's statuses come pre-mapped, and agents are linked by email the first time. Agent states arrive live for adherence and the wallboard, and queue volumes come in every 15 minutes as volume history for forecasting, with 13 weeks of history when a queue is first matched. A connection's page shows its health, with a diagnostics file for support.
- **`erlangly upgrade` is safer.** It brings itself up to date before upgrading, never goes back to an older version unless you name one, and always means the latest public release: a version named when installing is no longer remembered.

## 0.8.32 (2026-09-30)
- **Schedule some lines of business without touching the others.** In a schedule period, *For some lines of business…* generates a draft for the lines you tick. It schedules only their people, around the shifts they already have on the other lines. *Add it to the schedule* replaces only those lines' shifts from today on: the others stay exactly as published, and only the people whose shifts changed are told. Useful for a new line of business starting mid-schedule, or for regenerating one line.

## 0.8.31 (2026-09-30)
- **Connect Claude, ChatGPT and other AI assistants by address.** Once an admin turns AI assistants on (*Settings → AI agents*), a person pastes your Erlangly's address with `/mcp` on the end into their assistant, signs in to Erlangly as usual (password or SSO), and chooses what it may do: only read, or read and change. No token to copy. It never sees other people's personal details, and it can't publish schedules.
- **See and disconnect connected assistants:** your own under *Your account*, and everyone's for admins under *Settings → AI agents*. A connection ends by itself after 30 days without use, and sooner for people who must use SSO.

## 0.8.30 (2026-09-30)
- The live forecast page picks its days with a **From and To date picker**, with *Today* and *This week* shortcuts, instead of a button per week. It shows up to five weeks at a time, and a single day shows its intervals.

## 0.8.29 (2026-09-30)
- **Moving someone off a line of business vacates their shifts on it.** When their assignment ends, by hand or by a people import, their shifts on that line from then on are removed, for the planner to fill. The schedule is flagged as needing regenerating, with who moved and from when, and they're asked to look at their schedule again. The import preview says how many shifts each move removes. Days that have gone by are never touched.
- Shrinkage rates can be entered to a hundredth of a percent (like 0.63% for 15 minutes of coaching a week), not just in half-percent steps.

## 0.8.28 (2026-09-30)
- **One live forecast per line of business.** The Forecast page shows each line of business's live forecast (everything published for it, as one) and its drafts, instead of a growing list of published pieces. The live forecast has its own page, a week at a time, with the same figures, accuracy and day-by-day intervals as a forecast.
- **Nothing replaced is lost.** When a published forecast takes over days, what it replaced for them is archived, not deleted, and each line of business has a forecast **history**: every publish, who made it, the days it added and what it replaced.

## 0.8.27 (2026-09-30)
- **AI assistants and scripts get less personal data.** The API and MCP leave out other people's email addresses, ACD IDs and time-off notes, since what an AI assistant reads goes to the company that makes it. People still see their own. An admin can make a token that includes them, for scripts like an HR sync.
- **Erlangly only answers to its own address** once one is set (with `TLS_DOMAIN`, in *Settings → Email*, or by the installer), and to its IP addresses. This protects against pages elsewhere reaching it through a borrowed domain name. If people reach your Erlangly by a second name, set the address to the one they use.
- **Sturdier AI connections.** Odd requests from an assistant get a clear error instead of a failure, requests are limited per address as well as per token, and a draft with nothing to cover no longer reports 100% coverage.

## 0.8.26 (2026-09-30)
- **Move people between lines of business by import.** In a people import, the lines of business in someone's row are now theirs from then on: any others end the day before. A new optional `effective_date` column says when (today if blank, and never in the past), so you can prepare a move for next Monday. Leaving the cell blank still changes nothing. The preview says who leaves and joins which line, and when, and undo puts it back.

## 0.8.25 (2026-09-30)
- The file picker on the import pages looks like the rest of Erlangly: its *Choose file* button is centred in the box, with the file name beside it.

## 0.8.24 (2026-09-30)
- Adding or editing an ACD queue on a line of business saves again. Before, *Add queue* and *Save* did nothing.

## 0.8.23 (2026-09-30)
- **A line of business's published forecast is its forecast over time.** Publishing a forecast now merges it in: a published forecast already covering some of its days keeps only the days the new one doesn't cover (split in two if the new one sits in the middle). No day has two published forecasts, and none is left without one. This replaces 0.8.21's refuse-and-unpublish rule, and *Unpublish* is gone.
- **Days that have gone by stay as they were forecast.** In a published forecast they can't be overridden, and *Recalculate* only changes today onwards, so accuracy is measured against what was really forecast.
- **Forecasts are made from today on.** A new forecast can't start in the past, and one that starts in the past can't be published.
- **New forecast for one or more lines of business.** Tick the lines you want; each gets its own draft for the same dates and history. This replaces the *Forecast every line of business* button.

## 0.8.22 (2026-09-30)
- **Works with your AI assistant.** Claude, ChatGPT, Copilot and other assistants that speak MCP can connect to Erlangly and answer from your schedules, forecasts, coverage, adherence and the floor, or ask for, approve and turn down time off, each as the person whose token it uses and with their role. Read-only tokens only look; nothing can publish a schedule. It's off until an admin turns it on under *Settings → AI agents*, which then shows the address to give your assistant.

## 0.8.21 (2026-09-30)
- **A line of business has one published forecast for any day.** Publishing a forecast whose dates overlap a published one is refused, naming it and the days they share; unpublish that one first with the new *Unpublish* button. Before, publishing turned the whole overlapping forecast back into a draft, which could leave some of its days with no published forecast. Drafts can still overlap, so you can compare versions.
- **API tokens fit for AI agents.** New tokens are read-only unless you let them change things, and they expire after 30 days, 90 days or a year. They stop working when their person is turned off, and within 30 days for people who must sign in with SSO. Making and revoking them is in the audit trail. Admins see everyone's tokens in *Settings → AI agents* and can revoke any. Existing tokens keep read-and-write access and now expire in 90 days.
- **The API reads more:** forecasts with the agents each interval needs, schedule periods and their drafts, coverage through the day, adherence by person, team or line of business, the floor right now, and one person in detail. Staff only, as on the pages.

## 0.8.20 (2026-09-30)
- **Forecast every line of business asks first**, and says what it will make: which lines of business, for which dates, from how much history, and that nothing is published until you check and publish each draft. The button is hidden when every line of business is already forecast for the next planning period.

## 0.8.19 (2026-09-30)
- **Delete a draft forecast.** Draft forecasts have a *Delete* button on their page and in the list on Forecast, and ask before deleting. Published forecasts can't be deleted, since staffing and scheduling use them: publish another for those dates first, and the old one becomes a draft you can delete. Deletions are recorded in the audit trail.

## 0.8.18 (2026-09-30)
- **Discard a draft you don't need.** A schedule period's drafts each have a *Discard* button, so a draft made in error no longer sits there for good. The schedule itself, a draft still being generated and the period's last draft can't be discarded; the other drafts keep their numbers.
- **Settings → Export** gives you everything this install holds as a .zip of CSV files, one per table, with secrets left out. It's made in the background and kept for a week, and exports and downloads are recorded in the audit trail. `erlangly export` does the same on the server.

## 0.8.17 (2026-09-30)
- **Sign in with your company account.** Settings → Sign-in connects Erlangly to Microsoft Entra ID, Google Workspace, Okta or another OIDC identity provider. You test it by signing in yourself before turning it on. Only people you've invited can sign in, and only with an email address in the domains you allow; with Microsoft, only members of your organisation, not guests. An SSO sign-in lasts 12 hours.
- **Require it** for staff or for everyone, keeping one or more break-glass admins who can still use a password; each of their password sign-ins is emailed to the other admins. Locked out? `erlangly sso off` on the server stops requiring it.
- Schedule's *Start here* shows the two ways to begin side by side: the sample data, or the steps to set up your own.
- The licence and pricing pages state the refund policy, as does the EULA (sections 6 and 9).

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
