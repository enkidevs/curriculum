---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The timing makes the deploy a strong lead that still needs checking.
    requiredConcepts:
      - Treats it as a lead or suspect to check, or says it isn't proven yet.
    acceptedAnswers:
      - Top suspect to test, not confirmed.
      - A strong lead that still needs checking.
      - Test it first; it isn't proven.
      - The main suspect.
      - Check it first.
      - A likely cause, but not proven.
    hints:
      - Does timing prove cause?
      - What would confirm it?
    tooVagueExamples:
      - Suspicious.
      - Likely.
    incorrectExamples:
      - The confirmed cause.
      - A weak lead from coincidence.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Timing makes a deploy a lead, but other changes in the window can cause the same symptoms.
    requiredConcepts:
      - "Names at least two of: config changes, feature flags, traffic or workload, other deploys."
    acceptedAnswers:
      - Flag flips and a traffic spike.
      - Config changes and more incoming jobs.
      - Other deploys and config edits.
    hints:
      - What else changes production besides code?
      - Did demand change?
    tooVagueExamples:
      - Other things.
      - More logs.
    incorrectExamples:
      - Only the files in that deploy.
      - The assistant's confidence score.
---

# Recent Changes

---
## Content

When production starts misbehaving, the change made just before is one of the fastest leads. An assistant can line up deploys and other changes against the incident for you. The risk is blaming the first change it finds.

Say image-processing jobs stop keeping up shortly after a deploy:

```plain-text
09:42 deploy completed
09:47 queue age crossed 8 minutes
09:49 worker CPU reached 92%
09:53 image-processing timeout errors increased
10:01 worker pool scaled from 20 to 35
10:06 queue age began falling
```

Queue age[1] shows a backlog, but not what caused it.

The deploy landed five minutes before the backlog started, so it's a strong lead. Ask the assistant what else changed in the same window:

```plain-text
Changes in the 30 minutes before 09:47:
09:42  deploy 4f2ab1c, workers/imageProcessor.js adds a 512px thumbnail alongside the existing 128 and 256

Still unknown: config edits, feature flags, and inbound volume.
```

- **The deploy** changed the affected worker, so it's the first thing to test.
- **The unknowns** could cause the same backlog. A config edit, a flag flip, or a rise in uploads would look just like this.

**Timing makes the deploy your top suspect, and it still needs a check before you call it the cause.**

> 💡 Before you blame a deploy, check config edits, feature flags, and incoming volume for the same window.

---
## Practice

Five minutes before a worker's job backlog began, a deploy changed that worker. What does that timing tell you about the deploy?

???

- As the first hypothesis to test, not yet a proven cause.

---
## Revision

A deploy landed just before a job backlog began. What two other kinds of change should you look for in that window?

???

- Config edits and feature flag changes.

---
## Footnotes

[1: Queue Age]
How long the oldest waiting job has been sitting in the queue. It rises when work arrives faster than workers can finish it, whatever the reason.
