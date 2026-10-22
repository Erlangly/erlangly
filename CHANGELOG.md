# Changes

## 0.8.200 (2026-10-22)
- **Forecasts leave out history that didn't fully come in.** A day with under a tenth of the contacts its weekday usually has is marked *Too few contacts* on the volume history page and isn't used: older weeks stand in for it, and the forecast names the day. If a day's volumes are incomplete, import them again.
- **The forecast chart keeps every day its width.** A day with no contacts shows as an empty day, instead of the days around it closing up over it.

## 0.8.199 (2026-10-22)
- **13 more US states in the labour rules** (United States rule pack 2026.10.4): Connecticut, Delaware, Kentucky, Maine, Nevada, New Hampshire, North Dakota, Oregon, Rhode Island, Tennessee and West Virginia, with their own meal and rest break rules, and Nebraska and Vermont, whose laws set nothing to check for an office. Nevada also warns of daily overtime past 8 hours, which its law sets only for people paid under 1.5 times its minimum wage: an admin can turn it off under Settings → Labour rules. Connecticut warns of a seventh day in a row. Every state with a meal or rest break law of its own is now in the pack, and every rule warns.
- The labour rules guide lists each new state's rules, and what isn't checked: when in the shift a meal falls in Oregon, Connecticut, Delaware, Kentucky and Tennessee, and where small crews or a written agreement mean the law doesn't apply.

## 0.8.198 (2026-10-22)
- **Ontario overtime is counted by the week only, past 44 hours,** as the Employment Standards Act sets it (Canada rule pack 2026.10.3). Ontario shifts over 8 hours no longer warn of daily overtime. If you'd already changed Ontario's overtime rule under Settings → Labour rules, your change keeps the old 8 hours a day until you edit or remove it.
- The labour rules guide says what isn't checked for Ontario: averaging agreements, and the limits on hours of work a day and a week.

## 0.8.197 (2026-10-21)
0.8.196 wasn't released: its image didn't build. Everything listed under it comes in 0.8.197, and also:
- **Labour-rule issues read on the schedule's clock.** Someone working in another time zone from the schedule now has their issues dated and timed as the grid shows their shifts, and shifts on a period's first and last days are checked for them too.
- **The United States' rule pack gives every state the federal holidays** (2026.10.3), as days many people have off, which forecasts leave out of their history. Federal law doesn't make private employers give them.
- The guides say when a supervisor's activity is checked against labour rules.

## 0.8.196 (2026-10-21)
- **Notifications.** A bell beside your name shows what's new, live, with a Notifications page listing it: your schedule published, changed or withdrawn, swaps asked and decided, time off decided or cancelled. Emails still go as before.
- **Notifications on your phone or computer.** Turn them on from My schedule or Your account. Erlangly can now be installed from the browser; on an iPhone it needs adding to the Home Screen first (iOS 16.4 or later). A lock screen shows only what happened, with your own dates, times and activities and a colleague's first name. Pushes travel encrypted through Apple's, Google's, Mozilla's or Microsoft's push service, which can't read them. An admin can turn them off under Settings → Notifications, which also lists the hosts your firewall must allow.
- **A tab left in the background for 5 minutes lets go of its live connection,** and catches up the moment you look at it again, unless you were in the middle of typing.
- **Forms say what to fix instead of coming back blank:** time off that ends before it starts, a schedule shift over 16 hours or with nobody chosen, a connection named too like another, and a labour rule loosened without a reason, which also keeps what you typed.
- Booking an activity that can't be saved now says why, instead of failing with an error page.

## 0.8.195 (2026-10-21)
- **Each kind of exception can count the moment an agent reports it** (Settings → Exceptions), instead of waiting for approval. It still shows on Waiting, marked Counted, for a supervisor to note, change or remove. New installs count sickness this way; upgraded installs keep everything waiting until you choose.
- **Evening out breaks** now leaves a break where it is if moving it would add a labour-law warning, as well as one that blocks publishing.
- **A person's page shows their labour rules,** and whether they come from their site or the default. The people import has an optional labour rules column, by name or code.
- Canada's and the United States' federal labour rules are named without repeating the country.

## 0.8.194 (2026-10-21)
- **Security.** Erlangly's built-in web front (Thruster) is rebuilt with Go 1.27.3, which fixes CVE-2026-111943 in Go's certificate checks. Two new findings in the bundled Litestream (CVE-2026-111943 and CVE-2026-63209) don't reach how Erlangly uses it, and wait for Litestream's next release.
- **A software bill of materials with every release** (from 0.8.193, which wasn't released): an SBOM for each image, in CycloneDX format, on get.erlangly.com beside the installer.

## 0.8.193 (2026-10-21)
- **A software bill of materials with every release.** Each release now comes with an SBOM for each image, in CycloneDX format: every Debian package, Ruby gem, Go module and Rust crate inside Erlangly, with its version and licence, so your security team can check it against new vulnerabilities themselves. They're on get.erlangly.com beside the installer, listed in SHA256SUMS.

## 0.8.192 (2026-10-20)
- **Labour rules for Kenya.** A new rule pack follows the Regulation of Wages (General) Order and the Employment Act: overtime past 52 hours a week (60 for night work), the two-week overtime limit, and a rest day in every seven, all as warnings. It has Kenya's public holidays, with a holiday on a Sunday moving to the Monday, and 2026's Eids as gazetted. Choose it under Settings → Organisation or on a site; for people who work nights, choose Kenya's "Night work" as their labour rules.

## 0.8.191 (2026-10-20)
- **Limit planners and supervisors to their own clients.** On an install that serves several clients, an admin can choose which clients each planner and supervisor sees, under Settings → Users → the person → Clients this person sees. Everyone starts on All clients, so nothing changes until an admin limits someone.
- **What a limited user sees.** Only their clients' schedules, forecasts, people, requests, wallboard, Intraday, adherence, imports and downloads, and the same through the API and connected AI assistants. Anything of another client answers as if it didn't exist, and nothing names it. Someone limited to one client sees no client names at all.
- **People who work for two clients.** Both clients' staff see them. Their shifts for the other client show as an unnamed "Another client" block, and their contract, availability and other person-wide details can only be changed by a planner who sees all their clients. Any supervisor who sees them can still decide their time off.
- **Shared settings.** Sites, teams, exception and time-off types, pattern sets, labour rules, holidays and wallboard alarms are shared by every client, so only admins and planners who see every client change them. A line's own settings stay with its client's planners.

## 0.8.190 (2026-10-20)
- **More of Canada and the US.** The Canada pack now checks every province: daily and weekly overtime, the shortest shift, rest between shifts and days in a row where the province sets them, and meal breaks. Manitoba, Saskatchewan, Nova Scotia, New Brunswick, and Newfoundland and Labrador get their public holidays. The US pack adds six states' rules. The labour rules page has a table for each.
- **Upgrading keeps working when a rule pack drops a rule you changed.** If an admin had loosened or tightened a rule that a newer pack no longer has, installing the pack used to fail. The change now goes with the rule, and the audit trail keeps both.

## 0.8.189 (2026-10-20)
- **Groundwork for limiting planners and supervisors to their own clients.** Nothing changes yet for anyone: an admin can't limit a user until the work is finished in a later release.

## 0.8.188 (2026-10-20)
- **Labour rules for India.** A new rule pack covers the Labour Codes (OSH Code) by default, plus eight states where contact centres work: Delhi, Haryana, Karnataka, Maharashtra, Tamil Nadu, Telangana, Uttar Pradesh and West Bengal. It checks each state's daily and weekly hours, its rest interval and its weekly rest, and has each state's public holidays for shops and establishments. Every rule warns; none blocks. Choose it under Settings → Organisation or on a site.

## 0.8.187 (2026-10-20)
- **A shift stays on its schedule's client.** Adding or moving a shift by hand onto a line of business that belongs to a different client than the schedule's is refused, with a message naming both.
- **The API asks which client when a line's code is shared.** When two clients each have a line with the same code, `lob=CODE` now answers 422 and names them, rather than picking one. Add `client=` (the client's code or ID), or use the line's ID. Codes only one client has work as before, and the AI assistant tools take `client` too.
- **Volumes sent with a personal token are in the audit trail**, under the person whose token it is.

## 0.8.186 (2026-10-20)
- **Weekly FTE over several days.** Hours short and over across several days now show as full-time people's worth: the hours divided by the hours in an FTE week for each 7 days, so a week's 75 hours short reads "2 FTE". A single day still divides by the hours in an FTE day. Set Hours in an FTE week under Settings → Organisation (37.5 to start with; one to seven times the hours in an FTE day). "FTE days" are gone.

## 0.8.185 (2026-10-20)
- **Agents to keep spare, per line.** When supervisors book an activity, each line of business keeps the number of agents spare on the phone that its planners set, from 0 to 20. It's 1 for every line until you change it, as before.
- **Hours short and over, also in FTE.** The schedule's Short and Over notes and Intraday's Short and Over row add the figure in FTE: "3 FTE" for a day, "10 FTE days" over several. Set the hours in an FTE day under Settings → Organisation (7.5 to start with).
- **An adherence grace period.** Under Settings → Organisation, choose 0 to 10 minutes. For that long after each change in the schedule, a state that suits what came before still counts as adherent, and at a shift's start any state counts, for a late login. The wallboard follows it. It's 0 to start with, which scores exactly as before.

## 0.8.184 (2026-10-19)
- **Swaps leave training alone.** A shift with training, a meeting or any other activity besides breaks can't be swapped: it isn't offered, and if something is booked on it after the swap was asked, accepting or approving the swap says why and stops. Breaks and lunches always go with their shift when a swap is made, including ones moved by hand, which used to be deleted.
- **Voluntary time off shows its coverage.** A waiting VTO opens a page with "Coverage if approved", as time off does, before you approve it. Sick, absent and late calls still approve in one click.
- **Choose who decides requests.** In Settings → Organisation, for time off, swaps and exceptions agents report: any supervisor or planner (as before), the person's team lead or a planner, or planners only. The waiting lists, counts and morning email follow it, and a refusal says who decides.
- **Swap rules.** In Settings → Organisation: how many days apart two swapped shifts can be (3 as before), how many hours before the earlier shift swaps close (0 as before), and whether a swap that passes every check approves itself when it's accepted (off as before). A swap that approved itself says so in the audit trail.

## 0.8.183 (2026-10-19)
- **Intraday's expected service level is right when you plan in 30-minute intervals.** It counted only the first quarter hour of agents' time in each 30-minute interval, about halving the agents behind the figure (64% shown where the agents on shift would reach about 100%). Both quarter hours now count.

## 0.8.182 (2026-10-19)
- **Forms keep a choice that's switched off.** Saving a person, team, line of business, shift, break, exception, break rule or ACD queue used to quietly change a site, team, lead, client, line or activity that had been switched off, because the form didn't offer it. It's now offered, marked "(switched off)" ("(deactivated)" for a lead), and stays unless you pick another. A shift pattern keeps the lines it's on that are switched off.
- **A forecast override is in the audit trail.** Overriding or removing an override on a forecast's intervals writes one entry: the intervals, each figure from → to, and the note.

## 0.8.181 (2026-10-19)
- **The audit trail records more settings.** Changes to activity and exception types, time-off types, ACD state mappings, a forecast's special days, the days left out of a line's history, which shift patterns a line uses, the patterns in a pattern set, a shift pattern's break and activity rules, and saved wallboard views are now recorded, with plain-language lines on the audit page.
- **Built-in types and ACD codes don't fill the audit trail.** A new install's built-in activity and time-off types, and the ACD codes Erlangly maps by itself, go in without a line each. An ACD that sends a blank state code no longer stops a connection being made.

## 0.8.180 (2026-10-19)
- **The audit trail, in Erlangly.** Admins can read it in Settings → Audit trail. Newest first, every entry says what was done in plain words, when, by whom, and whether it came through an AI assistant or a personal token. Open an entry to see each field before and after, and the reason if one was given. You can filter by person, by how the change was made, by kind of record and by date. The export still has everything.
- **A site's seats are for your reference.** The Seats field on a site now says schedules don't check it. It used to say they'd warn when more people were on shift than there were seats.

## 0.8.179 (2026-10-19)
- **Removals are in the audit trail.** Removing a shift, a break or anything else Erlangly records now leaves an entry: what was removed, who removed it, when, and on a published schedule, the reason they gave. Before, a removal left no trace. Things removed along with something bigger, like the shifts of a deleted schedule, are covered by that one entry.
- **Less personal data in the audit trail.** It records that a sign-in was linked to an SSO account without keeping the account's ID, and it leaves out an ACD connection's diagnostics.

## 0.8.178 (2026-10-18)
- **AI assistants show Erlangly's icon.** ChatGPT and Claude showed a broken icon, or Rails' default one, for an Erlangly connection. Erlangly now serves its icon at the usual addresses and names it when an assistant connects.
- **Two service targets for the same day: the one entered last counts**, for a line, a client or the organisation, everywhere targets are used (staffing, Intraday, forecasts, the ACD pulls). The line page marks the older one "Replaced by the one below". Shrinkage rates for the same category and day follow the same rule.
- **Removing a service target says what applies instead**, from its day: the line's other target, the client's, the organisation's or the default. It used to always say the organisation's. The line page also shows a client's name as entered.

## 0.8.177 (2026-10-18)
- **Intraday opens faster over a month.** The month view reads every line's service targets in one go instead of once a day per line: about a third of the database work, the same numbers.

## 0.8.176 (2026-10-18)
- **AI assistants can use the newest MCP version.** Erlangly now speaks MCP 2026-07-28 (which claude.ai asks for first) alongside 2025-11-25 and earlier, so an assistant no longer has to fall back to an older version when it connects. Assistants already connected keep working as before.

## 0.8.175 (2026-10-18)
- **Connecting Claude works on more servers.** When an AI app connects, Erlangly reads the app's own description from each of its addresses in turn, IPv4 first, so a server with an IPv6 address but no IPv6 route (as Tailscale gives every machine) no longer fails with "couldn't read the app's document". Every address must be public, and why a fetch failed now goes in the log.
- **The audit trail says what made a change.** A change made through the API or by a connected AI assistant now says so in the audit export: the assistant's name, or the personal token's, and whether an assistant made it over MCP.

## 0.8.174 (2026-10-18)
- **Connecting an assistant right after signing in works.** If Erlangly asked you to sign in with your password while you connected ChatGPT or Claude, pressing Allow did nothing; now it takes you back to the assistant, connected.
- **Where you are stays out of Erlangly's log.** ChatGPT sends the city, region and country of the person asking with every request; Erlangly's log no longer writes them down.

## 0.8.173 (2026-10-18)
- **Test copies made safely.** `sudo erlangly restore --copy <backup>` makes a test copy from a backup of your live install: the copy gets its own identity, takes off the licence, switches its ACD connections off and sends no email until you give it its own address, then asks for your test licence's key. A plain restore stays as it is, for moving to a new server. Pasting a test licence's key on the live install is refused.
- **What the free plan asks for.** Activating the free plan asks for your organisation's name, a work email and your country (a personal address is set up by hand: write to us). Installs from before 0.8.165 get 30 days' notice, then nobody can use Erlangly until an admin activates it.
- **Clearer warnings before a trial or test licence ends:** admins see that the install will ask for a licence, and the health check warns a week ahead.
- **Removing a key when the store can't be reached:** the activation screen offers codes to activate or remove it, for a browser with no internet.
- **An ended trial's key is refused before it goes to the store**, and a rollback across 0.8.165 keeps the install's id.
- **The licence agreement is dated October 18, 2026:** a revoked paid key leaves its install on the free plan; a revoked free, trial or test key stops working, and the install asks to be activated again.

## 0.8.172 (2026-10-17)
- **One more revoked licence key.** This release lists a key the store has revoked since 0.8.170, so it stops working on installs from this release, which carry on under the free plan (the licence agreement, section 1).
- **AI assistants describe approved time off correctly.** When Claude or another assistant approves time off, Erlangly now tells it what that does: the person's shifts stay, with the time off shown over them, so there's nothing to clear; they stop counting toward coverage while it lasts, and on a published schedule what's needed falls too, within the line's planned shrinkage. Before, assistants could tell you to cover or clear the shift.

## 0.8.170 (2026-10-17)
- **Licence activation is here.** This is the first public release with it (0.8.165 to 0.8.169 brought it in): every install runs on a licence activated for it, once, through your browser, and your server still never contacts us. A new install asks for its licence right after setup: the free plan, a 30-day trial or a key. Installs from before get 30 days' notice on every page for admins, then ask to be activated. erlangly.com/docs/licence says how it works, moving to another server included.
- **The licence agreement is dated October 17, 2026.** It now says how activation works and what it sends us (§1 and §3), and that if our store ever closes for good, we'll publish a version that runs without activation.

## 0.8.169 (2026-10-17)
- **Setting up says what comes next.** First-run setup says a licence comes after your organisation and admin account, and goes straight to the activation screen. The installer's last lines say the same.
- **Plainer licence messages.** A test copy at its 5 sign-ins says so ("A test copy lets 5 people sign in: it's for trying upgrades and training"), and people on the free plan are pointed to a paid licence rather than "a licence".

## 0.8.168 (2026-10-17)
- **Behind the scenes.** The release check no longer trips over the sample contact centre's own agent states when it runs while sample shifts are on.

## 0.8.167 (2026-10-17)
- **Backups don't trip over a write.** The nightly backup and the snapshot taken before each upgrade now wait a few seconds for a change being saved at that moment, instead of failing with "database is locked".

## 0.8.166 (2026-10-17)
- **Behind the scenes.** The release check says more when a step fails, and the image's security scan notes a new advisory in a library that Litestream (nightly backups) carries but never uses.

## 0.8.165 (2026-10-17)
- **Licences are activated.** Every install now runs on a licence activated for it, once: the free plan, a 30-day trial or a key you've bought. After setting up a new install, Erlangly asks you to choose one, and your browser takes it to store.erlangly.com and back; your server still never contacts us. With no internet where you are, you type a short code instead. A licence runs on one install at a time.
- **30 days' notice for installs that already exist.** An install from before this release keeps working as it is for 30 days, with a line for admins on every page saying when, then asks to be activated. ACD and volume feeds keep coming in meanwhile.
- **Moving to another server.** Settings → Licence → Remove the licence key frees it for another server, through the store; an install whose paid licence is removed carries on under the free plan.
- **Test copies.** Paying customers can get a test licence for an install they use to try upgrades or train people: it says "Test copy" on every page, printout and export and on the wallboard, lets 5 people sign in and emails only them.
- **Pay once covers the releases its Updates paid for.** A pay-once licence whose Updates ended before a release runs that release on the free plan; going back to an earlier release brings the licence back. Setting the server's clock back no longer keeps an ended licence working.

## 0.8.164 (2026-10-17)
- **Groundwork for licence activation.** Each release now carries its own release date inside Erlangly, and Erlangly can read the coming licence key format and activation codes. Nothing changes for installs yet: licence keys, trials and the free plan work as before.

## 0.8.163 (2026-10-17)
- **Upgrades check a pay-once licence even when Erlangly is stopped.** `erlangly upgrade` reads the licence's Updates date from the data itself when the app isn't answering, and `erlangly install` over existing data checks it too, so a release the licence doesn't cover isn't installed by mistake. A refusal names the newest release the licence covers. Free, yearly and trial installs upgrade as before, whether Erlangly is running or not.
- **No offers you can't take.** When the newest release came out after a pay-once licence's Updates ended, admins see that, and which releases they can still install, instead of "Erlangly X is available".

## 0.8.162 (2026-10-17)
- **The licensee shows where everyone sees it.** With a licence key in, "Licensed to" and the organisation on the licence now sit at the bottom of the sidebar on every page (at the bottom of the page on phones), at the top right of the wallboard's TV view, and in the header of printed schedules. Nothing shows on the free plan.

## 0.8.161 (2026-10-16)
- **Refunded licence keys stop working.** Each release now carries the list of licence keys the store has revoked, and a revoked key stops working on installs from the release that lists it: the install carries on under the free plan, as the licence agreement says (section 1). The store revokes a key when its purchase is refunded.

## 0.8.160 (2026-10-16)
- **Security.** Thruster, the web server in front of Erlangly, is now built with Go 1.27.2 and its fixed network library, which close three denial-of-service bugs in Go's HTTP and TLS code (CVE-2026-78667, CVE-2026-78669 and CVE-2026-97031).
- **Upgrades tidy up after themselves.** After a successful upgrade, `erlangly upgrade` keeps the new release and the previous one (for `erlangly rollback`), removes older Erlangly images, and says how much room that freed. Other images on the server are never touched.
- **One disk rule.** Settings → System and `erlangly upgrade` both need twice the size of Erlangly's databases free, and never less than 2 GB, and say so in the same words.
- **One at a time.** An upgrade, rollback, restore, backup or restart can't start while another is running: it stops straight away and says what's running.
- **Agents needed on big floors.** When the occupancy cap decides the number, the agents needed is now exactly the workload divided by the cap, instead of sometimes the next whole agent up. On the busiest intervals of big floors, the requirement can come out one or two agents lower once a draft is generated again.
- **"Even out breaks…" stays within the law.** Breaks it would move into a labour-rule violation stay where they were, and it says whose and why. That applies today under Belize's meal-break rule, and generation does the same wherever someone's law has a break rule that blocks publishing.
- The third-party notices offer the source of the image's GPL and LGPL packages on request, for three years after each release.

## 0.8.159 (2026-10-16)
- **Your licence counts a schedule period's busiest day.** Generating a schedule counts the most people who can work on any one day of the period, instead of everyone across it, and someone who has left stops counting from their leaving date. So replacing a leaver mid-period no longer stops you generating at full seats. When a period is over the licence, the message names its busiest day.
- **Security.** A password-reset or invitation link with a mistake in its address no longer writes its token to the log.
- The guides say how the labour rule packs are kept current: each is checked against its official sources every quarter, and any change ships in the next release.

## 0.8.158 (2026-10-16)
- **Remove the licence key.** Settings → Licence has a "Remove the licence key" button for admins, for after a refund or when you move the key to another install. Erlangly then runs on the free plan, for up to 25 active agents. It asks first, and the audit trail records it.
- When the saved licence key isn't valid, Settings → Licence now says so, instead of "No licence key yet".

## 0.8.157 (2026-10-16)
- **A draft says who a contract's daily limit leaves out.** When a contract's most hours a day rules out every shift a person's patterns could give them, the draft's warnings now name them, instead of leaving them out without a word.

## 0.8.156 (2026-10-16)
- **Generation keeps contract limits.** A generated schedule never puts someone past their contract's most hours a day (the lower of the contract's and the labour law's applies), and keeps their days off in a row together.
- **Shift imports take two more layouts.** Besides one row per shift, a shift import now reads the wide layout (a shift's start with its breaks and lunch beside it) and Calabrio's segments layout (one row per activity), telling them apart by their columns.
- **Changing a published schedule's breaks asks why.** Adding, changing or removing a break, lunch or other activity on a published schedule needs a reason, as changing a shift does, and it goes in the audit trail.
- **Forecast accuracy for the days you're looking at.** Pick a week or a day on a forecast and "How it did" shows that period's accuracy as well as the whole forecast's.
- **The guides match the software** on days in a row, a day wholly on time off, and shift swaps.
- **The licence agreement is updated** (16 October 2026): who counts as an active agent, revoking refunded, leaked or shared keys, the free plan's updates, sanctions, open-source parts, and notices, transfer and severability. It applies to copies from this version on.

## 0.8.155 (2026-10-16)
- **Erlangly's own icon.** Browser tabs, bookmarks and phones' home screens show Erlangly's E instead of a red dot.

## 0.8.154 (2026-10-15)
- **Even out breaks goes back to where you were.** After evening out breaks, or cancelling, you're back on the schedule's day or week and filters you came from.
- The release's own checks count only the agent states they send, not the sample's simulated ACD's, so they pass at any hour.

## 0.8.153 (2026-10-15)
- **A new install in the United States starts with federal labour law.** Setting up for the United States used to leave Labour rules at None, so nothing was checked and forecasts kept US public holidays in. It now starts with US federal law, as Canada starts with federal law; a site or person can be given a state. Installs already set up are unchanged: an admin can choose it under Settings → Organisation.

## 0.8.152 (2026-10-15)
- **Security:** the image's third-party notices list its Debian packages at the versions it has after their security fixes (curl, libcurl and liblzma), so the release's checks pass and it can be made public.

## 0.8.151 (2026-10-15)
- **The published schedule's coverage counts exceptions.** Approved exceptions count people off or on the phones, and people away on exceptions or time off approved since the schedule was generated use up the line's planned shrinkage first.

## 0.8.150 (2026-10-15)
- **Shift imports count against the licence.** A shift import is checked against the licence's agent limit, as generating a schedule is: over it, the preview says so and the import can't be applied.
- **"Your schedule changed" leaves out days already over.** A change to a day that's already over where the person is (a correction for payroll, say) isn't emailed; the email covers today and later.
- **No Beta badges on ACD connections.** Settings → Connections no longer marks the connectors as beta, as the website doesn't.
- **Security:** the image takes Debian's security fixes on every release, including curl's (CVE-2026-8286, CVE-2026-8927, CVE-2026-92392), which earlier images still had.

## 0.8.149 (2026-10-15)
- **Cancel someone's time off.** Supervisors and planners can cancel a person's waiting or approved time off. The person is emailed, and adherence is scored again for any part that's already past.
- **Change or remove a decided exception.** An approved or declined exception can be changed or removed, and adherence is scored again over the old and new times.
- **Line adherence on Intraday.** A line's service target can set a line adherence goal, and Intraday's Staffing tab shows how the line did against it.

## 0.8.148 (2026-10-15)
- **Activities by the clock can sit back to back.** A pattern that lays out the day by the clock (training until 11:00, a break at 11:00, training from 11:15) now gets its breaks and lunch: activities at set times may touch. An activity a generated shift has no room for is named in a warning on the draft, instead of being left out without a word.

## 0.8.147 (2026-10-15)
- **Overrides and special days on the client's agents.** A forecast that staffs to the agents the client asks for now takes a planner's overrides and special days (closed, or scaled up or down), as a forecast of contacts does. Its download gains "Agents before override" as the last column.

## 0.8.146 (2026-10-15)
- **Scheduling an activity starts blank.** "Schedule an activity…" now starts with no activity chosen and 15 minutes, and looks for times only when you press Find times.

## 0.8.145 (2026-10-15)
- **Approved exceptions on the schedule.** The published schedule's day and week now draw approved exceptions over each person's row, as they do time off, so you can see who was off the phones and when. Coverage is unchanged.

## 0.8.144 (2026-10-15)
- **Shrinkage: termination and adherence.** Shrinkage plans gain Termination and Adherence categories in place of the combined "Other, termination and adherence" row, and Intraday's hours waterfall ends with the productive hours needed and how far over or short the floor is.

## 0.8.143 (2026-10-15)
- **Bring in the schedule you already have.** A new Shifts import makes a draft from a spreadsheet: one row per shift, with employee number, line of business, date, start and end, and optionally the breaks and other activities. A schedule downloaded from Erlangly goes back in unchanged. The preview says what's wrong with any row before anything changes. The draft is checked like a generated one, and a file for some lines of business replaces only those when it's used. Start it from a period's new-draft page, or Generate another draft → From a spreadsheet. Up to 12,000 shifts a file.
- **Imports no longer hold up the rest of Erlangly while they're checked.** Previews of every kind now run before anything is saved, so background jobs and agent states keep flowing during a big import.
- The schedule download writes "(paid)" for a paid activity of a kind that's usually unpaid, so it imports back exactly.

## 0.8.142 (2026-10-15)
- **Back to the wallboard after recording an exception.** An exception recorded from a name on the wallboard now returns you to the wallboard, with its line of business, team and view, when you save or cancel.

## 0.8.141 (2026-10-15)
- **Intraday's contacts difference is fair while the day is under way.** It now compares the contacts so far with the forecast up to the last interval that has actuals, not with the whole day's forecast.
- **A booked activity tells the agent what changed.** When a supervisor schedules an activity for people on a published schedule, each gets the one "Your schedule changed" email, as they do for a planner's edit, instead of the general "schedule published" email.

## 0.8.140 (2026-10-15)
- **`erlangly status` shows what needs looking at again.** When an email couldn't be sent, Erlangly's own log lines came before the answer, so status said nothing about it and reported all well. It now lists the problem and exits with 1, for cron and monitoring.

## 0.8.139 (2026-10-15)
- **Time off requests open faster.** A waiting request's page, with its coverage if approved, now reads each day's schedule once. A day-long shift that started just after midnight on the night the clocks go forward (Chile, Cuba, Paraguay) no longer goes missing from the next day's schedule.

## 0.8.138 (2026-10-14)
- **Pattern sets: give a set to a whole group at once.** From a set's page, give it to everyone in a class of people at once, for a range of dates.

## 0.8.137 (2026-10-14)
- **Pattern sets: activities at set times.** A pattern's activity can now be held at a set time of day on chosen weekdays (a 10:00 team meeting on Tuesdays, say). Generation only offers shifts that hold it, and evening out breaks leaves it where it is.

## 0.8.136 (2026-10-14)
- **Forecasts with the agents the client needs.** Some contracts staff to the client's own forecast of agents rather than one worked out from contacts and handle time. A forecast's intervals can now carry the agents needed (imported or typed in, with a planner's override as for contacts); where they're given, Erlangly staffs to them and contacts become optional. The API's forecast intervals gain agents_from_client.

## 0.8.135 (2026-10-14)
- **Agents hear when their published shift changes.** When a planner adds, moves, edits or removes someone's published shift, or a break or activity on it, that person gets one "Your schedule changed" email a few minutes after the last edit, saying what each day was and what it is now.
- **Supervisors see what's waiting on them.** The Requests menu shows how many time-off, swap and exception requests are waiting on you, and on mornings when something is, a 07:00 email lists them (turn it off under Your account). A time-off request now shows each day's coverage with and without the person, the stretches that would go short, and who else is off.
- **Pattern sets.** Under Settings, make sets of shift patterns and give one to a person for a range of dates; while it holds, generation picks their shifts from the set.
- **Tick people on the schedule to schedule an activity.** On a day that allows bookings, tick names on the schedule and "Schedule an activity…" brings them along, already ticked.

## 0.8.134 (2026-10-14)
- **Shrinkage against the plan in Intraday.** Staffing shows the agents needed with shrinkage and the planned and actual shrinkage; Hours gives each loss as a share of paid hours and a table of shrinkage against the plan by absence, termination, training, coaching and meetings, adherence and other. The download and the API's Intraday figures gain the same.

## 0.8.133 (2026-10-14)
- **Scheduling an activity: Select all, and who each time schedules.** Pick everyone listed in one click, and each time on offer says who it would schedule, with a Copy button.
- **Availability, more easily.** Set someone's availability for several days at once, at any time of day, and for a range of dates.

## 0.8.132 (2026-10-14)
- **Exceptions for the whole shift.** Recording an exception, or telling your supervisor you're sick or late, now has a Whole shift box: tick it instead of typing the times, and the exception covers that day's shift from start to end.
- **Intraday, only while contacts come.** Tick it on Service or Staffing and the tables start at the first interval with forecast or actual contacts and end at the last. Quiet intervals in between stay, so an outage still shows. The Intraday guide's picture shows the new names too.
- **The sample's calls follow the forecast.** With the sample loaded, its simulated agents now take the calls that come in, about as many as the forecast says, instead of one call after another. An overstaffed interval answers what was forecast with agents waiting for calls, and a short one has callers waiting and hanging up, so Intraday's contacts, service level and abandons look like a real floor's.

## 0.8.131 (2026-10-14)
- **Back to the schedule as you left it.** After adding, editing or removing a shift, Cancel, Save and Remove take you back to the same week or day, line, team and search you were looking at.

## 0.8.130 (2026-10-14)
- **Intraday, after Gary's review.** Service shows answer rate and abandons before handle time, and adds occupancy. "On the phones" is now "Productive", and the Hours tab's steps are renamed to match, ending in "Productive hours". Pick a block of the day (From and To) to narrow every section of Service and Staffing; the download follows it.

## 0.8.129 (2026-10-14)
- **Download or print the schedule.** Beside a draft's or the published schedule's week or day, Download CSV gives every shift exactly as filtered (line of business, team, search): name, employee number, team, line, date, start and end in the schedule's time zone, paid hours, breaks, lunch and other activities, any time off over the shift, and whether it's published. Print puts the grid on landscape paper in black and white, with everyone in view, the days atop every page and no row split across pages.
- **Download the adherence report, a forecast and Intraday.** Each page has a Download button that gives what it shows as a spreadsheet. Intraday keeps the expected service level in its own column, apart from the measured one.
- **Filter the adherence report by team and line of business.** The total row says what it covers.
- Printing any page now uses the paper's full width, without the sidebar.

## 0.8.128 (2026-10-14)
- **The sample floor behaves more like a real one.** With the sample loaded, some agents now don't show up, log in very late or leave early, so the wallboard, adherence and Intraday have something to show; and sample agents no longer stay signed in after a shift that ends at midnight.

## 0.8.127 (2026-10-14)
- **Scheduling coaching, training and meetings, easier.** Planners can schedule them too, not only supervisors. Choose a team to pick people from, see each person's available times beside their name, and when no time suits everyone Erlangly offers the time that suits the most. Afterwards you're back on the schedule at the same week, line of business and team.
- **Intraday over a month is quicker.** The page for 31 days shows in about two thirds of the time it took.

## 0.8.126 (2026-10-14)
- **The sample keeps its contacts coming.** With the sample loaded, its simulated ACD now gives each interval's contacts, handle time, abandons and answered counts as the day goes, and the sample's history has answered counts too, so Intraday's service level and answer rate show on the sample's lines.

## 0.8.125 (2026-10-14)
- **Five9: volumes and service level.** A Five9 connection can now read contacts, handle time, abandons and contacts answered, and answered within the line's own service target, per skill, from a Call Log report you set up in Five9 (its folder and name go on the connection's page). Forecasts get Five9's history, and Intraday its service level, without importing anything.

## 0.8.124 (2026-10-14)
- **Security. Secret links stay out of the log.** The links in invitation and password-reset emails no longer appear in Erlangly's log, so a log sent with a support request carries no working link. Thruster's own request log, which couldn't hide them, is off; Rails still logs every request.
- **Sessions end on time.** Every hour Erlangly ends sessions that have run out, and those of people who have left, which also stops their live updates.
- **`erlangly timeoff`** refuses to approve or decline the admin's own time off, as the pages do: another supervisor decides it.
- **`erlangly export` stopped partway** leaves nothing behind and says so, like a backup; files being written are readable by root only.

## 0.8.123 (2026-10-14)
- **Intraday: expected service level.** Where there's no measured service level (your ACD or volume file doesn't say how many were answered within target), Intraday now shows the service level Erlang C expects from the contacts that came, their handle time and the agents on the phones, for lines planned with Erlang C.

## 0.8.122 (2026-10-14)
- **Intraday: where the hours went.** A new **Hours** tab walks from the hours planned to the hours actually spent on the phones, step by step: less time away, exceptions and activities off the phone, less the time people weren't on the phones while scheduled on them, plus overtime and other time on the phones. What takes hours away is in red, what adds them in green.

## 0.8.121 (2026-10-14)
- **Intraday: adherence while scheduled on the phones.** Intraday now shows how much of the time people were scheduled on the phones they were in adherence, and how much out, by interval, by day and over the range, beside the agents needed and on the phones. It counts from this release on: intervals scored before it show a dash.

## 0.8.120 (2026-10-13)
- **Intraday: Zoom Contact Center's service level.** For a line of business connected to Zoom Contact Center, Erlangly now reads how many contacts were answered within each queue's own threshold, so Intraday shows its measured service level, and says when Zoom's threshold differs from the line's target. It needs one more optional permission on Zoom's side (`contact_center:read:queue:admin`); without it, contacts still come in as before.
- **Intraday fits the page.** The Service tab's columns are grouped under Contacts, Handle time, Service level and Abandons, and both tabs fit beside the menu without scrolling sideways.

## 0.8.119 (2026-10-13)
- **Intraday: Amazon Connect's service level.** For a line of business connected to Amazon Connect, Erlangly now reads how many contacts were answered and abandoned within the line's own service target, so Intraday shows its measured service level, and its short abandons where the target leaves them out. It needs no new permission in AWS.

## 0.8.118 (2026-10-13)
- **Intraday: Genesys Cloud's service level.** For a line of business connected to Genesys Cloud, Erlangly now counts the contacts answered and abandoned within the line's own service target, so Intraday shows its measured service level, and its short abandons where the target leaves them out.

## 0.8.117 (2026-10-13)
- **Intraday: NICE CXone's service level.** For a line of business connected to NICE CXone, Erlangly now also reads how long each contact waited in the queue, and counts it against the line's own service target, so Intraday shows its measured service level, and its short abandons where the target leaves them out.

## 0.8.116 (2026-10-13)
- **Intraday: Twilio Flex's service level.** For a line of business connected to Twilio Flex, Erlangly now counts how long each call waited before it was answered or abandoned, against the line's own service target, so Intraday shows its measured service level, and its short abandons where the target leaves them out, without importing anything.

## 0.8.115 (2026-10-13)
- **Intraday: service level and answer rate.** Where your ACD or your volume file says how many contacts were answered, and how many within target, Intraday's **Service** tab shows the answer rate and the measured service level against the target, in red where it's under. A line's service target can now be measured over the contacts offered, the contacts answered, or the contacts offered less short abandons (Settings → Lines of business → the line). Connected ACDs already send the contacts answered; answered within target follows, connector by connector.
- **The schedule by team.** On a draft's day and week, choose a team beside **Find** and **Sort** to see only its people, with everyone's coverage and figures. A team lead's own team says "(my team)".
- **The API** gives Intraday's times in local time with their offset, like every other endpoint, and takes contacts answered and answered within target with volumes.
- **What's new.** The update note and Settings → System link to the release notes on erlangly.com, and an update that fixes a security problem says so, so you know to install it soon.
- **Licence notices.** Each copy of Erlangly carries the licences of the open-source software it's built with (`distribution/THIRD_PARTY_NOTICES.md`), also at erlangly.com/third-party-notices.

## 0.8.114 (2026-10-13)
- **Supervisors can schedule coaching, training and meetings where there's overage.** Planners turn it on for a line of business, with how many days ahead (3 unless changed): Settings → Lines of business → the line → Edit.
  - **Schedule an activity…** on the schedule lets a supervisor choose the day, an activity off the phone (not breaks or lunch), how long, and who.
  - Erlangly offers only the times when each person is on the phone, and the line keeps at least one agent more than it needs throughout.
  - The activity goes on their shifts, and they're asked to look at their schedule again. Shift times, breaks and lunches stay as they are.

## 0.8.113 (2026-10-13)
- **Email and tickets: the first day of a forecast starts with the email already waiting.** For a line planned to its response target within opening hours, the email that came in before the forecast starts, and isn't due yet, now counts as waiting when the line opens. Where it hasn't come in yet, the published forecast's figure counts instead. The first day's agents needed are now as even across the open hours as every other day's, instead of ramping up from nothing.

## 0.8.112 (2026-10-13)
- **Intraday: how the day went against the plan.** A new **Intraday** page, for planners and supervisors, shows one line of business or all of them, for a day or up to 31 days.
  - **Service:** the contacts forecast against the contacts that came, handle time and abandons.
  - **Staffing:** the agents needed, scheduled and on the phones, and how busy they were.
  - Each as a summary, then by day, by time of day across the days, and every interval.
  - Agents on the phones come from your ACD's agent states. Erlangly fills in the states it already has, a day at a time, so earlier days appear over the next while. Service level comes next.
- **The guides, in planning order.**
  - **Scheduling:** set up shift patterns first.
  - **Forecasting and staffing:** explains the two ways to get a forecast, made from your history or imported, with a new section on importing your volume history.

## 0.8.111 (2026-10-13)
- **Labour rules for four more countries.** Signed rule packs for Belize, Trinidad and Tobago, Guyana and Barbados, each with its public holidays for 2026 to 2028:
  - **Belize:** overtime past 9 hours a day or 45 a week, 9 hours' rest between shifts and an hour's break once the day runs over 6 hours (both stop a schedule being published), and at most 6 days in a row.
  - **Trinidad and Tobago:** overtime past 8 hours a day or 40 a week and a 45-minute meal within the first 4½ hours, for agents paid up to 1.5 times the minimum wage (the law covers only them); a site or person can be given "Shift work" (a paid 20-minute break instead) or "Paid over 1.5 times the minimum wage" (the holidays alone).
  - **Guyana:** overtime past 40 hours a week.
  - **Barbados:** the holidays; a retailer's own contact centre can be given "Shops Act", with its hours, rest, days in a row and meal.
  - Holidays proclaimed each year (Eid, Divali and Deepavali, Phagwah, Youman Nabi) come with the dates announced so far; add later ones with **Add a holiday** under Settings → Labour rules when they're announced, until an update brings them.
- **Settings → System doesn't fail** when a database file goes while it's being measured.

## 0.8.110 (2026-10-12)
- **Admins hear about problems.** When Settings → System says something needs looking at, each admin gets one email about it: not on every check while it lasts, and again only if it comes back after being put right for an hour. Nothing is sent until email is set up.
- **Email that couldn't be sent says who it was for.** Settings → Email names the email and the address, and Settings → System names the last one for a day. Inviting many people at once no longer holds up other email: password resets, time-off answers and published schedules go first.
- **Adherence after a long silence.** When an ACD connection that has sent nothing for 12 hours or more sends the states it kept, everyone on it is scored again for those intervals (a week back at most), not only the people the states are about. Importing or undoing a file of states does the same.
- **Big volume batches.** A batch too big for the API (over 5,000 intervals or 2 MB) says how to split it: a week of one line of business at a time, with all its queues. The ACD and API guides show an example and the limits.
- **A licence ends at midnight on your clock.** A key, a trial or a pay-once key's updates now end at midnight in your organisation's time zone, not UTC's, and Settings → Licence and its warnings count days the same way.
- **Sign-in.** Signing in with SSO keeps the identity provider's details for an hour instead of fetching them each time (new signing keys are still picked up at once, and a test sign-in always reads them fresh). AI assistant apps can always register: at most 5,000 nobody has connected are kept, the oldest going first.
- **Security.** Exports and import templates keep text that starts with = + - or @ as text, so a spreadsheet doesn't run it as a formula. Signing out, a password change or reset, or being made inactive ends that browser's live updates, and an expired session can't get them. Admins see a notice when Erlangly is used over plain HTTP at an address the internet can reach. The limit on password links can't be got round any more, and a sign-in form with a missing field says "Try another email address or password." instead of showing an error.
- **The `erlangly` command** (from the next public release): a backup stopped partway leaves nothing behind and says so, and one killed outright is cleared by the next backup.
- **Release checks** fail a release that takes more than 280 MiB of memory when idle.

## 0.8.109 (2026-10-12)
- **Less memory.** Erlangly now runs its background work (jobs and the ACD connectors) in one process beside the web server instead of five, so it takes about 150 MiB less memory once started. Pages stay as fast while schedules are generated or adherence is scored, because that work still runs apart from the web server.
- **If the background process stops,** Erlangly starts it again within seconds. A job cut short by a restart or an upgrade goes back in line and runs again; a job running when the background process failed is marked failed, and Settings → System lists it.
- **Release checks** now also check that background jobs run after a restart, and measure memory the same way each time.

## 0.8.108 (2026-10-12)
- **Nobody changes their own time off.** A supervisor or planner on the roster could change the dates or kind of their own approved time off on the Time off page, and it stayed approved. Changing it is deciding it again, so another supervisor now does it ("Change dates" shows only on other people's time off), and a time-off import no longer approves the importer's own.
- **Swaps show only what's on offer.** Asking to swap for a shift that wasn't offered to you now says "Choose the shift you'd like in exchange", instead of saying whose shift it was. Accepting a swap asked of someone else answers "not found", as refusing one already did.
- **Fixes.** Removing or changing a break that a labour rule needs shows the shift with the warning to acknowledge, instead of failing. Someone signed in who isn't on the roster is sent to My schedule when they acknowledge a schedule or answer a swap, instead of seeing an error.
- **Faster pages on a big floor.** The week's schedule no longer slows down as time off piles up, and People, Time off, Exceptions and the week's adherence report show faster with hundreds of people.
- **Checked every time.** Every page is now tried signed out and as each role to check that each role reaches only what it should, and the main pages are timed on a 500-person floor. Each release's check measures the image's size and the memory Erlangly uses once it has settled.

## 0.8.107 (2026-10-12)
- **Forecasts aren't thrown by outages.** A time with no contacts on a day that otherwise has them, when the other weeks had contacts then, is left out of that week's part of the forecast instead of counting as zero, and the forecast says which times were left out. The hour the clocks skip in spring is left out the same way.
- **Leave days out of the history.** On a line's volume history, you can leave out a day that wasn't normal (an outage, a spike, a one-off event) and put it back later; forecasts made after that use the history without it.
- **Repeated rows in a volume file count once.** When two exports overlap, a row repeated for the same line of business, interval and queue is counted once instead of twice, and the preview says what it found.

## 0.8.106 (2026-10-12)
- **Adherence catches up.** Each scoring run now also scores any intervals it missed (during a restart, say), and ACD states that arrive late are scored into the intervals they belong to. A state in a code nobody has mapped yet is kept and counted as unknown, rather than leaving the agent in their last state; once the code is mapped, those states are worked out again and the week is scored again. For the agent-state API, an unmapped code now answers `unmapped` and the state is kept (it was `invalid`, and refused).
- **Changes in the middle of a week.** Generation now follows each day's lines of business, start date and contract: someone starting on a Wednesday gets shifts from Wednesday, someone moving from Billing to Tech on a Wednesday is planned on Tech from that day, and nobody gets shifts before they start or after they leave. A week that straddles two contracts is planned to their average by days.
- **Very busy queues.** The agents needed on a queue with more than about 700 Erlangs in an interval were overstated by hundreds, and its service level showed as NaN. Erlang C now stays right at any volume, and an interval that would need more than 100,000 agents (in practice a typo) says so and asks you to check its contacts and handle time.

## 0.8.105 (2026-10-12)
- **After a restore, connections say what they need.** On a server restored without the old one's key, an ACD connection whose secret can't be read now says "Enter the secret again" on its page and under Settings → System, instead of failing; entering it keeps the connection and its agent links. With Litestream on, erlangly.conf keeps a copy of the key, so a server restored from the copy reads every secret (keep the file as safe as your backups).
- **Monitoring.** The guide now says how to watch Erlangly: an uptime check on /up, or /up?deep=1, which answers 503 while something needs looking at (no details shown); `erlangly status` from cron, which now exits with 1 while something needs looking at or Erlangly isn't up; disk space; and the clock.

## 0.8.104 (2026-10-12)
- Everything in 0.8.103 (restarting and upgrading let work finish, a rollback asks first and keeps today's data, upgrades check for room, less disk), whose release check had a fault of its own: it said a rollback hadn't saved the data when it had. The check is fixed, and this release passes it.

## 0.8.103 (2026-10-12)
- **Restarting and upgrading let work finish.** `erlangly restart` and `erlangly upgrade` now stop Erlangly gently: anything running in the background (a schedule being generated, a backup, an email) gets time to finish or goes back in line, instead of being cut off.
- **A rollback asks first, and keeps today's data.** `erlangly rollback` says how old the data it puts back is, saves what's there now (it names the file), and asks before it goes ahead; from a script, `erlangly rollback --yes`. The rollback after a failed upgrade still happens by itself.
- **Upgrades check for room first.** An upgrade doesn't start without twice your data's size free on the disk, and says how much it needs (`--force` goes ahead anyway).
- **Less disk.** Two upgrade snapshots are kept instead of five, and nightly backups keep the last 7 days and one for each of the 4 weeks before (`ERLANGLY_DAILY_BACKUPS` and `ERLANGLY_WEEKLY_BACKUPS` in erlangly.conf change that); exports are left out of backups. `erlangly status` and Settings → System show what the data, snapshots and backups take, and the install guide sizes the disk by number of agents.
- **Release checks.** Every release is now checked the way customers upgrade: from the last public release, with its own installer, then a backup, a restore and a rollback, on both kinds of processor.

## 0.8.102 (2026-10-11)
- **The sample's agents log off while they're away.** With the sample loaded, someone given time off, or recorded as sick, late or absent, now shows logged off for that time, and in adherence, instead of "Aux"; they log back on when it ends. Approving one person's request no longer changes everyone else's simulated day.
- **Supervisors are told only what they can do.** A time-off request lists its shifts without links to an editor supervisors can't open. The guides say a planner moves shifts and breaks and sets the alarm times. An AI assistant approving time off is told nothing is checked first, and an agent's Time off no longer says they won't be scheduled then.

## 0.8.101 (2026-10-11)
- **A password reset signs out everything.** Resetting a forgotten password (from the email, an admin's link or `erlangly reset-link`) now also revokes the person's API tokens and disconnects their AI assistants, as their account may have been someone else's for a while; the reset page and an email say so. A password change while signed in ends the person's other sessions and can revoke those too. Everyone gets an email when their password changes, once email is set up.
- **Limits on what can be sent.** Requests to the API, MCP and sign-in for AI assistants are refused over 2 MB, and anything over 10 MB, with a plain message; imports up to their 5 MB still go through.
- **Release safety.** Every release is now scanned for known vulnerabilities, and the core's own tests run with every change.

## 0.8.100 (2026-10-11)
- **The licence agreement comes with each copy.** Settings → Licence shows the licence agreement that came with your version (as the agreement says, that's the one that applies), and it opens from the setup page before anyone has signed in.
- **Setting up says so.** The setup page says that setting up Erlangly means accepting its licence agreement, with a link, and records when; the installer and compose.yml give the agreement's address too.

## 0.8.99 (2026-10-11)
- **Availability can run past midnight.** Someone available from 22:00 to 06:00 can say so: an end at or before the start means the next morning, shown as "22:00–06:00 (next day)", and generation gives people available at night their night shifts.
- **A period's first morning counts the night before.** On a 24/7 floor, the people still on from the previous period's last night now count in a period's figures, coverage and "Even out breaks…", so its first hours no longer show short. Their hours still count in the period they started in.
- **Overtime caps keep counting.** Where an overtime cap blocks publishing (South Africa, Panama), the overtime hours it counts from can't be turned off while it's on, which used to stop the cap counting without a word.
- **Changed labour rules read cleanly:** "10 h", not "10.0 h".

## 0.8.98 (2026-10-11)
- **Generation makes night shifts.** Shifts that run past midnight are generated like any other: a 22:00 to 06:00 pattern now makes shifts, a Sunday night runs into the next week, and its hours count on the day it starts, for weekly hours and days in a row. Breaks are placed inside night shifts, and the labour check's rest, overtime caps and night shifts (as in Panama) count the hours on both sides of midnight, on each person's own clock and across the night the clocks change.
- **People with set availability.** Availability that ends after midnight can't be entered yet, so someone with set availability isn't given night shifts; the draft says so when they're on a night pattern.
- **Faster "Even out breaks…"** on long schedules.

## 0.8.97 (2026-10-11)
- **The installer copes when Docker's download fails.** On a new server whose network isn't quite up yet, or when Docker's download site has a blip, it tries again after 20 seconds, and stops with the reason if that fails too. Before, it carried on without Docker and stopped later saying the image might be private.
- **Without Docker, the erlangly command says so,** and how to install it.
- **A rebuilt server's install says it's already set up.** Installing on a new server with your Litestream settings brings your data back. The install now ends with where to sign in, instead of a setup link that wasn't there.
- **ACD connections asked to slow down wait the whole time asked.** NICE CXone and Amazon Connect could ask again a little early, and be slowed down for longer.

## 0.8.96 (2026-10-11)
- **The Philippines' labour rules.** Overtime after 8 hours' work in a day, a 60-minute meal for every 7 hours of work, at most 6 days in a row, and the year's proclaimed holidays, Chinese New Year and the Eids included. A compressed workweek (DOLE Department Advisory 02, 2004), up to 12 hours a day and 48 a week, is there to choose for a site or person on one.
- **South Africa's labour rules.** Under the Basic Conditions of Employment Act: overtime past 9 hours a day or 45 a week, at most 12 hours' work a day and 10 hours' overtime a week, 12 hours' rest between shifts, an hour's meal within 5 hours of work, and the public holidays, with a Sunday holiday adding the Monday after.
- **Choosing them.** A new organisation in the Philippines or South Africa starts on its country's labour rules. One set up before: choose its labour rules under Settings → Organisation. A site or person there, in an organisation elsewhere: choose them on the site or person.
- **Rules you loosen take any number.** A labour rule's numbers can now be fractions, like a 9.6-hour compressed day, and a changed rule's warnings name both values, the law's and yours.

## 0.8.95 (2026-10-11)
- **Panama's labour rules.** An organisation, site or person in Panama now gets Panama's labour law. A shift is a night shift when more than 3 of its hours fall between 18:00 and 06:00, with 7 ordinary hours instead of 8 (mixed shifts 7.5), and overtime is capped at 3 hours a day and 9 a week, which generation keeps to. Panama's holidays come with it.

## 0.8.94 (2026-10-11)
- **Holidays that fall on a weekend are taken on the right day.**
  - US federal holidays on a Saturday move to the Friday before, as the federal calendar has them: 3 July 2026 and 24 December 2027, for example.
  - In Canada, Christmas and Boxing Day 2027 are Monday 27 and Tuesday 28 December, where both had landed on the Monday. Federal Canada Day, Truth and Reconciliation and Remembrance Day on a weekend go to the Monday.
  - In Jamaica, Labour Day on a weekend goes to the Monday (25 May 2026), and a Sunday Boxing Day goes to the Monday.
- **Day, night and mixed shifts in the labour check.** Where the law sets shorter limits for night work, a shift is judged by how much of it falls at night, and overtime has its own daily and weekly caps that generation keeps to. Panama is the first country to use them; you can now choose Panama as a country, and its labour rules follow in an update.

## 0.8.93 (2026-10-10)
- **Import a forecast from a spreadsheet.** A client's forecast, or one for a new programme, comes in as a file: a row per interval with the line of business, its start (in the line's time zone, on the 24-hour clock), contacts and, if you have it, handle time. It becomes a draft forecast for each line of business, with a preview, row errors in plain words and undo, and staffing works from it as from a calculated one. Hours the clocks skip or repeat are handled, and repeated rows aren't added up silently.
- **Holidays and special days, a whole day at a time.** On a forecast, mark one or more days as closed, at a percentage of normal, or like another day, for one or several lines of business; undo puts them back, overrides included. Add the holidays your people have off that the rule pack doesn't have (a city's holiday, a company day) under Settings → Labour rules, and forecasts leave them out of their history like the pack's.
- **Holidays keep up by themselves.** Each jurisdiction on Settings → Labour rules says how current its rules are ("Rules as of September 28, 2026"), and the holidays roll on to the coming years every month instead of waiting for a new rule pack.
- **Volume imports read times strictly.** A volume file (or the volume API) with 12-hour times like "1:00 PM", seconds, or a date that doesn't exist is now refused with how to fix it, instead of being read wrong.

## 0.8.92 (2026-10-10)
- **Labour rules, plainly.** Settings → Labour rules now says where the rules come from (signed rule packs) and that they aren't legal advice, so check them against the law where your people work. The packs aren't labelled beta any more, and the licence agreement's labour-rules section no longer mentions beta packs.

## 0.8.91 (2026-10-10)
- **Changing "Weeks start on" can't break your schedule periods.** Once there's a schedule period, the week start stays the day periods start on. Before, changing it made those periods refuse every save, and publishing a forecast then failed. If you'd already changed it, you can move it back.
- **A draft that was generating when Erlangly restarted doesn't get stuck.** Its generating carries on after the restart, or, if it stopped for good, the draft says so within about half an hour and you can generate again. It no longer holds up discarding the draft or changing or deleting its period.
- **Restarts, upgrades and going back let Erlangly finish first.** `erlangly restart`, `upgrade` and `rollback` now give it up to 30 seconds to finish what it's doing before stopping it, and a backup cut short by a stop no longer leaves a part-made copy behind.

## 0.8.90 (2026-10-10)
- **"Use draft" and "Add to the schedule" check labour law.** On a published schedule they used to publish straight away. Now they're checked like Publish: a new violation stops it and shows what's wrong, and new warnings need a reason before anything goes out. A draft that takes over from a later week is also planned around the days the schedule keeps, so rest and days in a row hold where they meet.
- **A schedule period can be fixed.** You can rename it and change its dates: lengthen it, shorten it up to its last published week, or move its start while nothing's published. You can delete it while nothing in it is published for today or earlier. People whose published shifts go with it are told their schedule is withdrawn. Removing the sample data now removes its schedule periods too.
- **Shift patterns that run past midnight say so.** Generation can't make shifts past midnight yet, so a pattern starting at 22:00 made nothing without a word. Now the pattern and the draft say which shifts are left out; add night shifts by hand meanwhile.
- **Contract limits say they aren't used yet.** A contract's "Max a day" and "Days off in a row" are kept, but generation doesn't use them yet, and the person's page now says so: check their shifts by hand before publishing.

## 0.8.89 (2026-10-10)
- **"Today" is your floor's day.** From the evening on, Erlangly used to think it was already tomorrow (it went by UTC). Now today is the day in your organisation's time zone, or the line of business's or person's own: an exception's day, a people import dated today, the start dates on new people, lines of business, contracts, targets and shrinkage, and when a leaver stops counting and signing in all go by it.
- **Adherence sees late logins and no-shows after a night logged off.** Someone who logged off at 16:35 and logs in at 08:25 is out of adherence for those 25 minutes, as on the wallboard, and a no-show scores 0% and comes first in the adherence report. If a connection sends nothing about anyone for 12 hours, what it last said stops counting until it sends again.
- **The adherence report keeps people apart.** Two people with the same name are two rows, shown with their employee numbers, and with several clients each line of business shows its client. In the API (`GET /api/v1/adherence`), each row also has `person`, `team` or `lob` with its id; `name` is what the page shows.
- **No handle time, no made-up staffing.** Volume history without handle times used to staff about one agent an interval without a word. Now those intervals say "No handle time" with what to do, and generating leaves them out with a warning instead of guessing.
- **The planning interval is fixed once there's data.** Changing it after volume history or a forecast exists silently halved (or doubled) every staffing figure; now the setting says why it can't change. Removing the sample data lets you choose again.

## 0.8.88 (2026-10-10)
- **Behind your own HTTPS proxy, nobody can pass for someone else.** Erlangly now takes a visitor's address only from your proxy, so someone on the office network can't claim another address to get round the sign-in limits. A proxy on the same server counts as it is; if yours runs on another machine, put its address in `TRUSTED_PROXIES` in `/etc/erlangly/erlangly.conf` and run `erlangly restart`.
  - Erlangly now answers your proxy over IPv4 only: if your proxy points at `[::1]` or another IPv6 address, point it at `127.0.0.1` and the port instead.

## 0.8.87 (2026-10-10)
- **Upgrades can't overwrite your data with a broken copy.** Before an upgrade, Erlangly copies your data. That copy now only counts once it's complete, and going back checks a copy before using it, leaving your data as it was if anything's wrong. A long upgrade of a big database isn't cut short while it's still working.
- **Logs can't fill the disk.** Erlangly keeps the newest 100 MB of its log.
- **Emails are tried again.** If your mail server is busy or can't be reached, Erlangly keeps trying for about four hours, sending one email at a time, so publishing a schedule to hundreds of people gets through limits like Microsoft 365's. An email that couldn't be sent shows under Settings → Email, with how to fix it.
- **Admins hear when something needs looking at.** Settings → System says when backups have stopped, background jobs failed, the disk is filling up, a connection stopped sending agent states, or the Litestream copy stopped; admins see a line about it at the top of each page, and `erlangly status` lists it too. The wallboard and adherence say when agent states have stopped coming in.
- **A whole floor can sign in at shift start.** Wrong-password limits now count per person, not per office address, so people sharing one internet address can all sign in at once, and single sign-on isn't held back at all.
- **A paid licence says when it's ending.** From 30 days before a licence key ends, admins see the date and that the renewal key is emailed to whoever bought it. Settings → Licence now says "Key valid until".

## 0.8.86 (2026-10-10)
- **A page's buttons stay in its top bar.** When they don't fit beside the page's name, as on a draft, they go on a line of their own instead of spilling out of the bar. On a phone, the bar scrolls away with the page.
- **Generating another draft is one menu.** On a draft, **Generate another draft** offers **For everyone**, **For some lines of business…** and **For some people…**.

## 0.8.85 (2026-10-09)
- **You can remove a connection.** Settings → Connections has a Remove button: it deletes the connection and unlinks its agents, keeping your past adherence. Before, connections could only be added and edited.
- **The sample wallboard comes alive.** With the sample data loaded and a schedule published for today, the simulated ACD now feeds agent states on any install, so the wallboard and adherence show live activity to explore — no setup.

## 0.8.84 (2026-10-09)
- **Your install shows who it's licensed to.** The sign-in page and your data exports name the organisation on the licence, so a shared licence key is easy to spot.
- **A leaked or shared licence key can be stopped.** If a key gets out, it can be revoked so it stops working from the next update; email hello@erlangly.com.
- **Licence terms, clarified.** The free plan's 25 active agents are counted across all your installs, and a licence key is for one organisation.

## 0.8.83 (2026-10-08)
- **Email and tickets planned within opening hours, to their response target.** An email or ticket line of business can now have opening hours (Settings → Lines of business → the line → Opening hours): each weekday's opening and closing time, or around the clock. Its work is then planned to be done while it's open, before its response target is up, instead of the moment it arrives.
  - Email that comes in while the line is closed waits for it to open, and anything not done by closing carries over to the next morning.
  - Maximum occupancy now applies to these lines too.
  - A forecast's day shows how many contacts are still **waiting** at the end of each interval, instead of a service level.
  - A line without opening hours is planned as before, as the work arrives.
- **Chats: whole sessions or the agent's own time.** A chat line's page says what its handle time measures. Connected ACDs always report whole chat sessions, which are divided by the chats at a time. For imported figures, you can say they're the agent's own time per chat, so they're not divided again.

## 0.8.82 (2026-10-08)
- **Why a schedule can't be generated is said once.** When your licence stops schedules being generated, the form says why, or the alert after trying does, and the licence warning admins see on every page steps aside there. Admins get a link to Settings → Licence with it.

## 0.8.81 (2026-10-08)
- **Sample data counts towards your licence: 25 in all on the free plan.** It's either the sample or your own people. The sample takes the seats that are free (all 25 on a new free install, up to 500 on a trial), and while it's loaded, adding your own agents waits until you remove it. Changing a sample person's name, employee number or email, inviting them to sign in or giving them an ACD ID makes them one of your people, who stays when the sample goes.
- **Over your licence, schedules aren't generated.** With more active agents than your licence covers, Erlangly won't generate schedules or even out breaks until you're back within it, and the forms say why. Everything already made keeps working: viewing, editing and publishing schedules, forecasts, adherence and the wallboard.
- **A schedule period counts everyone in it.** Generating one line of business at a time can't take a period past your licence: everyone with shifts in it counts.

## 0.8.80 (2026-10-08)
- **Sample data can't stand in for your own people.** The sample is as big as your licence: 25 agents on the free plan, as many as a paid licence covers, and all 500 on a trial. Sample people still don't count, but change one's name, employee number or email, invite them to sign in or give them an ACD ID, and they become one of your people, counted like anyone you add; with no seat left, Erlangly says so and changes nothing. Sample people have a *Sample* badge, and their edit page says what makes them count. A sample you've already loaded stays as it is.

## 0.8.79 (2026-10-07)
- **A draft's name matches its address.** Drafts are called by the number in their web address, so "Draft 27" is the one at /drafts/27. Before, the name counted the drafts in its schedule period, so it could read "Draft 25" on a page whose address said 27. The tabs, buttons, notices and warnings all use the new name. Numbers in one period can now skip, such as 27, 31 and 33.

## 0.8.78 (2026-10-07)
- **Five9 connector (beta): a setup guide.** The *Connect Five9* page links to erlangly.com/docs/five9, which says what to set up in Five9 (a user with a supervisor role and a view-only administrator role), how states and reason codes are mapped, and that volumes don't come from Five9 yet.

## 0.8.77 (2026-10-07)
- **Older "generate again" warnings clear the same way.** A warning raised before 0.8.73, when someone moved off a line of business or a forecast changed, could only be cleared by a whole new draft. Erlangly now reads who or what each one is about from its wording, so a draft for just that person, or that line of business, clears it like any newer warning.

## 0.8.76 (2026-10-07)
- **Breaks and lunches go where they cost the least.** Generation used to place each person's breaks once, as it picked their shift, so later people could leave breaks bunched where the floor was already thin. Now its last step goes back over everyone's breaks, a person at a time, and moves each to where it's missed least, repeating until nothing more helps. On the 500-person sample week, coverage went from 98.3% to 99.5%.
  - Breaks stay within the windows their shift patterns allow, in the same order, and never back to back. Shifts and days off don't change.
- **Even out breaks on a schedule or draft.** After changes (people moved, shifts edited, time off approved), *Even out breaks…* does the same from a day you pick, for all or some lines of business, and says how many breaks moved and what it did to coverage.
  - Breaks placed by hand stay where they are, and so does any break that has started or starts in the next half hour.
  - On a published schedule, only the people whose breaks moved are told, and asked to look at their schedule again.

## 0.8.75 (2026-10-06)
- **Search engines leave your install out.** Every page and file Erlangly serves now tells search engines not to list it, so your sign-in page, or a test copy you run on the internet, won't turn up in search results.

## 0.8.74 (2026-10-06)
- **Nobody is booked by two clients at once.** Someone who works for more than one client could be given a shift for one client over a shift they already had for another, when a schedule was generated. Generating a client's schedule now works around their published shifts for other clients, with rest either side, and counts those hours and days towards their week.
  - Rest and days in a row carry over from all their shifts before the period, whichever client they were for.
  - A schedule that still has someone in two places at once can't be published: the clash shows as a violation, with *Open* to fix the shift.
  - The publish page says "violations" rather than "labour-law violations", since a clash isn't labour law.
- **Help links go to the new docs.** The *Connect* pages for each ACD and the `erlangly` command's messages link to erlangly.com/docs, where the guides now live. Old links still work.

## 0.8.73 (2026-10-06)
- **Adding a draft for some people clears the warning about them.** When someone moves to another line of business or leaves, the schedule says it needs generating again. Making a draft for just them and adding it to the schedule now clears that warning; before, only a whole new draft did.
  - Each change is kept on its own: if two people moved and you reschedule one, the warning stays for the other, naming them.
  - A forecast change is cleared the same way, by a draft for its line of business.
  - When the warning is all about people, it links to a draft for just them, with them already ticked.
  - It says the day someone actually left ("left Billing from October 11"), not the day of their next shift.
  - A draft made before the change doesn't clear it, whole or not.
- **Twilio Flex connector (beta): no repeated state after a restart.** When Erlangly restarted, an agent who had finished a call since last changing their Flex status could have that status recorded again in their history, dated from when they first set it. That no longer happens.

## 0.8.72 (2026-10-06)
- **Twilio Flex connector (beta): no duplicate states after a restart.** When Erlangly restarted, an agent's current state could be recorded a second time, a moment after the first, because Twilio gives times to the second in one place and to the millisecond in another. A state Erlangly already has from that second isn't recorded again.
  - The connection's diagnostics no longer keep callers' details: of the fields a contact centre adds to its tasks, only their names are kept.
  - The Twilio key needs fewer permissions. The setup guide lists the ones Erlangly uses; a key made with more still works.

## 0.8.71 (2026-10-06)
- **Start here follows your progress.** Until your first schedule, the Schedule page's checklist ticks off each step as it's done, for each line of business ("1 of 3 so far"): lines of business, then connecting your ACD under Settings → Connections (or importing volume history from a spreadsheet), your people, a forecast for the weeks ahead, and shift patterns. Admins also see inviting the team and setting up email. Once it's all done, it says you're ready and offers a new schedule period.
  - Planners are told to ask an admin about connections; supervisors are told a planner makes the first schedule.
  - *New forecast* waits until there's a line of business to forecast.

## 0.8.70 (2026-10-06)
- **The rest warning names both shifts.** It reads "Only 7 h rest between a shift ending at 22:00 and the next, starting at 05:00 the next day: less than the 11 h required", not "before this shift", which read wrong when you met it from the earlier shift.
- **Twilio Flex connector (beta), more reliable.** After a restart, Erlangly goes live first and then reads back what it missed, without ever moving anyone's current state. So a call in progress can't be lost.
  - A call is counted once, whatever tasks it takes. Tasks on hold are checked a few at a time, so they no longer hold up agents' states.
  - Switching a connection off, or pointing it at another account, key or workspace, starts its read-back afresh.
  - Settings → Connections lists Twilio Flex with the other direct connectors, and its page links to the setup guide.

## 0.8.69 (2026-10-05)
- **Connection forms say why a value was refused.** On every connection (Zoom, Genesys Cloud, NICE CXone, Five9, Amazon Connect, Twilio Flex), a value the form can't accept shows its reason under its box. Before, the form only came back with an empty secret box, as if the secret hadn't saved.
  - After a refusal, the secret's box asks for it again, since Erlangly never shows a secret back.
  - Two values pasted into one box (a Twilio SID with the secret after it, say) are refused with "paste each value in its own box".
  - Password managers are asked to leave the secret boxes alone, so they don't fill them as if this were a sign-in.

## 0.8.68 (2026-10-05)
- **Twilio Flex connector (beta): queues and volumes.** The connection's page now lists your TaskRouter queues, each once for every channel it carried in the last 4 weeks (calls, chats and texts, email, other work), so each can feed its own line of business.
  - Every 15 minutes Erlangly counts each queue's contacts, handle time (talk, hold and wrap-up) and abandons from Twilio's own events, by when each task first entered a queue. A transferred task counts once, and outbound calls aren't counted.
  - On matching, the last 30 days are read straight away: that's all Twilio keeps, so import anything older. The last week is read again every night, for emails and work items that stay open.

## 0.8.67 (2026-10-05)
- **Twilio Flex connector (beta), first part.** Connect it under *Settings → Connections* with your Flex account's SID and a restricted API key. The page lists the read-only TaskRouter permissions to give the key, and the details are checked with Twilio before anything is saved.
  - Erlangly reads TaskRouter's events every 5 seconds, so agents' states arrive for adherence and the wallboard, with nothing opened to the internet.
  - An agent on a task shows On a call, and one wrapping up shows After-call work. Otherwise they're in their Flex activity (Available, Break, Offline…). An agent who goes Offline shows as Offline, even with a task still wrapping.
  - After a restart, the events missed meanwhile are read back, so adherence has no gap. Agents are linked by their Flex email.
  - Queues and volumes come next.
- **The first draft matches the forecast.** Nobody's scheduled on a day none of their lines of business has a published forecast for, and contract hours go on the days that have one. Coverage says *Nobody needed* instead of 100% when nothing's needed. The sample's full-day shifts now start at 07:00, when its demand begins.
  - Changing a published forecast by hand, or recalculating it, flags the schedules made from it for the days it changes, as publishing does.
  - A contract shows the hours scheduling uses, defaults included ("20–25 h a week, 4 days"). The people import template has a `min_weekly_hours` column.
- **The labour check follows your edits.** *Check again* says what it found. After a hand edit or a removed shift, the Labour rules section shows that person's issues again.
  - Publishing has its own page. A clean schedule still publishes in one click. With violations, the page lists them. With warnings, it asks for a reason before *Publish anyway*.
  - A schedule that's already published can't be published, and emailed out, a second time.
- Diagnostics for every connection now mask callers' countries too.

## 0.8.66 (2026-10-05)
- **A seat limit that tells the truth.** A people import's preview counts the agent seats each new person takes. It says how many more fit, and when some lines would need a seat that isn't there, it says so once, with what to do. Importing then adds only as many as fit. People leaving in the same file free their seats first, wherever they are in it.
  - At the limit, adding or making someone active says why on the form: make someone inactive first, or get a licence key. Planners are told to ask an admin. Undoing an import says why it can't.
  - People shows how many active agents the plan covers, and warns planners when every seat is in use.
- **A way to a licence key.** On the free plan, Settings → Licence links to a 30-day trial key and to the prices. These are plain links: nothing is sent from your server. A key that isn't accepted stays in the box to check.
- An inactive person isn't offered an invitation to sign in.

## 0.8.65 (2026-10-05)
- **A way back in.** *Change your password* under Your account asks for your current one first, then signs you out everywhere else.
  - Locked out of a server that can't send email? `erlangly reset-link your@email` on the server prints a link to choose a new password. It works once, for 15 minutes, and is noted in the audit trail.
  - `erlangly setup-link` on a server that's already set up says so, and points to `reset-link`.
  - Without email, *Forgot your password?* says who can give you a link, instead of offering to email one.
- **Agents reach their account from a phone.** The phone bar links to Your account, where they can change their password and sign out. API tokens are tucked away until an agent has one.

## 0.8.64 (2026-10-05)
- **Drafts for some people.** *For some people…* on the schedule generates a draft for the people you tick, alone: for someone moving to another line of business, say, without regenerating everyone on it.
  - Everyone else's shifts are counted first, so theirs go where the floor is still short, within their contracts, availability and time off.
  - The draft's coverage and figures show the whole floor with them added.
  - Adding it to the schedule from a day changes only their shifts, and only they are told.

## 0.8.63 (2026-10-05)
- **Approximate adherence from summaries.** For floors that only get summaries, the agent-state import also takes time in each state per interval: agent, interval, state, reason, seconds.
  - Each interval's time in each state is matched to what the schedule asked for, and the result is marked approximate, since a summary doesn't say when in the interval each state was.
  - The adherence page shows those figures with ≈.
  - Days someone has state changes of their own are scored from those instead.
- **Zoom Contact Center, as Zoom documents it today:**
  - Queue figures are read one channel at a time, and video queues read video's own figures. Work-item queues are listed but not read.
  - New details are checked with Zoom before anything is saved, and refusals over a licence or a role say what to fix.
  - The guide and the form give Zoom's current permission scopes and Marketplace steps.

## 0.8.62 (2026-10-05)
- **Editing a line of business or a contract in place.** On a person's page, each line of business and each contract has *Edit* beside *Remove*.
  - Change a line of business's dates, or a contract's dates and hours, right in its row.
  - An end date takes their shifts on that line after it out of the schedule, and starting later does the same for the days before.

## 0.8.61 (2026-10-05)
- **Inviting people works on a new install.** Invitation and password reset links are shown in a box to copy. Copy now works on plain http:// too, a new install's default, where it used to do nothing. Inviting someone takes you to their page, with their link.
- **Installing on a new server takes a few minutes, not eight.** The installer no longer waits for server updates that aren't running.
  - When it finishes, it says how to turn on HTTPS afterwards, and that on a cloud server the setup link may need the public address.
  - `erlangly help`, and a mistyped command, answer without asking for a password.

## 0.8.60 (2026-10-05)
- **Agent states from a file.** For floors whose ACD Erlangly doesn't read, or whose client won't allow a connection: *Import a file* on a connection's page takes an ACD export.
  - **State changes:** agent, time, state, and an optional reason. These are mapped like the connection's live states.
  - **Logins and logouts (LILO):** agent, login, logout.
  - Agents are the ACD's agent IDs or employee numbers. Choose the time zone of the file's times.
  - You see what will happen before importing. Importing a file again adds nothing new, and an import can be undone.
  - Adherence for the file's days is scored again in the background.
  - With logins and logouts, being logged in counts as in adherence when someone's scheduled to work. Breaks and lunches can't be judged from logins, so they're left out rather than counted against them.
- **Changes to people.** *People → Changes* lists who changes, what and from when: moves between lines of business, contract hours, joining and leaving. It covers the last and next 30 days or the dates you choose, with the People list's filters. Planners can cancel a change that's still to come straight from the list.
- **Leavers can't sign in** from their effective date, and are signed out then. *They're not leaving after all* gives their access back.
- **Choosing someone by typing narrows by every word:** *andre h* finds the Andres whose last name starts with H. Arrow keys and Enter pick from the list.
- **The schedule's sort goes either way:** ascending or descending.
- **A new draft's figures match its page:** on-the-phone activities like Nesting count as on the phone straight after generating. Before, they only did after the first edit.

## 0.8.59 (2026-10-05)
- **Choosing someone by typing.** On *Add time off* and *Record an exception*, start typing a name or an employee number and the list shows only the people who match, sorted by name. Each person shows with their employee number, like *Tanya Graham (RS-1001)*, so two people with the same name can't be mixed up. If what's typed matches more than one person, you're asked to pick from the list. People who have left aren't offered.
- **The People list sorts by any column.** Click a header to sort by it, and again to reverse. Your search and filters stay as they are. Employee numbers sort in number order, and people with nothing in a column come last.
- **Sorting and finding on the schedule.** Above the grid, sort the rows by shift start, shift end or name, and find someone by name or employee number. The coverage strip and figures still count everyone.

## 0.8.58 (2026-10-05)
- **Recording a leaver.** *Record a leaver* on a person's page asks for their effective date (their first day not working) and how long to keep their schedule. That defaults to the end of that week; you can pick the end of a pay period, a month or a quarter instead.
  - Until that date, an unpaid *Attrition* layer lies over their shifts. They count as away from the phone and aren't scored for adherence, but stay for attrition shrinkage and trends.
  - After it, their shifts come out of draft and published schedules, which are flagged to generate again. New schedules leave them out.
  - Time off they had from the effective date on is cancelled.
  - Their licence seat is free from the effective date, and they move to the People page's *Inactive* list then.
  - *They're not leaving after all* undoes it.

## 0.8.57 (2026-10-05)
- **Generating a schedule when time off is already approved:** a day someone is wholly off still gets a shift, placed where coverage needs it least, with their time off over it. It doesn't count as cover, but it counts towards their week's days and hours the way their contract has them. So a week off keeps their usual days off, and a day off where no shift pattern runs stays a normal day off. Unpaid time off and long leave work the same way, so a schedule is ready if someone comes back early. These shifts don't trigger the *scheduled when the forecast needs nobody* warning, and one can be moved within its time off.
- **Connections, after a security review:**
  - A connection that's switched off, or hasn't been heard from in 12 hours, no longer keeps agents counted as logged in.
  - A connection's API token can only send volumes for the lines of business it feeds, and a line-of-business code two clients share is matched by the ACD queue's ID, never guessed.
  - Agent IDs, codes and event IDs are at most 255 characters, and a connection keeps at most 1,000 unknown codes and 10,000 unlinked agent IDs.
  - *Read history again* starts one read however often it's pressed, and a connection's page lists its first 500 codes.
  - Zoom, Five9 and live connections stop at endless or malformed answers instead of hanging.

## 0.8.56 (2026-10-04)
- **Adding a connection starts from a list.** *Settings → Connections* has an *Add a connection* menu of what you can connect (Zoom Contact Center, Genesys Cloud, NICE CXone, Five9, Amazon Connect, or another ACD or a script with an API token), and the page after it has a *What are you connecting?* choice that switches its form. Settings pages no longer scroll sideways on phones.
- **Connections to your ACD hold up better**, after a review of all five:
  - Time in state no longer restarts when an ACD reconnects, so the Lunch and Break alarms stop resetting.
  - Someone with accounts in two connected ACDs counts as logged in if either says so. An idle old account no longer logs them off every few minutes.
  - On Amazon Connect and Five9, agents linked, or statuses mapped, after their state was refused get it within 3 minutes.
  - A reason added in your ACD after connecting shows on the mapping page, mapped by its name, instead of counting as Aux.
  - Five9 follows agents added to or removed from its list.
  - A connection that keeps failing just after it connects waits longer between tries.
- **Volumes from your ACD:**
  - A line of business gets its volumes from one connection: another connection can't be set to feed it too.
  - After an outage, the 15-minute read catches up from where it left off, so no intervals are missed.
  - History is read a week at a time. Weeks that couldn't be read are listed on the connection's page, with a button to read them again.
  - An interval read again replaces what was read before, and a queue moved to another line of business brings its last 13 weeks with it.
  - Queues your ACD no longer lists stay on the page, marked, so you can stop reading them.
- On big floors (over 200 logged in), open wallboards refresh every 5 seconds instead of every second.
- The agent-state API answers `unchanged` for an Offline from one connection while the person is logged in on another.

## 0.8.55 (2026-10-04)
- **Amazon Connect connector (beta).** Connect it under *Settings → Connections* with your instance's ARN and an IAM user's access key: the page shows the read-only policy to give that user. Erlangly follows agents' states every few seconds (on a contact, after contact work, or in their own status) and reads your queues' volumes every 15 minutes, by channel, with the last 13 weeks straight away. It asks AWS at most once a second, half of what AWS allows by default, so your own tools keep their share. Setting up: erlangly.com/getting-started/acd.
- On the mapping page, a connection's status called like one of Erlangly's own states (such as *Break* or *Offline*) now follows its row there.
- Reading a connection's 13-week history carries on past a week that fails, instead of stopping there.

## 0.8.54 (2026-10-04)
- **The wallboard follows Zoom, Genesys Cloud, NICE CXone and Five9 live.** Agents' state changes from these connections now show on open wallboards within a second, as changes sent through the API always have; before, they showed only when the page was reloaded.
- When several agents change state in the same second, the wallboard now shows every change, not just the first.

## 0.8.53 (2026-10-02)
- **A draft warns when shifts run where the forecast needs nobody.** If a line of business has people on shift for an hour or more of the day when its forecast needs no one, usually because a shift pattern starts earlier or ends later than the forecast, the draft says so, with the times and the patterns to adjust. Scheduling then is still allowed.

## 0.8.52 (2026-10-02)
- **Long leave.** New unpaid time-off types, *Leave of absence* and *Parental leave*. Requests has an *On leave* list of everyone away for two weeks or more, with the day they're back, flagged *Back soon* when that's within a week and *Back early?* when the ACD shows them working during their leave.
- Supervisors can change the dates of time off asked for or approved (back early, or a leave extended), and the schedule follows.

## 0.8.51 (2026-10-02)
- **Overlapping activities take someone off the phone once.** A Late placed over a break, say, no longer counts them away twice in coverage and the summary figures.
- The schedule grid shows each activity in its own colour (Late, Training, Coaching…), not every one but lunch as a break.

## 0.8.50 (2026-10-02)
- Coverage counts activities that keep people on the phone, like nesting, as time on the phone, rather than taking them off it like a break.
- **Five9 connector (beta), first part.** Connect it under *Settings → Connections* with your data centre and a dedicated Five9 user: it's checked with Five9 before saving, and agents' live states arrive for adherence and the wallboard.

## 0.8.49 (2026-10-02)
- **Change a shift's breaks and other activities without removing them.** On a shift's page, each break, lunch or other activity has an *Edit* link that opens it in place, with its activity, start time and minutes filled in. It's checked like a new one: it has to fit in the shift, and labour rules apply.

## 0.8.48 (2026-10-02)
- **Adherence counts approved time off as expected time away.** Someone on vacation over a published shift is no longer scored out of adherence: for the time off, being logged out is what's expected, as for an approved absence. The wallboard shows them as expected away too.
- The schedule grid's legend includes time off.

## 0.8.47 (2026-10-02)
- **Time off shows on the schedule, as a layer over it.** Approved time off (vacation, sick, other reasons) is drawn over the person's shift and its breaks and lunch, which stay as planned underneath, and people who are off without a shift get a row. The time it takes out of a shift counts as away from the phone in coverage and the summary figures, without counting a break twice.
- A shift with approved time off over it no longer stops a schedule being published: the schedule page lists them instead, in case you'd rather move a shift. On their own schedule, people see the time off inside the shift.

## 0.8.46 (2026-10-02)
- **Every day of a forecast can be opened.** A forecast's page has the live forecast's *From / to* date picker instead of buttons for only its first 14 days: it opens on the whole forecast, with *Whole forecast* and *Today* shortcuts, and the same day for both shows that day's intervals.

## 0.8.45 (2026-10-02)
- **NICE CXone connector (beta), complete.** Floors of any size stay connected (the first check hands over everyone 500 at a time). Volumes count only real demand: contacts that reached a queue, handled when an agent worked them, each once, without consults, takeovers, short abandons or outbound calls. Every night the last week is read again, so emails and work items completed days later are counted.
- Safer: Erlangly asks CXone only for the agent and contact fields it uses, never addresses, pay or callers' details, and refuses oversized answers. You can switch a CXone connection back to Erlangly's own NICE registration.
- The data export leaves every connection's access key secret out, encrypted or not.
- Setting up: erlangly.com/getting-started/acd has a NICE CXone section.

## 0.8.44 (2026-10-02)
- In the schedule grid, the lines between people run exactly as far as the hours shown, instead of stopping at the edge of the screen.
- A published schedule's header says plainly who can see it: *Seen by 12 of 40 people with a login*, or, when nobody on it can sign in yet, that no one has an Erlangly login, with a link for admins to invite them.

## 0.8.43 (2026-10-02)
- **The schedule's summary follows what you're looking at.** Coverage, Short, Over and Shifts on a draft now show the week or day and line of business you've picked, with a line saying which, instead of always the whole period. Each line of business counts against its own need, so one line's spare people don't hide another's gap.
- **NICE CXone connector (beta), first parts.** Connect it under *Settings → Connections* with a CXone access key: agents' live states arrive for adherence and the wallboard, and CXone's inbound skills can be matched to your lines of business, whose contacts, handle time and abandons come in as volume history.

## 0.8.42 (2026-10-02)
- The schedule's week view opens faster again for large teams (about 45 ms less for 500 people), after overnight shifts got their own day.

## 0.8.41 (2026-10-01)
- In the schedule's week view, the lines between days fall at midnight again, now that a day can show more than 6 AM to 10 PM.

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
- Labour-law rule packs (Canada, Jamaica, United States), holidays, and checks on generation, edits and publishing.

## 0.4.0 (2026-09-28)
- Schedule periods, generated drafts, hand editing and publishing.

## 0.3.0 (2026-09-27)
- Volume history, forecasts and Erlang C staffing.

## 0.2.0 (2026-09-27)
- Sites, lines of business, teams, people, CSV import, licence keys and sample data.

## 0.1.0 (2026-09-27)
- Sign-in, roles, first-run setup, invitations, the audit trail and the installer.
