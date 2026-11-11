---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Follow-ups name the regression and protect what worked.
    requiredConcepts:
      - Names the regression and keeps both behaviors.
    acceptedAnswers:
      - Point out weekends broke and ask to keep both.
      - Weekend handling regressed; restore it without losing holidays.
      - Say it dropped weekends and must handle both.
    hints:
      - What broke?
      - What must stay?
    tooVagueExamples:
      - Fix it.
      - Try again.
    incorrectExamples:
      - Ask for a production-ready helper.
      - Accept it; holidays now work.
---

# Follow-Up Prompts

---
## Content

**A first answer gives your next prompt something useful: a specific flaw to correct.**

Say a generated `nextBusinessDay` helper skips weekends but ignores company holidays. Here are two ways to ask again:

**🚫 Restarting**
```plain-text
Write a robust nextBusinessDay function that handles all edge cases.
```

**✅ Following up**
```plain-text
This handles weekends but ignores company holidays. Use
getHolidays(year), which returns an array of ISO date strings. Keep the
weekend logic unchanged.
```

- **The first** throws away what you learned. It asks for "all edge cases" without naming the one that failed, so the weekend logic that worked may not survive.
- **The second** names the problem, gives the missing project fact, and says what must stay the same.

> 💡 Correct what you can see in the answer, and say what should stay unchanged.

---
## Practice

A generated `slugify(title)` turns "Crème brûlée" into `crm-brle`. Your project has `transliterate(text)`. The strongest follow-up asks it to ???.

- call `transliterate` first
- add an accent map
- rewrite from scratch
- cover all edge cases

---
## Revision

An assistant's revised date helper handles holidays but dropped the weekend check that worked. What should your next prompt say?

???

- Name the weekend regression and require both checks to stay.
