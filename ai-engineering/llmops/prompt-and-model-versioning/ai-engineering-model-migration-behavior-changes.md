---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The model decides how to call a tool from its description, so a line saying one call returns the full bill stops the repeat call.
    requiredConcepts:
      - Tell the model one call returns everything it needs, such as in the tool's description.
    acceptedAnswers:
      - In the tool description, say it returns the full bill in one call.
      - Update get_bill's description so the model knows one call is enough.
      - Tell the model in the tool's description that a second call isn't needed.
    hints:
      - What does the model read to decide how to use a tool?
      - What would tell it one call is enough?
    tooVagueExamples:
      - Fix the tool.
      - Make it smarter.
    incorrectExamples:
      - Remove the get_bill tool.
      - Nothing, since both calls return the same bill.

---

# Model Migration Behavior Changes

---
## Content

**A replacement model can score the same as the old one and still behave differently, like calling tools another way or writing longer replies.**

The support assistant's replacement model matched the old one's scores on 300 eval cases. The same run also logged this:

```plain-text
replacement vs current model, 300 eval cases
  tools:  calls get_bill twice per question
  cost:   about 30% more output tokens per reply
```

Each change has its own fix:

- **Repeat tool calls:** the model decides how to use a tool from its description, and `get_bill`'s never said one call was enough. Adding "returns the full bill in one call" stopped the repeat call.
- **Longer replies:** you pay for output tokens, so 30% more of them raised the bill. A word limit in the prompt brought replies back near their old length.

> 💡 Run a fix like the word limit through the evals before shipping it, like any prompt edit. A length cap can cut a step a customer needs.

---
## Practice

A replacement model passes your evals but writes 40% more output tokens per reply. That mainly raises your ???.

- model bill
- error rate
- tool calls
- eval score

---
## Revision

After a model migration, your support assistant calls its `get_bill` tool twice per question, though one call returns the whole bill. Where can you tell the model that one call is enough?

???

- In the tool's description, saying one call returns the full bill.
