---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Providers bill per token, and words map unevenly to tokens.
    requiredConcepts:
      - Pricing is per token, or words don't map one-to-one to tokens.
    acceptedAnswers:
      - Because providers charge per token.
      - Words split into a varying number of tokens, so word counts mislead.
      - Billing is per input and output token.
    hints:
      - What unit does the provider's bill use?
      - Is one word always one token?
    tooVagueExamples:
      - Tokens are more accurate.
      - It's the standard.
    incorrectExamples:
      - Because one word is always one token.
      - Because providers bill per request.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Tokens

---
## Content

A token is the unit of text a model reads and writes: usually a short word, part of a longer word, or a punctuation mark.

Here's how one sentence might be split. Each model family splits text a little differently, so this is only an example:

```plain-text
Ship SKU-20931-QX today.
Ship | SK | U | - | 209 | 31 | - | Q | X | today | .
```

Common words like "Ship" are one token each, but the product code breaks into many small pieces. So three words became eleven tokens.

**That matters because model APIs measure everything in tokens:**

- **Price.** You pay per input token and per output token.
- **Limits.** The maximum size of a request is a token count.
- **Reply length.** You cap how long a reply can be in tokens.

> 💡 To estimate what a feature will cost, count tokens with your provider's token counter, especially for text full of IDs or code.

---
## Practice

Why do engineers estimate an AI feature's cost in tokens rather than words?

???

- Providers bill per token, and words split into varying numbers of tokens.

---
## Revision

Compared with plain English, text full of product IDs like "XK-4471-B" usually needs ??? tokens per word.

- more
- fewer
- the same number of
