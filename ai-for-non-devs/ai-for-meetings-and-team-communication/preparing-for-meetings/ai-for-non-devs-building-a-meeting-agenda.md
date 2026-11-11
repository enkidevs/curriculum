---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The request needs to say what the meeting must decide or produce.
    requiredConcepts:
      - Names the decision or outcome the meeting must reach.
    acceptedAnswers:
      - What the meeting has to decide.
      - The outcome we need by the end.
      - Whether we're deciding to open on Saturdays.
      - The goal of the meeting.
    hints:
      - What should the group have by the end of the meeting?
      - What gives a discussion a stopping point?
    tooVagueExamples:
      - More detail.
      - Some context.
    incorrectExamples:
      - A longer list of topics.
      - Nicer formatting for the headings.
      - It's missing the agenda.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The item names the specific question the group must settle.
    requiredConcepts:
      - It states a specific staffing question to settle.
    acceptedAnswers:
      - "Staffing: can we cover Saturdays with current staff? 10 min."
      - Decide who covers the late shift. 10 minutes.
      - "Staffing question: hire a temp or not? 10 minutes."
    hints:
      - What exactly does the group need to decide?
      - Could someone prepare for it from the label alone?
    tooVagueExamples:
      - Staffing discussion, 10 minutes.
      - Talk about staffing issues.
    incorrectExamples:
      - "Staffing: 10 minutes, Priya presenting slides."
      - "Staffing: 15 minutes."

---

# Building A Meeting Agenda

---
## Content

Six people have 45 minutes to decide whether four clinics should open on Saturdays.

Tell AI what the meeting has to decide, who's coming and what each person handles, the evidence, and any limits.

Then ask for more than topic headings:

```plain-text
Build a 45-minute agenda for this decision. For each item, name the question to resolve, who leads it, its time box, and the output needed. End with the decision, or the evidence and owner required for a later decision.
```

A heading such as "Staffing" can wander. **"Can the current rota cover Saturdays?" has a question, an owner, and a stopping point.**

> 💡 Check the final agenda yourself. AI doesn't know who makes the final call unless you tell it.

---
## Practice

Asked for "an agenda for our Saturday-opening meeting," AI returns topic headings with no end point. What did the request leave out?

???

- The decision the meeting has to reach.

---
## Revision

Rewrite this agenda item so the group knows what it has to settle: "Staffing: 10 minutes."

???

- Staffing: do we add a second person on Saturdays? 10 minutes.
