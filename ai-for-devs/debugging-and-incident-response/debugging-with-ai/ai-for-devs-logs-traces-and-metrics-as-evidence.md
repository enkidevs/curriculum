---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: State only what a metric directly measures.
    requiredConcepts:
      - The number of resize jobs added to the queue roughly tripled.
    acceptedAnswers:
      - That enqueued resize jobs went up about 3x.
      - Only that job enqueue rate tripled.
      - More resize jobs are being queued, about three times.
      - The number of resize jobs tripled.
      - Three times as many resize jobs per minute.
      - About 3x more jobs added to the queue.
    hints:
      - What does it measure?
      - Does it show why?
    tooVagueExamples:
      - Load increased.
      - Something changed.
    incorrectExamples:
      - User traffic tripled.
      - The deploy caused the extra jobs.
      - That jobs increased in size by 3.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Keep raw evidence visible beside a narrative so claims can be checked.
    requiredConcepts:
      - The raw data itself (actual values from logs or metrics), ideally with source or time.
    acceptedAnswers:
      - The actual numbers, where they came from, and when.
      - The underlying metrics with timestamps.
      - The raw log and metric values, labeled by source.
    hints:
      - Could someone check it without redoing the work?
      - What would they need?
    tooVagueExamples:
      - The key points.
      - A better story.
    incorrectExamples:
      - Only the signals that fit the story.
      - One overall confidence score.
---

# Runtime Evidence

---
## Content

During an incident, an assistant can turn logs, traces, and metrics into a readable summary. If the summary drops the raw numbers, it can claim a cause they don't support, and nobody can check it.

Here's a summary of the image-processing backlog that began after the 09:42 deploy:

```plain-text
Traffic held steady. The 09:42 deploy saturated the workers, causing
the image-processing timeouts and backlog.
```

And here's the metric it was written from:

```plain-text
source: metrics/image-resize
signal: jobs_enqueued_per_min
09:40  308
09:47  930
09:49  944
09:53  951
```

The metric counts jobs added to the resize queue each minute. It went from 308 to about 950, roughly three times as many.

That doesn't tell you why. The deploy may create more jobs per upload, more people may be uploading, or both. "Traffic held steady" is a claim this metric can't back up.

**Keep the raw values, with their source and timestamps, next to any summary.** Then anyone can check each claim against the numbers.

> ‼️ A common mistake is reading a metric as more than it measures. Here, all you can say is that enqueued resize jobs roughly tripled.

---
## Practice

A metric shows `image_resize_jobs_enqueued_per_min` roughly tripled. What claim does it directly support?

???

- Resize jobs being enqueued per minute roughly tripled.

---
## Revision

An AI-written incident summary blames a backlog on the deploy. What should you keep beside it so others can check?

???

- The raw metric values, with their source and timestamps.
