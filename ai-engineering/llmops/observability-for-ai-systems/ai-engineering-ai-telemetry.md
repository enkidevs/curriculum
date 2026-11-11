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
    - fill-in-the-gap
  context: standalone

---

# AI Telemetry

---
## Content

A `200 OK` only says a request completed. It can't show whether the reply cost too much, came slowly, or ignored what search found.

**AI telemetry is the set of numbers your AI feature records for every request, showing how the call behaved beyond its status code.**

Here's the record the carrier's support assistant saves for one request:

```plain-text
request 7f3a  config 15
  tokens:      2,140 in, 96 out ($0.0025)
  latency:     2.3 s, first token at 0.6 s
  stop reason: finished
  retrieval:   4 articles found, 0 cited in reply
  tool errors: 0
  schema:      passed
```

Most lines answer one plain question:

- **Tokens:** what the request cost.
- **Latency:** replies stream in, so the first-token time is how long the customer looked at an empty reply.
- **Stop reason:** `finished` means the model ended the reply itself. A stop at the token limit means a cut-off reply.
- **Schema:** whether the reply matched its required JSON format.

The retrieval line is the one to worry about here. Four articles found and none cited means the reply used nothing search brought back. Either search fetched the wrong articles, or the model ignored the right ones.

---
## Practice

Answers cite a retired refund policy, yet the endpoint returns `200`. The most likely explanation sits in the ???.

- retrieval results
- response status codes
- CPU metrics
- request counts

---
## Revision

A reply's telemetry shows it stopped at the token limit. That reply was most likely ???.

- cut off
- too slow
- uncited
- too costly
