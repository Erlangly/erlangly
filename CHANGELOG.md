# Changes

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
