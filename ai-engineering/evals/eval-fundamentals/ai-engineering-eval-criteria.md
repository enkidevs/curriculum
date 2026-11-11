---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A vague criterion becomes scorable when split into separate observable checks; pass and fail examples for each make it stronger.
    requiredConcepts:
      - Split the vague criterion into separate, specific, observable checks. Pass and fail examples are a strong extra, not required.
    acceptedAnswers:
      - Break it into checks like decisions captured and owners named.
      - Separate checks tied to evidence in the meeting, each pass or fail.
      - Several specific criteria instead of one vague one.
    hints:
      - What separate judgments hide in "good and complete"?
      - What would a reviewer look for to say pass?
    tooVagueExamples:
      - Make it clearer.
      - Be more specific.
    incorrectExamples:
      - Add a five-point quality scale.
      - Average the two reviewers' scores.
      - Compare both reviewers' scores side by side.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A failing example for "cites the policy" refers to the policy vaguely or not at all, with no section someone could look up.
    requiredConcepts:
      - A reply that names no specific policy section.
    acceptedAnswers:
      - You can return it under our policy.
      - Yes, as our terms allow, you can send it back.
      - Sure, returns are fine for this order.
    hints:
      - What would someone need in order to look the rule up?
      - Does your reply name a specific section?
    tooVagueExamples:
      - A bad reply.
      - One with no citation.
    incorrectExamples:
      - Returns are open for 30 days (Returns, section 1).
      - Per Returns, section 1, you can send it back.

---

# Eval Criteria

---
## Content

"A good reply" means something different to each person scoring it. So an eval splits it into criteria, each one checkable property of a good output.

**Each criterion gets a passing and a failing example, so everyone scores it the same way.**

Say a store takes returns within 30 days of delivery, and a model drafts its refund replies. Here are two criteria:

```plain-text
correct decision
  pass: delivered 12 days ago -> "You can return it."
  fail: delivered 45 days ago -> "You can return it."
cites the policy
  pass: "...within 30 days of delivery (Returns, section 1)."
  fail: "...as our policy allows."
```

- **Correct decision:** only the delivery date changes between the two, so the grader (the code, model, or person doing the scoring) has to check it against the 30-day window.
- **Cites the policy:** the passing reply names a section anyone can look up, and the failing one doesn't.

---
## Practice

Reviewers score the meeting-summary criterion "good and complete" differently. How do you make it scorable?

???

- Split it into separate observable checks, each pass or fail.

---
## Revision

Your eval criterion is "cites the policy." Write a short refund reply that fails it.

???

- Yes, you can return it, as our policy allows.
