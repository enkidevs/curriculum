---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A threshold set after seeing the result tends to fit the candidate; set it beforehand from risk and baselines.
    requiredConcepts:
      - The bar was chosen after seeing the result, so it was fit to the candidate.
    acceptedAnswers:
      - They set the bar to match the score.
      - Moving the goalposts to fit the candidate.
      - It should have been set before the run, from risk or a baseline.
    hints:
      - When was the 80% chosen?
      - Would the bar still be 80% if the score were 76%?
    tooVagueExamples:
      - Bias.
      - It's arbitrary.
    incorrectExamples:
      - 80% is too low for any release.
      - Summaries can't be scored with a percentage.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An overall gate hides slice regressions, so it approves a candidate that hurts a smaller group.
    requiredConcepts:
      - It passes the candidate despite the slice drop.
    acceptedAnswers:
      - Lets it ship even though the slice got worse.
      - Passes it and misses the screen-reader regression.
      - Ships it; the slice drop is invisible.
    hints:
      - Does the overall number show the slice?
      - Who depends on the screen-reader path?
    tooVagueExamples:
      - It's fine.
      - Mixed results.
    incorrectExamples:
      - Blocks it for the slice drop.
      - Protects every slice equally.

---

# Release Thresholds

---
## Content

Before you test a change, you agree on the minimum result it needs to ship. A bar set after seeing the score tends to land just under whatever the candidate scored.

**A release threshold is the minimum eval result a change needs to ship, written down before anyone sees the candidate's score.**

Here are the thresholds for a model that drafts refund replies, set at the live prompt's current scores:

```plain-text
thresholds agreed before testing prompt v6
  overall: at least 176 of 200
  final-sale items: at least 18 of 20
  not in English: at least 9 of 16
  replies showing another customer's order: 0
```

Each line protects something:

- **Final-sale items:** a slice where a wrong "yes" costs a refund the store didn't owe.
- **Not in English:** the weakest slice, kept from getting worse while it's being fixed.
- **Other customers' orders:** a single privacy leak blocks a release.

Here's how candidate prompt v6 did:

```plain-text
overall:          186 of 200
final-sale items:  15 of 20
not in English:    10 of 16
leaks:              0
result: blocked on final-sale items
```

v6 passes 10 more cases overall, yet it misses the final-sale bar by 3, so it doesn't ship.

---
## Practice

Your summarizer scores 81%, then your team sets the release bar at 80%. Why is that a weak bar?

???

- It was picked after seeing the score, so it fits the result.

---
## Revision

Your new prompt raises overall passes but drops screen-reader cases from 20 to 15. What does an overall-only threshold do?

???

- Approves the candidate despite the screen-reader regression.
