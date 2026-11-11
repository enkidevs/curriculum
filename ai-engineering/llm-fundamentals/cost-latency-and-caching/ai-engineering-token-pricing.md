---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: $20 a day, from 10 million input tokens at $2 per million.
    requiredConcepts:
      - $20 a day.
    acceptedAnswers:
      - $20.
      - $20 a day, for 10 million tokens.
      - 10,000 x 1,000 = 10M tokens, so $20.
    hints:
      - How many input tokens is that per day?
      - How many millions is that?
    tooVagueExamples:
      - Not much.
      - A few dollars.
    incorrectExamples:
      - $2.
      - $20,000.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Shorten the system prompt, or cache it so repeated input costs less.
    requiredConcepts:
      - A shorter system prompt, or prompt caching.
    acceptedAnswers:
      - Trim the system prompt.
      - Cut instructions the feature doesn't need.
      - Use prompt caching for the repeated part.
    hints:
      - Which part of each request repeats every time?
      - What happens to the bill if that part shrinks?
    tooVagueExamples:
      - Use fewer tokens.
      - Optimize it.
    incorrectExamples:
      - Cap the length of the replies.
      - Raise the temperature.

---

# Token Pricing

---
## Content

You pay for model calls by the token, at two rates. **Input tokens, the text you send, cost less than output tokens, the text the model writes back.**

Say a support assistant drafts 20,000 replies a day. Each request sends about 2,000 input tokens and gets back about 300 output tokens. At illustrative prices of $1 per million input tokens and $4 per million output tokens, one day costs:

| Part | Tokens | Cost |
|---|---|---|
| Input | 40 million | $40 |
| Output | 6 million | $24 |
| Total | 46 million | $64 |

Output is about an eighth of the tokens but more than a third of the bill, because each output token costs four times as much.

You can cut both:

- **Input:** shorten the system prompt or the help articles you send
- **Output:** ask for shorter replies in your instructions

> ‼️ Lowering the max-token limit also cuts output, but a reply that hits it stops mid-sentence.

---
## Practice

A feature makes 10,000 calls a day, each with 1,000 input tokens, at $2 per million. Daily input cost?

???

- $20 a day.

---
## Revision

Every call sends the same 3,000-token system prompt. Name one way to cut that input cost.

???

- Shorten the system prompt, or cache it.
