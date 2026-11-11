---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Measure whether questions about unsupported versions get declined, and use the result to decide whether rev-92 replaces rev-88.
    requiredConcepts:
      - The objective names one behavior to measure, declining questions about unsupported versions.
      - It names the decision the result informs, whether rev-92 replaces rev-88.
    acceptedAnswers:
      - Does rev-92 decline unsupported-version questions as well as rev-88? That decides the swap.
      - Measure declines on unsupported versions with each index, then decide whether to ship rev-92.
      - Compare both indexes on unsupported-version questions, and replace rev-88 only if declines hold up.
    hints:
      - Which single behavior must hold when the docs don't cover a version?
      - What change is the team deciding whether to release?
    tooVagueExamples:
      - Test whether the new index is better.
      - Evaluate answer quality before launch.
    incorrectExamples:
      - Measure the bot's overall helpfulness on random questions.
      - Release rev-92 if its answers are closer in length to rev-88's.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: B, because it names one behavior to measure and ties it to a choice between two models.
    requiredConcepts:
      - B, because it names one specific behavior, or because it's tied to a decision between the two models.
    acceptedAnswers:
      - B. It names one behavior to check.
      - B, since it decides between the new model and the current one.
      - The due-date one; it's specific and tied to a choice.
    hints:
      - Which one tells you exactly what to grade?
      - Which one ends in a choice you could act on?
    tooVagueExamples:
      - The specific one.
      - B is the best one.
    incorrectExamples:
      - A, since accuracy covers everything that matters.
      - C, since customer trust is the real goal.

---

# Eval Objectives

---
## Content

Say you've rewritten the prompt for a model that drafts replies to refund questions. Asking "Is the new prompt better?" can't tell you which questions to test or what to check in each reply.

**An eval objective is the one question an eval answers, tied to a decision you're about to make.**

Here's a sharper objective:

```plain-text
question: Does prompt v5 promise refunds on ineligible orders less often than v4?
cases:    40 refund questions on orders past the 30-day window or marked final sale
decides:  whether v5 replaces v4
```

The question names one behavior, so it decides both which cases to test and what to check. The cases are orders that aren't eligible, and the check is whether the reply promised a refund anyway.

Here's what the run returned:

```plain-text
prompt v4: promised a refund on 8 of 40
prompt v5: promised a refund on 2 of 40
```

Because the objective named its decision up front, the result answers it. On ineligible orders, v5 is the safer prompt, so it replaces v4.

---
## Practice

Your help bot must decline questions about versions you don't support. You're deciding whether to replace search index rev-88 with rev-92. What should your eval measure, and what will the result help you decide?

???

- Measure declines on unsupported-version questions, to decide if rev-92 replaces rev-88.

---
## Revision

Which of these is a usable eval objective for an invoice extractor, and why?

```plain-text
A: Is the extractor accurate enough?
B: Does the new model misread due dates less often than the current one?
C: Will customers trust the new extractor?
```

???

- B, since it names one behavior and the choice it decides.
