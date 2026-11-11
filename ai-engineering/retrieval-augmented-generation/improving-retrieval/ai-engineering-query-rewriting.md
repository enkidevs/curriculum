---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The message alone doesn't say what "that" is, so a rewrite adds the topic from earlier in the chat.
    requiredConcepts:
      - The message depends on earlier turns, or the rewrite adds the missing topic.
    acceptedAnswers:
      - The word "that" means nothing without the earlier messages.
      - The rewrite puts the actual feature into the query.
      - Search can't see the chat, so the topic has to be added.
    hints:
      - What would a search for "does that work on v4 too?" match?
      - Where is the topic of the question?
    tooVagueExamples:
      - To improve it.
      - It's unclear.
    incorrectExamples:
      - To fix the spelling before searching.
      - To translate it into keywords for BM25.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Usually not, since there are no earlier turns to resolve and each rewrite adds a model call.
    requiredConcepts:
      - Usually not, because there's no chat history, or because the rewrite adds cost and latency.
    acceptedAnswers:
      - Probably not. Nothing earlier to pull context from.
      - No, one-line questions already stand alone.
      - Usually not; it's an extra model call for little gain.
    hints:
      - What does a rewrite pull context from?
      - What does each rewrite cost?
    tooVagueExamples:
      - Maybe.
      - It depends.
    incorrectExamples:
      - Yes, every query should be rewritten.
      - Yes, because rewriting removes the need for embeddings.

---

# Query Rewriting

---
## Content

In a chat, follow-up questions often lean on earlier messages. Here's a chat with a docs bot:

```plain-text
User: How do I export a dashboard as a PDF?
Bot: Open the dashboard and choose Export > PDF [1]. The same menu has a CSV option [1].
User: what about the other one?
```

Searched on its own, the last message finds unrelated pages with low scores:

```plain-text
0.42  Switching to another workspace
0.39  Comparing two dashboards
```

The words that matter are in earlier messages.

**Query rewriting fixes this: before searching, your app asks a model to turn the latest message into a query that makes sense on its own.**

The instruction can be as simple as this:

```plain-text
Rewrite the user's last message as a standalone
search query. Use the conversation for context.
Return only the query.
```

For this chat, it returns:

```plain-text
export a dashboard as CSV
```

That query names both the task and the format, so search can find the CSV export page.

> ‼️ Each rewrite is one more model call, which adds cost and wait time. A plain search box, where each query already stands alone, can usually skip it.

---
## Practice

In a chat, a customer follows up with "does that work on v4 too?" Why rewrite it before searching?

???

- "That" means nothing alone; the rewrite adds the topic from the chat.

---
## Revision

Your docs site has a one-line search box with no chat history. Do you need query rewriting?

???

- Usually not, since there are no earlier turns to resolve.
