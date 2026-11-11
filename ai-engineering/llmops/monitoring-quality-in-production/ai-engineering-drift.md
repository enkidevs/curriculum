---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Behavior drift is confirmed by scoring outputs over time.
    requiredConcepts:
      - Scored output samples compared over time.
    acceptedAnswers:
      - Score recent answers against last month's sample.
      - Compare output quality samples across months.
      - Measure the answers themselves, then and now.
    hints:
      - Which inputs are already stable?
      - What would directly show vagueness?
    tooVagueExamples:
      - Monitoring.
      - More data.
    incorrectExamples:
      - Share of new-version questions.
      - Count of sections retrieved.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A useful quality alert names who acts and what they do first, such as comparing scores by meeting length.
    requiredConcepts:
      - An owner and a first step, such as comparing scores by meeting length.
    acceptedAnswers:
      - Who gets paged and what they do first.
      - An owner plus a set first step, like comparing scores by meeting length.
      - A named on-call engineer and what they check first.
    hints:
      - Who acts when it fires?
      - What should that person check first?
    tooVagueExamples:
      - More detail.
      - A clear message.
    incorrectExamples:
      - A lower threshold so it fires more often.
      - A dashboard chart of the rate.

---

# Drift

---
## Content

What your AI feature receives can change over time, and so can how it behaves. That change is called drift, and it can show up in inputs, retrieved documents, or the model's output.

Your video-call app's online eval held a steady weekly score for meeting summaries, until this:

| Week | Score | Meetings over 60 min |
|---|---|---|
| 18 | 0.92 | 8% |
| 22 | 0.91 | 9% |
| 26 | 0.86 | 19% |

A large customer started recording all-day workshops. Long transcripts are where summaries drop action items, so the score followed the input mix down.

Here's an alert that would have caught it:

```plain-text
alert:      score under 0.89 for 3 days, or meetings over 60 min above 15%
owner:      summaries on-call engineer
first step: compare scores by meeting length
```

The second condition fires on the input mix alone, before the score falls far.

**A useful alert also names who acts and what they check first.**

When inputs hold steady and scores still fall, the model itself may have changed, like when a provider updates the model behind the name you call.

> 💡 Keep scoring a sample of outputs over time. It's how you confirm the behavior changed when nothing else did.

---
## Practice

The question mix and index are stable, but support says answers got vaguer. What signal can confirm the behavior changed?

???

- A scored sample of answers compared against last month's.

---
## Revision

Your alert fires when summary scores drop. Besides the condition, what must it name so someone acts?

???

- An owner and a first step, like comparing scores by meeting length.
