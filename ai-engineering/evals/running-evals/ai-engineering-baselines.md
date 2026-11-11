---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Improvement claims need a same-conditions baseline.
    requiredConcepts:
      - A baseline (the current system) scored on the same cases and graders.
    acceptedAnswers:
      - The current setup's score on the same 160 cases.
      - A baseline run with the same dataset and graders.
      - Compare it with today's system under identical conditions.
    hints:
      - Improvement over what?
      - Were conditions equal?
    tooVagueExamples:
      - Context.
      - More tests.
    incorrectExamples:
      - A larger, later eval set.
      - A target score picked after seeing 141.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The baseline has to be rerun with the new graders, so both scores come from the same measurement.
    requiredConcepts:
      - Rerun the baseline with the new graders, or rescore it under the same conditions as the candidate.
    acceptedAnswers:
      - Rerun the baseline with the new graders.
      - Rescore the current system using the new graders first.
      - Measure the baseline again so both use the same graders.
    hints:
      - Were both scores produced the same way?
      - Which of the two numbers is out of date?
    tooVagueExamples:
      - Check it.
      - Update things.
    incorrectExamples:
      - Compare them as they are, since the cases didn't change.
      - Subtract the old graders' error rate from the candidate's score.

---

# Baselines

---
## Content

To call a change an improvement, you compare it with the current system's score. That score only counts if it was measured the same way.

**A baseline is the current system's score on your eval, measured under the same conditions as the change you're testing.**

Say you've written prompt v5 for a model that drafts refund replies. Last month, the live prompt, v4, scored 184 of 200. Since then, the citation grader got stricter: a reply now has to name a policy section.

Here are three runs on the same 200 cases:

```plain-text
prompt v4, last month, old graders:       184
prompt v5, today, current graders:        182
prompt v4, rerun today, current graders:  176
```

Against last month's 184, v5 looks 2 cases worse. The rerun shows the stricter grader costs v4 8 cases, so on equal terms, v5 is 6 cases better.

> ‼️ A common mistake is comparing with an old baseline. Rerun it whenever the dataset version, graders, or model settings change, or a real gain can look like a loss, as it did here.

---
## Practice

Your new retrieval setup passes 141 of 160 eval cases. What does calling that an improvement need first?

???

- The current system's score on the same cases and graders.

---
## Revision

You changed graders after recording your baseline. What has to happen before you compare a candidate with it?

???

- Rerun the baseline with the new graders.
