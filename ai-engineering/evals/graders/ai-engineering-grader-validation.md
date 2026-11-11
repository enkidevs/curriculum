---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: High overall agreement doesn't validate a grader on a weak slice; it must be fixed and checked again on that slice before it gates those answers.
    requiredConcepts:
      - No, because its agreement on the legal-advice slice is too low to trust there.
    acceptedAnswers:
      - Not yet; 9 of 16 is too weak for that slice.
      - No, fix it and recheck it on legal questions first.
      - No; the overall number hides how badly it does on legal advice.
    hints:
      - Where does this release decision depend on the grader?
      - What does agreement look like on that slice alone?
    tooVagueExamples:
      - Probably not.
      - It depends on the grader.
    incorrectExamples:
      - Yes, 93% overall agreement is high enough.
      - Yes, if a human spot-checks a few of its verdicts.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A changed grader is a new instrument needing revalidation.
    requiredConcepts:
      - Revalidation against human labels.
    acceptedAnswers:
      - Revalidate it on the labeled set.
      - Recheck agreement with human labels.
      - Test it again against trusted labels.
    hints:
      - Is it still the same instrument?
      - What did the old validation measure?
    tooVagueExamples:
      - Test it.
      - Review it.
    incorrectExamples:
      - Nothing; stricter means still valid.
      - Run it twice and compare verdicts.

---

# Grader Validation

---
## Content

Grader validation means comparing a grader's scores with trusted human labels on the same cases, before you rely on it.

Here, an LLM judge and support staff graded the same 120 refund replies:

```plain-text
judge vs. support staff, 120 replies
  agree overall:  108 of 120 (90%)
  in English:     101 of 104
  not in English:   7 of 16
```

**A high overall agreement can hide a slice where the grader is often wrong.**

On questions in other languages, the judge agrees with staff on only 7 of 16, so its scores there can't decide a release yet.

Here's one disagreement:

```plain-text
reply: Sí, puede devolverlo. Nuestra política: "Items may be returned within 30 days of delivery."
staff: PASS
judge: FAIL. The reply switches to English.
```

The reply starts in Spanish ("Yes, you can return it. Our policy:") and then quotes the policy in English, the only language it exists in.

The rubric never says that's allowed.

The fix is a rubric line allowing a reply in the customer's language to quote the English policy, then a recheck against staff labels on that slice.

> ‼️ A common mistake is trusting old validation after changing the judge. Any change to its prompt or model makes it a new grader that needs validating again.

---
## Practice

Your grader agrees with human labels on 186 of 200 cases, and 9 of 16 on legal advice. Should it gate legal answers?

???

- No. Find why it misses there, then revalidate it on that slice.

---
## Revision

You edit an LLM judge's prompt to fix a repeated miss. What must happen before it gates the next release?

???

- It must be checked against human labels again.
