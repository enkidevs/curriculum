---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Plain code, because a fixed rule gives one correct answer.
    requiredConcepts:
      - Plain code or a regular function.
      - There is one correct answer from a fixed rule.
    acceptedAnswers:
      - Plain code, since there's one correct answer.
      - Code. It's a fixed formula with one right result.
      - A normal function, because the rule is exact.
    hints:
      - How many correct answers are there?
      - Could you write the rule down?
    tooVagueExamples:
      - Code is better.
      - Whatever is cheaper.
    incorrectExamples:
      - A model, since it can handle any input.
      - A model with a low temperature.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Where Models Fit

---
## Content

Say an expense app picks a category from the note someone typed. Here's a note and the category a model picks for it:

```plain-text
Note: lunch w/ Acme team, renewal chat
Category: Client meals
```

The note never says "meal" or "client", but the model works out that lunch with a customer about a renewal is a client meal.

**A model is a good fit when the input is messy, everyday language or the output needs judgment.**

Plain code is the better choice when a task has one correct answer and a rule that produces it, such as:

- calculating sales tax on an order
- looking up an order by its ID

Code gets these right every time, and it's cheaper and faster than calling a model.

> 💡 If you could write the rule down, use plain code.

---
## Practice

Your checkout must work out shipping cost from package weight and delivery zone. Model or plain code, and why?

???

- Plain code, because a fixed rule gives one correct answer.

---
## Revision

Tagging free-text product reviews by the complaint they describe is a good job for a ???.

- model
- keyword regex
- lookup table
- SQL query
