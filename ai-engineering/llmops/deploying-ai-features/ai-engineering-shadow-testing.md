---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Shadow output was never sent, so you can read the new version's logged credit offers and check each against the credit rule before any customer sees it.
    requiredConcepts:
      - Looks into v8's extra credit offers, such as reading the logged offers, checking them against the credit rule, or finding out why they increased.
    acceptedAnswers:
      - Read v8's logged credit offers against the credit rule.
      - Look at the chats where v8 offered credits and check they were deserved.
      - Inspect v8's logged issue_credit calls for wrong credits.
      - Read why v8 has an increase.
      - Why the credits increased.
    hints:
      - Did any of v8's credits reach a customer?
      - What did v8 log instead of running?
    tooVagueExamples:
      - Look into it.
      - Check the numbers.
    incorrectExamples:
      - Promote v8, since its graded score is higher.
      - Nothing, since no credits were actually paid.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A shadow candidate must not affect users or trigger side effects; writing to live data breaks that.
    requiredConcepts:
      - No, because tagging live emails changes real state (a side effect).
    acceptedAnswers:
      - No, writing tags to live emails affects production.
      - Not anymore; its output now reaches real inboxes.
      - No, a shadow candidate can't call tools that change things.
    hints:
      - Does the tag change anything outside the candidate?
      - Could a person or inbox rule see it?
    tooVagueExamples:
      - Maybe.
      - It depends.
    incorrectExamples:
      - Yes, as long as the current model still picks the label.
      - Yes, because tagging is low risk.

---

# Shadow Testing

---
## Content

Before real customers see a new version, you can run it on their traffic in the background. Its output is logged and compared with the current version's, but never shown. That's called shadow testing.

For a week, your food-delivery app's support chat runs each conversation through a new prompt, v8, in the background. Customers see only the live prompt's replies.

**A shadow must have no effect on the real world, so v8's tool calls are logged and never run.** A shadow that issued real credits would reach customers after all.

Here's a graded sample of both versions' replies:

| Measure | v7 (live) | v8 (shadow) |
|---|---|---|
| Graded correct | 91% | 94% |
| Offers a credit | 6% | 9% |

v8 scores higher but offers more credits.

None of those offers reached anyone, so you can read them:

```plain-text
chat 48213, v8 (shadow, not sent)
  customer:  "My order is 12 minutes late."
  v8 reply:  "Sorry about the wait! I've added a $5 credit to your account."
  tool call: issue_credit($5.00), logged, not run
```

Credits are for orders over 30 minutes late, so this offer is a mistake no customer saw.

> 💡 When a shadow's numbers differ, read the logged outputs behind them and check each one against your rules.

---
## Practice

In a shadow test, new prompt v8 offers credits in 9% of chats; live v7 offers them in 6%. What do you check next?

???

- v8's logged credit offers, checked against the credit rule.

---
## Revision

Your shadow email-sorting model also tags each live email with its chosen label. Is it still a shadow test?

???

- No; tagging live emails is a side effect on real state.
