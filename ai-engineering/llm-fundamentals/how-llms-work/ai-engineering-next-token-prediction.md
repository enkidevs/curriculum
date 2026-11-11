---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The prompt plus all the tokens it has already written in the reply.
    requiredConcepts:
      - The prompt plus the reply it has written so far.
    acceptedAnswers:
      - The prompt and its reply so far.
      - Everything before the next token, including its own earlier tokens.
      - All the text so far, prompt included.
      - The prompt and its reply.
      - The prompt and what it has written.
    hints:
      - Does it plan the whole reply up front?
      - Does it see its own earlier tokens?
    tooVagueExamples:
      - The input.
      - Its data.
    incorrectExamples:
      - Only the last token it wrote.
      - Only the prompt, since the reply is planned up front.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A date is a likely next token there, so the model predicts one even though nothing in the prompt gives the real date.
    requiredConcepts:
      - A date is a likely next token, or the model predicts from patterns instead of knowing the fact.
    acceptedAnswers:
      - A date is a likely continuation, so it writes one.
      - It predicts plausible text from patterns in its training data.
      - It fills in what usually comes next, without the real date.
    hints:
      - What kind of word usually follows "Your renewal date is"?
      - Where would the real date have to come from?
    tooVagueExamples:
      - It made a mistake.
      - AI does that.
    incorrectExamples:
      - It looked the date up in your billing system.
      - It remembered the account from an earlier call.

---

# Next-Token Prediction

---
## Content

**A large language model (LLM) writes by predicting one small piece of text at a time, based on all the text before it.**

These pieces are called tokens, and each one is often a word or part of a word.

Say a support app sends a model this prompt:

```plain-text
Customer: Where is my order #4821?
Assistant:
```

Here's the reply the model builds after "Assistant:", one token per line:

```plain-text
Your
Your order
Your order shipped
Your order shipped on
Your order shipped on Tuesday
```

At every step, the model reads only the prompt and its reply so far. Nothing in that text says whether order #4821 has shipped.

It wrote "shipped on Tuesday" because replies like this often continue that way in the text it learned from, so both details are guesses.

> 💡 When a reply needs real facts, like an order's status, your code has to look them up and put them in the prompt.

---
## Practice

As a model writes a reply, what text does it read before picking each next token?

???

- The prompt plus everything it has written so far.

---
## Revision

Your prompt asks for a customer's renewal date but includes no account data. Why might the reply still give one?

???

- A date is a likely next token there, so the model predicts one.
