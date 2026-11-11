---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Your code should check each tool call before running it and add its own exits, such as a step limit, so the model isn't the only way out.
    requiredConcepts:
      - Code checks each call before it runs, or code adds its own stop, such as a step limit.
    acceptedAnswers:
      - A check on each call before it runs, and a step limit.
      - Code that can refuse a call and end the loop itself.
      - A step limit, so the model isn't the only way to stop.
    hints:
      - Who decides whether another pass happens?
      - What checks a tool call before it runs?
    tooVagueExamples:
      - Better design.
      - More structure.
    incorrectExamples:
      - A smarter model that picks tools better.
      - A longer system prompt listing the rules.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Agent Loops

---
## Content

An agent needs code around the model that sends it the request, runs the tools it asks for, and sends back the results. That code is called the agent loop.

**Your code owns the loop, so it decides which tool calls run and when the loop ends.**

Here it is in pseudocode:

```plain-text
messages = [system prompt, request]
loop:
    reply = call_model(messages, tools)
    if reply is a final answer:
        return reply
    result = run_tool(reply.tool_call)
    messages.append(reply.tool_call, result)
```

Each reply is either a final answer, which ends the loop, or a tool call. The model keeps nothing between calls, so every pass resends the whole `messages` list with each new result added.

`run_tool` is your code, so it can check a call before running it.

Here's a refusal for someone else's booking:

```plain-text
change_booking(employee="e-2210")
  -> refused: not the requester's booking
```

The refusal goes into `messages` like any other result. The model reads it on the next pass, and the booking never changes.

> ‼️ A common mistake is letting only the model end the loop. An agent that keeps hunting for a cheaper flight runs up costs, so add your own exits, like a step limit.

---
## Practice

Your teammate's agent runs every tool call the model makes, unchecked, until the model stops. What's missing?

???

- A check on each call before it runs, and a step limit.

---
## Revision

In an agent loop, each model reply is either a tool call or a ???.

- final answer
- system prompt
- user message
