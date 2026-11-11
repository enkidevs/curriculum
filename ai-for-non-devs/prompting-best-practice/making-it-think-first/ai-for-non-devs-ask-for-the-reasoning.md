---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The breakdown gives you more information to inspect so you can identify what went wrong in the final result.
    requiredConcepts:
      - the breakdown helps identify or analyze what went wrong
    acceptedAnswers:
      - It helps you see what went wrong.
      - It gives you more information to analyze why the final result was incorrect.
      - You can identify which part caused the mistake.
      - It shows the intermediate work so you can find where the answer went wrong.
      - It gives you something to inspect beyond the final answer.
    hints:
      - Think about what you can inspect that you could not see in the final answer alone.
      - How could the extra information help when the result is wrong?
    tooVagueExamples:
      - It gives more information.
      - It makes the answer better.
    incorrectExamples:
      - It guarantees the final answer is correct.
      - It prevents AI from making mistakes.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The visible breakdown lets you find and fix the faulty calculation, assumption, or constraint.
    requiredConcepts:
      - Find and fix the step that caused the problem.
    acceptedAnswers:
      - Locate the wrong assumption and correct it.
      - Spot the calculation that broke the rule and fix it.
      - Find where it went wrong in the breakdown and revise that.
    hints:
      - What does the breakdown show?
      - Do you need to start again?
    tooVagueExamples:
      - Fix the schedule.
      - Check it.
    incorrectExamples:
      - Repeat the rule and start over.
      - Ignore the breakdown and judge the result.

---

# Checkable Reasoning

---
## Content

**For a complex task, ask AI for a short, checkable breakdown before the final answer.**

For example:

```plain-text
We need two people on the desk from 7:00 a.m. to 7:00 p.m., six days a week, using four staff on 30-hour contracts.

Before giving the final schedule:
1. Calculate the required hours.
2. State any assumptions.
3. List any constraint the schedule breaks.
```

This is often called **chain-of-thought prompting**[1]: asking AI to show its working before the final answer.

Now you have more than a finished schedule. You have calculations, assumptions, and constraints you can check.

If the schedule breaks the contract hours, you can see where the numbers stop fitting and ask for a focused revision.

> ‼️ A neat breakdown is not proof that the answer is correct. Check important figures and assumptions yourself.

---
## Practice

AI's staff schedule looks wrong, but it also showed its calculations and assumptions. What can you now do that you couldn't before?

???

- See where the numbers stop fitting, instead of guessing.

---
## Revision

AI's staff schedule breaks a rule you set, and you can see its breakdown. What's the fastest next step?

???

- Find the step that caused the break and revise it.

---
## Footnotes

[1:Chain-Of-Thought Prompting]
Prompting AI to present intermediate reasoning or working before its answer. These visible steps can help you audit the result, but they do not necessarily reveal the model's actual internal reasoning.