---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Treat listed gaps as leads to verify.
    requiredConcepts:
      - Verify each case.
    acceptedAnswers:
      - Check each against the actual code and requirements.
      - Investigate them one by one.
      - Treat them as leads and confirm each.
    hints:
      - Are they confirmed bugs?
      - Is the list complete?
    tooVagueExamples:
      - Consider them.
      - Look into it.
    incorrectExamples:
      - Treat all four as confirmed defects.
      - Assume the list is complete.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Asking about omissions produces leads to check.
    requiredConcepts:
      - It gives specific cases to investigate.
    acceptedAnswers:
      - You get concrete gaps to go check.
      - It points to cases worth investigating.
      - It turns hidden gaps into a checklist.
    hints:
      - What do you get back?
      - Does it prove completeness?
    tooVagueExamples:
      - It's thorough.
      - Better answers.
    incorrectExamples:
      - It proves completeness if none are listed.
      - It hands review to the assistant.
---

# Asking What An Answer Left Out

---
## Content

When an assistant hands you code that looks right, its gaps are the hardest part to spot. So ask about them directly:

```plain-text
What inputs, failure cases, or caller assumptions did this leave out?
```

For the `nextBusinessDay` helper, the reply might list:

```plain-text
- string dates like "2026-12-24" instead of Date objects
- invalid dates
- a holiday that falls on a weekend
```

That gives you concrete cases to investigate.

**The list may miss real gaps, and some of what it lists may not apply.** Check each item against the function's callers, tests, and holiday rules, then add the real ones to your tests.

> 💡 Use the list to add to your review checklist. You still review the code yourself.

---
## Practice

An assistant lists four edge cases its solution may have missed. What do you do with that list?

???

- Verify each one against the code, callers, and requirements.

---
## Revision

Why is it useful to ask an assistant what its answer left out?

???

- It surfaces specific cases you can then investigate.
