# Changes

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
- Labour-law rule packs (Canada, Jamaica, United States; beta), holidays, and checks on generation, edits and publishing.

## 0.4.0 (2026-09-28)
- Schedule periods, generated drafts, hand editing and publishing.

## 0.3.0 (2026-09-27)
- Volume history, forecasts and Erlang C staffing.

## 0.2.0 (2026-09-27)
- Sites, lines of business, teams, people, CSV import, licence keys and sample data.

## 0.1.0 (2026-09-27)
- Sign-in, roles, first-run setup, invitations, the audit trail and the installer.
