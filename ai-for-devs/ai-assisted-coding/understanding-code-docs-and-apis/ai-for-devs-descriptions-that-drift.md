---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Code and tests outrank stale descriptions.
    requiredConcepts:
      - The README is stale.
    acceptedAnswers:
      - The docs drifted from the code.
      - The README no longer matches what the API does.
      - Code and tests show the README is wrong now.
    hints:
      - Which sources agree?
      - Which one is current?
    tooVagueExamples:
      - Something's inconsistent.
      - Check it.
    incorrectExamples:
      - The code has a sorting bug.
      - Both are equally current.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A description is only trustworthy once it matches the current code, tests, or runtime.
    requiredConcepts:
      - Check it against the current code, tests, or runtime behavior.
    acceptedAnswers:
      - Read the function and see what it actually does now.
      - Run the tests to confirm the retry count.
      - Whether the implementation still matches the comment.
    hints:
      - Could the comment be older than the code?
      - What shows what the function does today?
    tooVagueExamples:
      - Check it.
      - Make sure it's right.
    incorrectExamples:
      - Nothing; the docstring describes the function.
      - Ask the assistant if it's sure.
---

# Description Drift

---
## Content

Comments and docs go stale when code changes without them. An assistant explaining the code tends to repeat them, because they read more clearly than the code.

`buildTarget` has this comment:

```javascript
/**
 * Builds the redirect target, preserving every query parameter
 * from the incoming request.
 */
```

But the current function removes `utm_` parameters. For `/r/AB12?utm_source=news&utm_medium=email&ref=partner`, only `ref=partner` reaches the target.

History shows the filter was added later, and nobody updated the comment.

**Check a comment or doc against the current code, tests, and runtime before you rely on it.** That goes for READMEs and diagrams too.

---
## Practice

A README says the search API returns newest first; current code and tests sort oldest first. What does that tell you?

???

- The README is out of date.

---
## Revision

An assistant quotes the `sendInvite` docstring: "Retries up to three times." What do you check before relying on it?

???

- Whether the current code and tests still retry three times.
