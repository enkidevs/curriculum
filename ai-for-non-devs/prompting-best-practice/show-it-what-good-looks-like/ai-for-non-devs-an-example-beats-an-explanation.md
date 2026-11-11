---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Showing a real example conveys style better than describing it.
    requiredConcepts:
      - Give AI an existing listing to match.
    acceptedAnswers:
      - Paste one of ours and say match this.
      - Show it a real listing as the model.
      - Include an example listing to copy the style of.
    hints:
      - Could you show instead of describe?
      - What captures unwritten rules?
    tooVagueExamples:
      - Explain the style.
      - Be specific.
    incorrectExamples:
      - Describe the house style in detail.
      - Ask for several and pick one.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A real example contains style choices that people follow without consciously listing them.
    requiredConcepts:
      - Unnoticed style choices are easy to leave out of a description.
    acceptedAnswers:
      - You leave out the rules you follow without noticing them.
      - A description can miss choices such as rhythm, structure, and formality that a real example shows automatically.
      - You may not notice every style choice you follow, so you leave some of them out when explaining the pattern.
    hints:
      - Can you consciously list every rule behind a listing that already feels right?
      - Think about the rhythm, sentence count, and audience placement carried by the example.
    tooVagueExamples:
      - Descriptions are less accurate.
    incorrectExamples:
      - The assistant cannot understand words used to describe style.
      - Style descriptions fail only because they contain several instructions.

---

# Examples In Prompts

---
## Content

You want six new course listings to match the ones you already publish.

You could describe every rule: one sentence, starts with a verb, says who it's for, no exclamation marks, mentions the time commitment.

Or show one that already works:

```plain-text
Write six course listings that match this example in length, structure, and voice:

"Learn to read a balance sheet without a finance background. For managers who sign off budgets. Four sessions, one hour each."
```

The example shows sentence count, rhythm, audience placement, and formality.

**Those choices are easy to follow without noticing and easy to omit when you explain the style.**

> 💡 A strong example turns unwritten preferences into something AI can copy.

---
## Practice

You want new course listings to match the ones you already publish. What is a strong way to get that?

???

- Paste an existing listing and ask AI to match it.

---
## Revision

Why does describing a writing style often capture less than showing a strong example?

???

- You leave out the rules you follow without noticing them.
