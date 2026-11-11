---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Only the few cheapest flights, or a short summary, with the full list stored outside the context if it's needed later.
    requiredConcepts:
      - Only the cheapest few flights, or a summary, instead of all 40.
    acceptedAnswers:
      - Just the five cheapest flights.
      - The cheapest few, with the full list saved in the database.
      - A short summary of the best options.
    hints:
      - How many of the 40 does the agent ever use?
      - What does each extra flight cost on every later pass?
    tooVagueExamples:
      - Less data.
      - The useful part.
    incorrectExamples:
      - All 40, so the agent never misses a cheaper fare.
      - Nothing, so the agent searches again when needed.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Every model call resends the whole conversation, including all earlier tool results, so each call carries more tokens than the last.
    requiredConcepts:
      - Each call resends all earlier results, or the model keeps nothing between calls.
    acceptedAnswers:
      - Each call resends every earlier search result.
      - The model keeps nothing, so the whole history goes out every time.
      - Old tool results pile up and get sent again on each pass.
    hints:
      - Does the model remember earlier calls on its own?
      - What gets sent on the sixth pass that wasn't sent on the first?
    tooVagueExamples:
      - It's a longer run.
      - More data.
    incorrectExamples:
      - Later searches return more flights.
      - The model thinks harder as the task goes on.

---

# Context Management

---
## Content

The model keeps nothing between calls, so every pass of an agent loop resends the whole conversation, tool results included.

**So every tool result you keep is paid for again on every later call.**

Say each search a travel-booking agent runs returns 40 flights, about 10,000 tokens. Over one trip, its context grows like this:

```plain-text
start:             1,200 tokens
after 1 search:   11,200 tokens
after 3 searches: 31,200 tokens
after 6 searches: 61,200 tokens
```

The call after the sixth search sends all 61,200 tokens, though the agent only compares the cheapest few flights. A long run can also overflow the context window.

Deciding what stays in the context is called context management. Your code can shrink tool output in three ways:

- **Trim:** return only the five cheapest flights.
- **Summarize:** replace an old search with one line, like "Tuesday: nothing under $400."
- **Store:** save the full list in your database and return an ID to fetch it later.

Trimmed to five flights, that same call sends about 8,700 tokens instead of 61,200.

---
## Practice

Your flight-search tool returns 40 flights, but the agent only needs the cheapest few. What should the tool return?

???

- Only the cheapest few, with the full list stored elsewhere.

---
## Revision

Every search result your agent gets stays in its context. Why does each later model call cost more than the one before?

???

- Each call resends every earlier search result.
