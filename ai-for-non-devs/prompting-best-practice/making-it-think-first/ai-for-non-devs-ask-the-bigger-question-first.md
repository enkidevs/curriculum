---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The general answer gives you principles to judge the specific draft against.
    requiredConcepts:
      - Principles or a checklist to judge or guide the specific plan.
    acceptedAnswers:
      - A standard to judge the specific plan against.
      - The key principles, so I can spot what the draft misses.
      - A checklist for the draft, like one owner per stage.
    hints:
      - What's in an answer about escalation plans in general?
      - How could that help when AI drafts yours?
    tooVagueExamples:
      - More information.
      - A better answer.
    incorrectExamples:
      - It produces the specific escalation path before you ask for it.
      - It confirms that the assistant understood the wording of the question.

---

# The Bigger Question First

---
## Content

**Before asking for a specific solution, ask what a good solution requires.** This is **step-back prompting**[1].

Suppose you need an escalation path for out-of-hours outages. Start with:

```plain-text
What makes an out-of-hours escalation path work in practice, and where do they usually fall apart?
```

The response might suggest one owner per stage, a fixed wait before escalating, and a clear decision-maker.

Use those principles as a checklist when AI drafts your specific path. They do not guarantee a good result, but they give you a standard for spotting what the draft missed.

> 💡 A standard first, then the draft. Otherwise you have nothing to judge the draft against.

---
## Practice

You ask AI what makes any escalation plan work before asking for yours. What does the first answer give you?

???

- A checklist of what a good plan needs, to check the draft against.

---
## Footnotes

[1:Step-Back Prompting]
Asking for the general principles behind a problem before asking for a specific answer.
