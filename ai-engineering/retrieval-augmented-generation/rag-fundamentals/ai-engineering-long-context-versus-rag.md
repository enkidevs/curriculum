---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Put the whole document in the prompt, since it fits easily, light traffic keeps the daily cost small, and you skip building a search index.
    requiredConcepts:
      - The whole document in the prompt, because it's small, because traffic is light, or because it saves building an index.
    acceptedAnswers:
      - The whole doc. It fits and 50 questions a day is cheap.
      - Send the full document; there's no need for an index.
      - Whole doc in the prompt, since it's small and traffic is low.
    hints:
      - How does a 20-page doc compare with the 30,000-token guide?
      - What does building an index cost you?
    tooVagueExamples:
      - Whichever is cheaper.
      - It depends.
    incorrectExamples:
      - RAG, because it's always cheaper per question.
      - RAG, since long prompts always fail.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Long Context Versus RAG

---
## Content

Many models can take hundreds of thousands of tokens in one prompt, so a small set of docs can fit in whole.

**Sending the whole set is called long context. RAG sends only the passages that match the question.**

For a docs bot answering from a 30,000-token admin guide, at an illustrative $2 per million input tokens, each question costs:

| Approach | Tokens | Cost |
|---|---|---|
| Whole guide | 30,000 | $0.06 |
| RAG, top 5 | 2,500 | $0.005 |

The whole guide is also slower, because the model reads every input token before it replies.

Prompt caching closes most of that gap while the guide stays cached. A bot with 20 questions a day on a 5-minute cache pays full price almost every time, but that's still only $1.20 a day.

The whole guide also has an advantage: it always contains the answer, while search can miss it. Models do sometimes overlook a detail deep in a long prompt, though.

> 💡 If your docs fit in one prompt and traffic is light, send them whole and skip building a search index. Use RAG when they don't fit.

---
## Practice

Your bot answers from one 20-page policy doc, about 50 questions a day. RAG or the whole doc in the prompt?

???

- The whole doc, since it fits easily and traffic is light.

---
## Revision

Compared with RAG, sending a 30,000-token guide with every question raises cost and ???.

- latency
- reply length
- index size
