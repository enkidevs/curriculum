---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Your code merges the parallel agents' sections, since no lead agent is involved.
    requiredConcepts:
      - Your code (application code) merges the results.
    acceptedAnswers:
      - Your code merges them.
      - Application code joins the sections.
      - Code you wrote, with no lead agent.
    hints:
      - Is there a lead agent in this pattern?
      - Who started the agents in the first place?
    tooVagueExamples:
      - The system.
      - Something at the end.
    incorrectExamples:
      - A lead agent that reads all three.
      - The last agent in the chain.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Multi-Agent Patterns

---
## Content

A multi-agent system splits one task across several agents, each a model calling tools in a loop with its own instructions.

**Each agent has its own context, everything sent to its model on each call, so it sees only its part of the task.**

Say a research feature writes a one-page company brief before each sales call. Here are three common ways to split it:

- **Orchestrator and workers:** a lead agent, the orchestrator, splits the work for each company among worker agents, then combines their results.
- **Sequential pipeline:** each agent's output feeds the next. One gathers sources, one writes, and one checks claims.
- **Parallel agents:** your code runs fixed agents at the same time, say for news, finances, and hiring, then merges their sections.

The patterns differ in who decides the split. The orchestrator decides it for each request, while a pipeline or parallel agents fix it in your code.

---
## Practice

In the parallel-agents pattern, three agents each write one section of a brief. What combines the sections?

???

- Your code merges them.

---
## Revision

In a sequential pipeline, each agent's ??? becomes the next agent's input.

- output
- context
- tool list
