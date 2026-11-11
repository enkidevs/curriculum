---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A rollback rule needs a measurable trigger, such as a share of chats with credits or a cap on any single credit, so nobody has to judge it mid-rollout.
    requiredConcepts:
      - It's too vague to act on, so it needs a measurable threshold, such as a percentage of chats or a dollar cap.
    acceptedAnswers:
      - Too vague; say credits in over 10% of chats.
      - It has no number, so nobody knows when it fires.
      - Make it measurable, like any single credit above $30.
    hints:
      - Would two people agree on when credits look too high?
      - What number would make the call automatic?
    tooVagueExamples:
      - Make it better.
      - Change the wording.
    incorrectExamples:
      - Nothing; the team can judge on the day.
      - Credits shouldn't trigger a rollback at all.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Easy chats say nothing about the harder chats you'll promote to.
    requiredConcepts:
      - Results from easy chats may not hold for harder ones.
    acceptedAnswers:
      - It says nothing about harder chats like missing items.
      - Hard chats never got tested before promotion.
      - Easy chats can pass while hard ones fail.
    hints:
      - Which chats will a wider rollout include?
      - Would easy chats show the credit mistakes?
    tooVagueExamples:
      - It's less useful.
      - A weaker test.
    incorrectExamples:
      - A slower rollout than planned.
      - A slice too small to measure.

---

# Canary Rollouts

---
## Content

A shadow test can't show how customers react to a new version. For that, you release it to a small share of real users first, which is called a canary rollout.

**The rules for widening it or rolling it back are numbers agreed before it starts, so nobody has to judge them mid-rollout.**

Say your food-delivery app's support chat has a new prompt, v9, ready for real customers. Here's the plan:

```plain-text
canary: support prompt v9
  exposure:  5% of chats, picked at random, for 3 days
  promote:   to 50% of chats, if resolution rate is no more than 1 point below v7
  roll back: credits in over 10% of chats, or any single credit above $30
```

Resolution rate is the share of chats solved without support staff. Picking chats at random means the 5% includes the hard ones, like missing items and very late orders.

Here's the readout at the end of day 3:

```plain-text
canary result: support prompt v9, day 3
  resolution:       75% (v7: 72%)   pass
  chats w/ credit:  8%              under 10%
  largest credit:   $25             under $30
  decision:         promote to 50%
```

Every line is checked against a number set in advance, so promoting v9 took no debate. Credits in 12% of chats would have triggered the rollback just as quickly.

---
## Practice

Your support bot's canary plan says "roll back if credits look too high." What's wrong with that rule?

???

- It needs a measurable trigger, like credits in over 10% of chats.

---
## Revision

Your canary runs only on simple order-status chats. Why is that a weak basis for promoting?

???

- It shows nothing about hard chats, like missing items.
