---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The timestamp changes on every request, so the start of the prompt never matches a cached one.
    requiredConcepts:
      - The changing timestamp comes first, so the prefix differs on every request.
    acceptedAnswers:
      - The timestamp changes each time, so the prefix never matches.
      - Every request starts with different text.
      - Caching needs an identical start, and the timestamp breaks it.
    hints:
      - What does caching need two requests to share?
      - Which part changes on every request?
    tooVagueExamples:
      - The prompt is wrong.
      - Caching is unreliable.
    incorrectExamples:
      - The system prompt is too long to cache.
      - Caching only works at temperature 0.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Prompt Caching

---
## Content

Many requests start with the same text, like your system prompt and tool definitions. **With prompt caching, the provider reuses the work it already did on that shared start, called the prefix, so the request costs less and the reply starts sooner.**

The prefix has to match exactly. Once one token differs, nothing after it can be reused, because the model's work on each token depends on all the tokens before it.

Here are two layouts for a support assistant's prompt:

**🚫 Changing text first**

```plain-text
1. Today's date and the customer's name
2. System prompt (2,500 tokens)
3. Tool definitions (1,200 tokens)
4. The customer's message
```

**✅ Stable text first**

```plain-text
1. System prompt (2,500 tokens)
2. Tool definitions (1,200 tokens)
3. Today's date and the customer's name
4. The customer's message
```

Here's what the provider reports for a second request with each layout:

```plain-text
Changing text first   input: 3,800   cached: 0
Stable text first     input: 3,800   cached: 3,700
```

In the first layout, line 1 changes every time, so nothing is cached. In the second, the first 3,700 tokens match, and only the last 100 are processed at full price.

> 💡 Put the parts of your prompt that never change first, and the parts that change on every request last.

---
## Practice

Your prompt starts with a timestamp, then a long system prompt. Why does caching barely help?

???

- The timestamp changes each time, so the prefix never matches.

---
## Revision

To get the most from prompt caching, put the ??? parts of a prompt first.

- stable
- newest
- shortest
- most important
