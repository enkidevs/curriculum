---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Record uncertain events with their source and confidence.
    requiredConcepts:
      - Marks the time as approximate or unconfirmed, not exact.
    acceptedAnswers:
      - ~Tuesday afternoon per customer, unconfirmed.
      - An approximate customer sighting, not verified.
      - Customer-reported, rough time, pending confirmation.
    hints:
      - How exact is it?
      - Who reported it?
    tooVagueExamples:
      - As a note.
      - Carefully.
    incorrectExamples:
      - As the confirmed start of the incident.
      - As Tuesday 12:00 exactly.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Preserve conflicting evidence with sources.
    requiredConcepts:
      - Keeps both times and marks them as conflicting.
    acceptedAnswers:
      - 16:20 (deploy log) and 16:10 (chat), flagged as conflicting.
      - Keep both with sources and note the conflict.
      - Record both and mark them unresolved.
    hints:
      - Which source is which?
      - Should you pick one yet?
    tooVagueExamples:
      - The right time.
      - Whatever is accurate.
    incorrectExamples:
      - 16:20, since logs are always right.
      - The average, 16:15.
---

# Incident Timelines

---
## Content

A postmortem is the team's write-up of an incident, and it starts with a timeline. An assistant can assemble one from logs, tickets, and alerts. The risk is a tidy timeline that turns rough guesses into exact times.

Say the evidence for a checkout bug is spread across four systems:

```plain-text
Deploy log: Mar 11 16:20, release 2.14.0 deployed
Support ticket: opened Mar 12 09:05; "first noticed around 21:00"
Staging log: Mar 12 10:12, country-change failure reproduced
Alert history: no matching alert fired
```

**Ask for a timeline that keeps each entry's source and how certain it is.**

Here's the result:

```plain-text
Mar 11 16:20  Release 2.14.0 deployed                 [deploy log]
~Mar 11 21:00 Customer-reported first sighting        [unconfirmed]
Mar 12 09:05  First recorded support ticket           [ticket system]
Mar 12 10:12  Failure reproduced in staging           [staging log]
No alert fired before the ticket.                      [alert history]
```

- **The customer sighting** keeps its "~" and the unconfirmed label. It's someone's memory, so it can't be the exact start time.
- **The missing alert** stays in as its own line. A tidy draft might fill that gap with a page that never happened.

> 💡 When two sources give different times for the same event, keep both with their sources and mark them as conflicting until something settles it.

---
## Practice

A support note says a customer "started seeing errors sometime Tuesday afternoon." How should your incident timeline record that?

???

- As an approximate, customer-reported time that's still unconfirmed.

---
## Revision

The deploy log says 16:20; a teammate's chat says 16:10. Until resolved, what should your incident timeline show?

???

- Both times with their sources, marked as conflicting.
