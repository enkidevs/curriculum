---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Keep one agent, because splitting adds tokens, latency, and handoff errors without a problem to fix.
    requiredConcepts:
      - Keep the single agent, because more agents add cost, latency, or error points with nothing to fix.
    acceptedAnswers:
      - Keep one agent. There's no problem for three to solve.
      - Stay with one; three agents cost more and run slower.
      - One agent, since splitting only adds tokens and handoff errors.
    hints:
      - What problem would three agents fix here?
      - What does each extra agent add to every request?
    tooVagueExamples:
      - It depends.
      - Try both.
    incorrectExamples:
      - Three agents, since splitting work always improves quality.
      - Three agents, because they run in parallel and cost less.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Multi-Agent Tradeoffs

---
## Content

**Every agent you add costs more tokens, more time, and more places for errors to creep in.**

Here's a company-brief feature built two ways (illustrative numbers):

| Setup | Tokens | Time |
|---|---|---|
| One agent | 40,000 | 30 s |
| Orchestrator + 3 workers | 120,000 | 45 s |

Each cost has a cause:

- **Tokens** triple because each worker runs its own loop, resending its instructions and growing context on every pass. The orchestrator adds its own calls to plan and combine.
- **Time** grows even with workers running at once, since the orchestrator plans before they start and combines after the last one ends.
- **Errors** compound. If each handoff keeps every detail right 95% of the time, a brief built from three handoffs is fully right 0.95 × 0.95 × 0.95 of the time, about 86%.

> 💡 Start with one agent and good tools. Split only when you can name the problem it fixes, such as a context that keeps filling up.

---
## Practice

Your one-agent research feature works well, and its context never fills up. A teammate proposes three agents. Your call?

???

- Keep one agent; splitting adds cost and latency for nothing.

---
## Revision

In a multi-agent system, errors from one agent tend to ??? across handoffs.

- compound
- cancel out
- stay contained
