---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Each prohibition becomes a concrete thing the answer should do.
    requiredConcepts:
      - A concrete length limit instead of 'don't make it long'.
      - Stating the reopening date clearly instead of 'don't be vague'.
    acceptedAnswers:
      - Under 100 words, and give the date we reopen.
      - Keep it to three sentences and name the reopening day.
      - Short, with the exact reopening date and time.
    hints:
      - How short is short, exactly?
      - What should customers know about reopening?
    tooVagueExamples:
      - Make it better.
      - Be clear.
    incorrectExamples:
      - Don't ramble or be unclear.
      - Make it friendly and warm.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Ask what the answer should do instead of what it shouldn't.
    requiredConcepts:
      - Ask what the answer should do instead.
    acceptedAnswers:
      - What do I want it to do instead?
      - What should it do rather than avoid?
      - Instead of this, what should happen?
    hints:
      - What's the opposite of a prohibition?
      - What can AI aim for?
    tooVagueExamples:
      - Why is it wrong?
      - How do I fix it?
    incorrectExamples:
      - Why did the last answer go wrong?
      - Which words made it negative?

---

# From Don't To Do

---
## Content

To turn a prohibition into an instruction, ask: **What should the answer do instead?**

- **Don't use jargon.** Use words a first-week hire would know.
- **Don't make it long.** Under 120 words.
- **Don't be vague about next steps.** End with the one thing to do next.

Now apply it to a full prompt:

**🚫 Weak**

```plain-text
Write password reset instructions for staff. Don't assume they know our systems, don't make it technical, and don't leave them stuck if it fails.
```

**✅ Stronger**

```plain-text
Write password reset instructions for staff. Name each screen the way it appears on screen, use everyday words, and finish with what to do if the reset email never arrives.
```

Each worry becomes something AI can aim for.

> 💡 Behind every "don't" there is a "do". Write that one.

---
## Practice

Your prompt for a customer holiday-closure email says: "Don't make it long, and don't be vague about when we reopen." Rewrite it as positive instructions.

???

- Keep it under 80 words and state the exact reopening date.

---
## Revision

What single question helps you rewrite any "don't" in a prompt?

???

- What should the answer do instead?
