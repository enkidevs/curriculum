---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Dataset changes break rate comparisons.
    requiredConcepts:
      - The dataset changed, so the rates can't be compared directly.
    acceptedAnswers:
      - Different case sets; the rates measure different things.
      - Can't compare; the case sets differ, so check the old cases separately.
      - Can't compare them without the same case set.
    hints:
      - Is it the same eval as before?
      - What would a fair comparison need?
    tooVagueExamples:
      - Carefully.
      - It's mixed.
      - The 10 new cases must be an issue.
    incorrectExamples:
      - The system regressed on the new cases.
      - The new cases must be mislabeled.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Source, allowed use, redaction, label origin, known gaps, and development versus holdout status travel with the dataset.
    requiredConcepts:
      - "Any two of: source, allowed use, redaction, where the labels came from, known gaps, or dev versus holdout split."
    acceptedAnswers:
      - Where the data came from and whether we may use it.
      - Who labeled it and what populations are missing.
      - Whether it was redacted and kept separate from tuning.
    hints:
      - Are you allowed to copy these tickets?
      - What can this score not speak for?
    tooVagueExamples:
      - Record the details.
      - Add privacy information.
    incorrectExamples:
      - Only the file name and overall score.
      - Nothing; any resolved ticket is fair to use.

---

# Dataset Versioning

---
## Content

Cases get added to an eval set, removed, or relabeled, and the score can move for that reason alone.

**Dataset versioning gives each set of eval cases and labels (the correct answers) a version, with a record of what changed and where each case came from.**

Here's the version 2 record for the refund drafter's eval set:

```plain-text
refund-replies v2 (216 cases), changed from v1 (200)
  added:    20 bundle-order cases, from support tickets
  removed:  4 cases whose policy page was retired
  source:   196 sampled cases, 20 from support tickets
  redacted: customer names, emails, and addresses
  use:      internal evals, under the support data policy
```

These cases are copies of customer messages. The last two lines show that personal details were removed and that the support data policy allows this use.

The live prompt didn't change, but here's its score on both versions:

```plain-text
v1: 176 of 200 (88%)
v2: 180 of 216 (83%)
  kept from v1:      172 of 196 (88%)
  new bundle cases:    8 of 20 (40%)
```

Because the record marks the new cases, you can score them apart. The kept cases held at 88%, and the 5-point drop comes from the harder bundle cases.

---
## Practice

Your eval scores 45 of 50, then 48 of 60 after you add ten cases. How do you read the drop?

???

- The case set changed, so the two rates aren't comparable.

---
## Revision

You copy real support tickets into an eval set. Name two things to record with them.

???

- Where the tickets came from and whether you may use them.
