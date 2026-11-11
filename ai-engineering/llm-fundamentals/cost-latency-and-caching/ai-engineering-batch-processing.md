---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A batch job, because nobody is waiting on the summaries and the lower price is pure savings.
    requiredConcepts:
      - A batch job, because the work can wait, or because it costs less.
    acceptedAnswers:
      - Batch. Nobody needs them until the weekly report.
      - A batch job, for the lower price.
      - Batch, since the report can wait days.
    hints:
      - Is anyone waiting on each summary?
      - When does the report need to be ready?
    tooVagueExamples:
      - Whichever is cheaper.
      - It depends.
    incorrectExamples:
      - Live calls, so each summary is ready instantly.
      - Live calls, since batch can't handle 8,000 requests.

---

# Batch Processing

---
## Content

Some work doesn't need an answer right away, like writing descriptions for tomorrow's new products. **A batch API takes a large set of requests as one job, returns the results later, and charges less for them.**

Say your store adds about 6,000 products a day, and their descriptions need to be live within two days. Here's a nightly batch job, with illustrative numbers:

```plain-text
job: nightly-descriptions
requests: 6,000, one per new product
results: within 24 hours
price: about half the usual rate
```

Nobody is waiting on any one description, so the lower price is pure savings.

The results come back as one file, in any order, with each line tagged with the ID you gave its request:

```plain-text
{"id": "prod-1041", "status": "succeeded",
 "text": "A solid bamboo board with a juice groove..."}
{"id": "prod-1042", "status": "failed", "error": "server_error"}
```

So your code matches each result to its product by ID, and resubmits failures like `prod-1042`.

Batch jobs usually have their own rate limits, the most requests a provider lets you send per minute, so they don't slow down your live features.

---
## Practice

A batch API gives you a lower price in exchange for ???.

- slower results
- lower accuracy
- shorter replies
- older models

---
## Revision

Your app summarizes each day's 8,000 support tickets for a weekly trends report. Batch job or live calls?

???

- A batch job, since the summaries can wait for the weekly report.
