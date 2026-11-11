---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Wrong answers show up only in a quality measure, such as a score from graded samples of real output, with its own alert.
    requiredConcepts:
      - A quality measure built from graded or scored samples of real outputs, with an alert on it.
    acceptedAnswers:
      - An alert on a quality score from graded samples of output.
      - Grade a sample of real answers and alert when the score drops.
      - A sampled quality score with its own alert.
    hints:
      - Would a wrong answer change uptime or latency?
      - What would you have to look at to see a wrong answer?
    tooVagueExamples:
      - Better monitoring.
      - More alerts.
    incorrectExamples:
      - A tighter latency threshold.
      - An alert on server errors.

---

# Quality Versus Uptime

---
## Content

A feature can respond every time and still give wrong answers. Uptime measures the first, and quality measures the second.

**In production they need separate measures, because uptime counts fallbacks and wrong answers as success.**

Say your video-call app writes a summary and a list of action items after each meeting. Here's last week's dashboard:

| Measure | Last week |
|---|---|
| Uptime | 99.9% |
| Fallback rate | 6% |
| Wrong action-item owner | 1 in 8 |

- **Uptime** is green, and the fallback rate hides inside it. When the model times out, the app shows the transcript with no summary, and that still counts as up.
- **Wrong owner** comes from people grading a sample of summaries against their transcripts.

Here's one of the misses:

```plain-text
transcript: "Priya, can you send the budget by Friday?"
summary:    Sam: send the budget by Friday
```

The request went to Priya, and the summary gave it to Sam. That call returned a normal response on time, so every service metric counted it as a success.

> 💡 Give quality its own measure, like a score from graded samples of real output, with its own alert.

---
## Practice

On a model timeout, your app shows the transcript without a summary, yet uptime stays 99.9%. The measure that shows how often this happens is the ???.

- fallback rate
- average latency
- request volume
- token usage

---
## Revision

Your feature already alerts on uptime and latency. What would alert you to wrong answers?

???

- A quality score from graded samples of real output, with its own alert.
