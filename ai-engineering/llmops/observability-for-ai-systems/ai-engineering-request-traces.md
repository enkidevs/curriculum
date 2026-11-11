---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A shared request ID links events across services.
    requiredConcepts:
      - A shared ID across all stages.
    acceptedAnswers:
      - A trace ID carried through every service.
      - One correlation ID across stages.
      - The same request ID in every log.
    hints:
      - How do you join logs across services?
      - What must each stage record?
    tooVagueExamples:
      - Better logs.
      - More data.
    incorrectExamples:
      - Longer log retention.
      - The model's account of its sources.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Request Traces

---
## Content

One request to an AI feature passes through several services: retrieval, model calls, and tool calls. A request trace records that whole path under a single trace ID, from the person's message to the reply.

Each trace is also tagged with the config version, the numbered set of model, prompt, tools, and index behind the reply.

Here's one trace from a mobile carrier's support assistant, which answers billing questions from help articles and can look up a customer's bill:

```plain-text
trace 7f3a  config 15
  message:   "Why is my bill $18 higher this month?"
  retrieval: 4 articles; top: "Roaming charges"
  model:     calls get_bill(month="June")
  tool:      get_bill -> roaming $18.00, 0.4 s
  reply:     "The extra $18 is a late payment fee."
```

The tool returned an $18 roaming charge, and the reply calls it a late fee. Only a trace puts the tool's result next to the reply like this, so you can see the reply misread a correct result.

**Every service writes the same trace ID, and that's what joins these lines into one story.** The `config 15` tag says which setup to fix, and lets you check whether config 16 repeats the mistake.

---
## Practice

Retrieval, generation, and response logs live in separate services. What links a reported wrong answer to its retrieval event?

???

- One trace ID passed from retrieval through the response.

---
## Revision

To check whether a quality dip hit only summaries using a new output schema, record the schema version ???.

- on each request
- in release notes
- in a registry
- on a dashboard
