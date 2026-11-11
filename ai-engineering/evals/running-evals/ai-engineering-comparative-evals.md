---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: When several changes ship in one run, the result can't be credited to any one of them.
    requiredConcepts:
      - Which change caused the result.
    acceptedAnswers:
      - Which component made the difference.
      - What drove the improvement.
      - Whether the model, prompt, or reranker helped.
    hints:
      - How many things changed?
      - Could one change hurt while another helped?
    tooVagueExamples:
      - Much.
      - Whether it's good.
    incorrectExamples:
      - Whether the bundle beat the baseline.
      - How many cases failed.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Controlled variants that undo one change each, with everything else fixed, measure each component's effect within a bundle.
    requiredConcepts:
      - Run variants that change or reverse one component at a time, holding the rest fixed.
    acceptedAnswers:
      - Revert the prompt in one run and the model in another.
      - Test each change alone against the bundle.
      - Run the old prompt with the new model, and the reverse.
    hints:
      - What if only one thing differed between two runs?
      - Which change could you undo for a single run?
    tooVagueExamples:
      - Test more.
      - Compare the results.
    incorrectExamples:
      - Rerun the same bundle a few more times.
      - Ask the grader which change helped.

---

# Comparative Evals

---
## Content

When you change two things at once and the score goes up, you can't tell which change helped.

**A comparative eval scores two versions of a system on the same dataset with the same graders, with exactly one thing changed between them.**

Run-to-run noise is the small swing between repeated runs of the same version. Any difference bigger than that comes from the one change.

Here are three eval runs on 200 cases for the refund drafter, each changing one thing from the run before:

| Run | Change | Passed |
|---|---|---|
| 41 | none, the baseline | 176 |
| 42 | prompt v5 | 182 |
| 43 | prompt v5, larger model | 185 |

Run 42 isolates the prompt, worth 6 cases, and run 43 isolates the larger model, worth 3 more.

A single run that changed both would show 9 more cases and no way to tell which change helped, or whether one hurt while the other made up for it.

> 💡 When changes have to ship together, you can still measure each one. Run variants that undo one change at a time, with everything else fixed.

---
## Practice

One run swaps the model, rewrites the prompt, and adds a reranker, a second model that reorders search results, gaining nine cases. What's still unknown?

???

- Which of the three changes produced the gain.

---
## Revision

Your new model and prompt must ship together, and they beat the baseline. How do you learn what each contributed?

???

- Rerun the eval with variants that undo one change at a time.
