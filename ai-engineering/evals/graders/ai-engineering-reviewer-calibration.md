---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: "A shared split points to an unclear rule: clarify it with anchors before dividing the work, ideally confirming on fresh shared cases."
    requiredConcepts:
      - Clarify the rule for that wording, such as deciding whether "try to" counts or adding anchor examples.
    acceptedAnswers:
      - Decide if "try to" is a promise, write examples, then recheck together.
      - Fix the rubric boundary and add anchors for hedged wording.
      - Agree the rule for hedged replies and test it on a new shared set.
      - Decide whether "we'll try to" counts as a promise.
      - Add examples to the rubric for that wording.
    hints:
      - Is the split about the reviewers or the rule?
      - What would show the fix worked?
    tooVagueExamples:
      - Align the reviewers.
      - Discuss it.
    incorrectExamples:
      - Use the majority label and move on.
      - Retrain the reviewers who disagree.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Without overlap, reviewer differences look like case differences.
    requiredConcepts:
      - Reviewers apply the rule differently without detection.
    acceptedAnswers:
      - Each reviewer applying the rule their own way.
      - Hidden inconsistency between reviewers.
      - Reviewer bias mistaken for case differences.
    hints:
      - How would you see two reviewers disagree?
      - What does overlap let you compare?
    tooVagueExamples:
      - Inconsistency.
      - Bad labels.
    incorrectExamples:
      - Duplicate labels on single cases.
      - Reviewers memorizing anchors.

---

# Reviewer Calibration

---
## Content

When several people split a grading job, one with a stricter reading makes their share of outputs look worse, and nobody can tell from the scores.

**Reviewer calibration means every reviewer first scores the same batch of outputs, called a calibration set, to check they apply the rubric the same way.**

Say three support staff will grade 200 drafted refund replies on one question: does the reply settle the customer's question without a follow-up?

All three score the same 20 first. Here's what they found:

```plain-text
all three agree: 14 replies
split:            6 replies, all saying "you may be eligible"
```

All six splits share one wording, so the cause is the rubric. It never says whether a hedge like that settles the question.

The reviewers add a rule that a "may be eligible" reply with no decision is a no, plus an anchor reply for it. Then they score a fresh shared 20, and split the work once they agree.

---
## Practice

Two reviewers label support replies as promises or not. They keep disagreeing on replies like "we'll try to ship by Friday." What should you do?

???

- Settle whether "try to" counts, add anchor examples, and retest on shared cases.

---
## Revision

Six reviewers each label a different part of the dataset, with no shared calibration set. What's the main risk?

???

- Systematic differences in how reviewers apply the criterion.
