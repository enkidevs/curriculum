---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A stakeholder update reports the impact, what was done, and when the next update comes.
    requiredConcepts:
      - User impact, what was done about it, or when the next update comes.
    acceptedAnswers:
      - How users are affected and what we're doing about it.
      - That images are delayed, capacity was added, and when the next update is.
      - Impact, mitigation, and the next update time.
      - How users are affected.
    hints:
      - What do stakeholders actually need to know?
      - Which details belong in the handoff instead?
    tooVagueExamples:
      - Less detail.
      - Something simpler.
    incorrectExamples:
      - That the deploy caused it, to keep it simple.
      - The full timeline, so they can judge for themselves.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A stakeholder update must not report a recovery that is still in progress as finished.
    requiredConcepts:
      - Recovery is still in progress, so calling it resolved overstates it.
    acceptedAnswers:
      - Errors are only falling, not back to normal yet.
      - It says resolved when it's still recovering.
      - It's not resolved yet; errors are still high.
    hints:
      - Are error rates back to normal?
      - What does 'falling' tell you?
    tooVagueExamples:
      - Too confident.
      - Inaccurate.
    incorrectExamples:
      - It doesn't say which version was rolled back.
      - It's too short for stakeholders.
---

# Incident Updates

---
## Content

During an incident, people outside the response team need status updates, and an assistant can draft one from your notes. If the draft sounds more certain than your notes, you'll be walking it back in the next update.

Here's a draft for the image-processing backlog that began after a deploy:

```plain-text
A deploy caused a temporary slowdown. Extra capacity fixed it.
No further action is needed.
```

It claims two things your notes don't show:

- **"A deploy caused":** the deploy is still only a hypothesis.
- **"Extra capacity fixed it":** the queue is falling, and it hasn't recovered yet.

Here's the same update written from what's confirmed:

```plain-text
Image processing is delayed. Queue age exceeded 8 minutes and timeout
errors increased. We increased worker capacity from 20 to 35 at 10:01,
and queue age began falling at 10:06. We are still investigating the
cause. Next update at 10:30.
```

**A stakeholder update covers the impact, what you did about it, whether it's recovering, and when the next update comes.** The raw signals and hypotheses go in the handoff to the next responder.

> ‼️ A common mistake is calling an incident resolved while the numbers are still falling. Say it's recovering until they're back to normal.

---
## Practice

During an incident, uploaded images are slow to process. An AI-drafted update for stakeholders lists CPU usage, the enqueue rate, and unconfirmed hypotheses. What should it report instead?

???

- The user impact, what you've done, and when you'll update next.

---
## Revision

During an incident, you rolled back a deploy. Error rates are falling but still above normal. An AI-drafted update for stakeholders says the incident is resolved. What's wrong with that?

???

- It calls a partial recovery resolved; errors remain above normal.
