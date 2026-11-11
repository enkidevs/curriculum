---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The trimming rule removed the original request, so the agent no longer knew which day was asked for.
    requiredConcepts:
      - The original request, or the employee's message asking for Monday, was removed.
    acceptedAnswers:
      - The employee's original request.
      - The first message, which said Monday.
      - The request, dropped because it was oldest.
    hints:
      - Which message said Monday?
      - Which messages does "drop the oldest" remove first?
    tooVagueExamples:
      - Some old messages.
      - Part of the context.
    incorrectExamples:
      - The Wednesday search results.
      - The model's last reply.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The instructions (system prompt) and the original request or goal stay in full.
    requiredConcepts:
      - The system prompt or instructions.
      - The original request or goal.
    acceptedAnswers:
      - The system prompt and the original request.
      - The instructions and the task's goal.
      - Its standing instructions and what the person asked for.
    hints:
      - What tells the agent how to behave?
      - What tells it what it's trying to finish?
    tooVagueExamples:
      - The important parts.
      - The recent messages.
    incorrectExamples:
      - The latest tool results and the last reply.
      - The full history of every search.

---

# Trimming Agent Context

---
## Content

When an agent's context fills up, your code has to drop or shrink something. A simple rule like "drop the oldest messages" removes the two that matter most.

Say a travel-booking agent's context fills with search results. Here it is after two drops:

```plain-text
[dropped] system prompt: economy only;
          over $800 needs approval
[dropped] request: London, Monday, back Friday
search Mon -> 5 flights, cheapest $1,240
search Tue -> 5 flights, cheapest $1,210
search Wed -> 5 flights, cheapest $1,150
```

On its next pass, the agent replies:

```plain-text
The Wednesday flight at $1,150 is the best fare
I found. Booking it now.
```

Here's what each dropped message took with it:

- **The request:** without it, the agent forgot Monday was the day and took the cheapest of the three.
- **The system prompt:** your app's instructions. Without it, the agent forgot that $1,150 needs approval, so only a check in your booking code would stop it.

**When your code trims a long agent run's context, the system prompt and the original request need to stay in full.**

Your code can shrink the tool results between them instead, by trimming or summarizing old searches.

---
## Practice

After your code trims its context, an agent books a Wednesday flight, though the employee asked for Monday. What did the trimming likely remove?

???

- The employee's original request.

---
## Revision

When your code trims a long agent run's context, which two things should always stay in it?

???

- The system prompt and the original request.
