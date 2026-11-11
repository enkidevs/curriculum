---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Write four short status lines separating done, in-progress, not-started, and incident-impact claims without presenting correlation as cause.
    requiredConcepts:
      - State that manual CSV upload works on staging.
      - Keep scheduled imports in progress and the error-report download not started.
      - State that Wednesday's work moved to Thursday, and report scaling followed by the error-rate decline without claiming causation.
    acceptedAnswers:
      - "Done: manual CSV upload works on staging. In progress: scheduled imports. Not started: error-report download. Incident impact: Wednesday work moved to Thursday; pods scaled and the error rate later fell, cause unconfirmed."
      - "Done: staging confirms manual CSV upload. In progress: scheduled imports. Not started: error-report download. Incident: Wednesday delivery moved to Thursday; scaling preceded a falling error rate, with cause unknown."
      - Four equivalent lines that distinguish verified progress, unfinished work, schedule impact, and uncertainty.
    hints:
      - Which outcome was verified on staging?
      - What happened after the pod count changed, and what remains unknown?
    tooVagueExamples:
      - Made good progress on imports and handled an incident.
      - Continued work and expect to finish soon.
    incorrectExamples:
      - Bulk import is complete and scaling the pods fixed the incident.
      - The deploy caused the error spike.
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Progress And Blockers

---
## Content

A weekly status update tells your lead and other teams what they can plan around.

An assistant can polish your notes until they read well, and the update can still never say what's actually done.

Say your notes say "Made progress on SSO and helped with an incident." That describes what you did with your week. It doesn't say what's finished.

Here's the same week with each claim next to its evidence:

```plain-text
Done: user-initiated SSO reaches the dashboard. Verified on staging.
In progress: provider-initiated login.
Not started: just-in-time provisioning.
Incident: workers scaled from 20 to 35 at 10:01; queue age began
falling at 10:06. Cause unconfirmed.
Delivery impact: Thursday's project work moved to Friday.
```

- **Done** names what works and where it was checked.
- **In progress and Not started** show what's left.
- **Incident** gives the scaling and the recovery as two events, and says the cause is unconfirmed.
- **Delivery impact** says what the incident cost the project.

**Report what's finished and how you know, and keep it apart from what you only worked on.**

> ‼️ A common mistake is writing "scaling fixed the queue." The queue fell after the scaling, and nobody has confirmed that one caused the other.

---
## Practice

Manual CSV upload is verified on staging, scheduled imports are underway, and the error-report download hasn't started. Pods were scaled and the error rate later fell, cause unconfirmed; Wednesday's work moved to Thursday. Write four lines labeled Done, In progress, Not started, and Incident impact.

???

- Done: manual CSV upload works on staging. In progress: scheduled imports. Not started: error-report download. Incident impact: Wednesday work moved to Thursday; pods scaled and the error rate later fell, cause unconfirmed.

---
## Revision

The update line "Investigated the login issue all week" reports ???.

- activity, not status
- verified progress
- a clear blocker
- a schedule change
