---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Parallel agents with code merging their results, because the split is the same for every brief.
    requiredConcepts:
      - Parallel agents (with code merging the results), because the split never changes.
    acceptedAnswers:
      - Parallel agents, merged by code. The split is fixed.
      - Three agents in parallel, since the sections never change.
      - Parallel, with your code joining the three sections.
    hints:
      - Does a model need to decide how to split the work?
      - Do the sections depend on each other?
    tooVagueExamples:
      - Multiple agents.
      - The fastest one.
    incorrectExamples:
      - An orchestrator, so a model decides the sections each time.
      - A sequential pipeline, one section after another.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Choosing A Multi-Agent Pattern

---
## Content

**Which multi-agent pattern fits depends on two things: whether the parts need each other's results, and whether the split changes from task to task.**

Here's when each pattern fits the company-brief feature:

- **Sequential pipeline:** each stage needs the one before it. The writing agent can't start until another agent has gathered the sources.
- **Parallel agents:** every brief needs the same sections. Fixing them in code saves a planning call and lets you test each agent alone.
- **Orchestrator and workers:** the sections vary, so the orchestrator decides them for each request.

Here's what an orchestrator chose for two companies:

```plain-text
Nimbus Robotics (startup):
  funding rounds, founders, product launches
Kestrel Logistics (public company):
  annual results, news, job postings
```

Each company got sections that fit it. Fixed parallel agents would have given both the same three.

---
## Practice

Every brief your feature writes needs the same three sections, researched separately. Which multi-agent pattern fits?

```plain-text
Orchestrator and workers
Sequential pipeline
Parallel agents
```

???

- Parallel agents merged by code, since the split never changes.

---
## Revision

When a brief's sections change from company to company, the split for each request is best decided by the ???.

- orchestrator agent
- application code
- final pipeline stage
