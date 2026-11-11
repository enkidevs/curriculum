---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The model chooses each next tool call, based on the results of the steps before it.
    requiredConcepts:
      - The model chooses, based on what earlier tool calls returned.
    acceptedAnswers:
      - The model, based on the results so far.
      - The model decides, using what the last tool returned.
      - The model reads each result and picks the next call.
    hints:
      - Who wrote the order of the steps in an agent's trace?
      - What does the model read before it picks a step?
    tooVagueExamples:
      - The AI.
      - The loop.
    incorrectExamples:
      - Your code, in a fixed order.
      - The person who sent the request picks each tool.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# AI Agents

---
## Content

An AI agent is a model that calls tools in a loop until a task is done. A tool call is the model asking your code to run a function, like a flight search.

**The model chooses each next step from what the earlier steps returned.**

Here's how a travel-booking agent handles one request. This is its trace, the record of each step:

```plain-text
Request: Move my Thursday Boston flight to
Friday, around 9 am.
1. get_booking(employee="e-1042")
   -> Thu 6:10 pm, flight 318
2. search_flights(to="BOS", date="Fri")
   -> flights 407 (7:40 am), 412 (9:15 am)
3. change_booking(old="318", new="412")
   -> confirmed
4. Answer: You're now on flight 412, Friday 9:15 am.
```

Nobody wrote these steps in advance. The model read the old flight number, 318, from step 1's result. Only after step 2 could it see that flight 412 was the closest to 9 am.

A different request would get different steps, because each one depends on what came back before it.

---
## Practice

In an AI agent, what decides which tool gets called next, and based on what?

???

- The model, based on the results of the earlier steps.

---
## Revision

An AI agent is a model that calls tools in a ???, choosing each step from the results.

- loop
- fixed order
- single request
