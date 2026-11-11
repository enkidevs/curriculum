---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Fix the authority gap outside the model; using the customer record, regression cases, a mismatch alert, and owned verification are strong extras.
    requiredConcepts:
      - Take the plan-tier choice away from the model so code or the customer record sets it.
    acceptedAnswers:
      - Pass the tier from the customer record, not the model.
      - Make code set the plan tier.
      - Remove the model's power to pick the tier.
    hints:
      - Should the model be choosing the tier at all?
      - Where does the true tier live?
    tooVagueExamples:
      - Improve the prompt.
      - Monitor more.
    incorrectExamples:
      - Close it once one replay quotes correctly.
      - Blocklist the exact wrong quote.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Incident Follow-Up

---
## Content

**Incident follow-up is the work after the fix that stops the same failure from happening again, or catches it quickly if it does.**

After the carrier's support assistant quoted a draft roaming price, here's the follow-up list:

```plain-text
1. add the 12 saved chats to the eval set
2. skip articles marked draft in the index build
3. online eval: check quoted prices against the billing system's price list
4. prompt: "quote only prices from published articles"
```

Each of the first three closes a different gap:

- **Item 1** adds the incident to the eval set, so every release is tested against it.
- **Item 2** removes the cause in code.
- **Item 3** catches a repeat in live traffic between releases, by grading a sample of live replies.

Item 4 is usually the first idea and, on its own, the weakest.

Here it is tested alone on the 12 saved chats, with the draft still indexed:

```plain-text
prompt rule only, 12 chats x 5 runs
  quotes $10:  51 of 60
  quotes $12:   9 of 60
```

The rule asks for published prices, but nothing enforces it, so the draft price still comes through.

> 💡 Fix the cause in code or data, where it's enforced. A prompt rule can back that up, but it can't stand alone.

---
## Practice

Your sales assistant lets the model pick a customer's plan tier and misquotes prices. What deeper fix stops this?

???

- Take the tier from the customer record in code.

---
## Revision

Once an incident is fixed, a repeat in live traffic between releases is caught by ???.

- online evals
- more eval cases
- regression gates
- prompt rules
