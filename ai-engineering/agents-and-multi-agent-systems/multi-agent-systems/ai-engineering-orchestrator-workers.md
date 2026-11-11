---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Workers run separately with their own context, so part 2 can't see part 1's findings; the steps belong in one agent or a pipeline.
    requiredConcepts:
      - Part 2 can't see part 1's results, or the parts aren't independent, so they shouldn't be split this way.
    acceptedAnswers:
      - Worker 2 never sees worker 1's findings.
      - The parts depend on each other, so they shouldn't be separate workers.
      - Part 2 has to wait for part 1; use one agent or a pipeline.
    hints:
      - What's in a worker's context when it starts?
      - Can the two parts run at the same time?
    tooVagueExamples:
      - It's slower.
      - The split is wrong.
    incorrectExamples:
      - Nothing, the orchestrator shares its context with every worker.
      - The orchestrator needs a bigger model.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: So it holds only its own part and tools, which keeps its context small and focused.
    requiredConcepts:
      - It holds only its own part, keeping the context small or focused.
    acceptedAnswers:
      - So it only holds its own part and stays focused.
      - To keep its context small, with just its task and tools.
      - So it isn't loaded with every other worker's material.
    hints:
      - What would a worker's context hold if it shared everything?
      - What happens to a model's attention in a very long context?
    tooVagueExamples:
      - For efficiency.
      - It's cleaner.
    incorrectExamples:
      - So it can see the orchestrator's full history.
      - Because models can't share context with other models.

---

# Orchestrator-Worker Pattern

---
## Content

In the orchestrator-worker pattern, the orchestrator agent writes a plan, hands each part to a worker agent, and combines what comes back.

Here's its plan for a brief on a company before a sales call:

```plain-text
Task: brief on Kestrel Logistics for Thursday's call
Worker 1 (news search): news from the last 90 days
Worker 2 (annual reports): revenue, 2024 and 2025
Worker 3 (job postings): open roles by team
```

**Each worker starts with a fresh context that holds only its part and its one tool.** So the news worker never reads 38 job listings, and the three can run at the same time.

Here's what comes back:

```plain-text
Worker 1: Opened a Denver depot in May.
Worker 2: Revenue $410M (2024), $455M (2025).
Worker 3: 38 open roles, 22 of them drivers.
```

The orchestrator combines three short summaries, so its own context stays short too. Models pick out the right facts more reliably from a short context than from a long one.

> ‼️ A common mistake is splitting parts that depend on each other. Workers run separately, so if worker 2 needed worker 1's findings, it couldn't see them. Those steps belong in one agent or a pipeline.

---
## Practice

Your orchestrator splits a task in two, but part 2 needs part 1's findings. What's the problem?

???

- Workers run separately, so part 2 can't see part 1's results.

---
## Revision

In an orchestrator-worker setup, why does each worker start with its own fresh context?

???

- So it holds only its own part, keeping its context small and focused.
