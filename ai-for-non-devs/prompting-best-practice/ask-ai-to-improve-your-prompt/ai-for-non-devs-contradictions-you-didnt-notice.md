---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Conflicting instructions can produce a compromise that satisfies neither instruction.
    requiredConcepts:
      - AI may produce a compromise that satisfies neither instruction
    acceptedAnswers:
      - It may produce a compromise that satisfies neither instruction.
      - AI has no stated priority between the two directions, so it splits the difference.
      - Friendly and contractual pull against each other, which produces an awkward compromise.
    hints:
      - Compare the effect of friendly and informal with matching contract language.
      - If both instructions cannot be followed fully, what does AI do without a priority?
    tooVagueExamples:
      - The prompt is confusing.
      - AI writes it badly.
    incorrectExamples:
      - AI always follows whichever instruction appears first.
      - AI will stop and ask which tone you meant.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Resolve the conflict yourself instead of letting AI compromise.
    requiredConcepts:
      - You choose which outcome matters and rewrite the conflict.
    acceptedAnswers:
      - Pick which one wins and fix the other.
      - Choose the priority and rewrite the clash.
      - Decide what I want and remove the conflict.
    hints:
      - Who should decide which matters more?
      - What happens if you leave both?
    tooVagueExamples:
      - Fix it.
      - Clarify.
    incorrectExamples:
      - Run it and see which AI prefers.
      - Soften both instructions.

---

# Conflicting Instructions

---
## Content

Contradictions are easy to miss in your own prompt. **Ask AI to look for instructions that pull in different directions.**

```plain-text
Write a client update about the two-week delay. Keep it casual and conversational, but use formal contract language throughout.
```

Casual, conversational wording and formal contract language pull the writing in different directions. Neither has priority.

AI may split the difference and produce a stiff, chatty compromise that satisfies neither instruction.

Ask:

```plain-text
Which instructions conflict, and what choice do I need to make before you rewrite this prompt?
```

AI can identify the clash. You still choose which outcome matters.

> 💡 A prompt can't be both at once. Ask AI to find the clash, then decide which instruction wins.

---
## Practice

What is likely to happen when a prompt asks for friendly, informal language and also contract language?

???

- It may produce a compromise that satisfies neither instruction.

---
## Revision

You notice two instructions in your prompt pulling against each other. What should you do next?

???

- Decide which outcome matters and rewrite the conflicting instruction.
