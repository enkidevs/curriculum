---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Start with an orientation map of how a request flows, not a diagnosis.
    requiredConcepts:
      - A map of how the request flows through the code, not a guess at the cause.
    acceptedAnswers:
      - Where an invoice request enters and which files it passes through.
      - A walkthrough of the flow and the files to start with.
      - An orientation map of the code, not the cause of the bug yet.
    hints:
      - Do you know where requests even enter yet?
      - Is it too early to ask for the cause?
    tooVagueExamples:
      - An explanation.
      - Some help with the bug.
    incorrectExamples:
      - The root cause of the bug and a patch.
      - A summary of every file in the repo.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Maps guide inspection; they don't replace it.
    requiredConcepts:
      - A guide for what to inspect.
    acceptedAnswers:
      - A starting point for what to read.
      - Directions, not confirmed facts.
      - A lead to follow up by reading code.
    hints:
      - Is it verified?
      - What do you still need to read?
    tooVagueExamples:
      - Useful.
      - With caution.
    incorrectExamples:
      - A substitute for reading the code.
      - Proof that unmentioned files don't matter.
---

# Codebase Orientation

---
## Content

Say you inherit a 30-file redirect service and a bug report about a short link reaching the wrong page. Before reading code, ask the assistant for a map:

```plain-text
Trace a request to /r/:code from entry point to response. Name the
functions and files involved, then suggest the three files I should
read first. Do not infer the cause yet.
```

Here's a useful answer:

```plain-text
Entry: routes/redirects.js mounts GET /r/:code.
Flow: resolveCode() in services/redirects/resolve.js looks the code
up, then buildTarget() in services/redirects/target.js rewrites the
query string before the 302.
Read first: resolve.js, target.js, and target.test.js.
```

It names the entry point, the two functions in the path, and three files to start with.

**Treat the map as a guide to what to open next.** Read the named files to confirm the route, data flow, and tests before you draw conclusions.

---
## Practice

You inherit a 40-file billing service where some invoices show the wrong tax. Before reading code, what do you ask an assistant for first?

???

- A trace of the request path and files to read first.

---
## Revision

An assistant maps how a request flows through an unfamiliar codebase. How should you treat that map?

???

- As a guide to what to inspect next, not proof.
