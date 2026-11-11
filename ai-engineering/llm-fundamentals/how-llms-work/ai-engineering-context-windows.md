---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The reply gets cut off, since only about 400 tokens are left for it.
    requiredConcepts:
      - The reply gets cut off, or only about 400 tokens are left for the reply.
    acceptedAnswers:
      - It stops partway through, after about 400 tokens.
      - It gets cut off when the window fills up.
      - Only 400 tokens are left, so a long answer is cut short.
      - It gets cut off.
      - It is cut off.
    hints:
      - Does the reply share the window with the request?
      - How many tokens are left once the request is in?
    tooVagueExamples:
      - It might fail.
      - It's too long.
    incorrectExamples:
      - Nothing, since the reply has its own separate limit.
      - The model drops the system prompt to make room.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Context Windows

---
## Content

**A model's context window is the most tokens it can handle in one call, counting both everything you send and the reply it writes.**

Here's how a docs chatbot's request might fill a 32,000-token window (illustrative numbers):

| Part of the request | Tokens |
|---|---|
| Instructions | 1,500 |
| Chat history | 18,000 |
| Docs your app found | 12,000 |
| New question | 100 |

That's 31,600 tokens before the model writes anything, which leaves 400 tokens, about 300 words, for the reply.

So if the answer needs more than that, it gets cut off partway through, like this:

```plain-text
...create a new key, update every service that uses
the old one, and then
```

The model had more to say, but your code had already filled the window.

> 💡 Before you send a request, add up its tokens and check that what's left is enough for the longest reply you expect.

---
## Practice

Your request uses 31,600 tokens of a model's 32,000-token context window. What happens to a long reply?

???

- It stops partway through, after about 400 tokens.

---
## Revision

A model's context window has to hold your prompt, any documents you add, and the ???.

- reply
- training data
- past sessions
- model weights
