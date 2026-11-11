---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: AI copied a visible feature you didn't mean to teach, because the difference that mattered was never named.
    requiredConcepts:
      - AI copied the wrong visible difference between the examples.
    acceptedAnswers:
      - AI copied the wrong difference between the examples.
      - AI copied brevity instead of removing the hint about another gift because the prompt never named the intended contrast.
      - Because the intended difference was not named, the assistant focused on another visible feature of the examples.
    hints:
      - Besides the original problem, what other visible difference could AI notice between the two examples?
      - Why isn't showing two examples enough?
    tooVagueExamples:
      - AI misunderstood the examples.
      - It was confusing.
    incorrectExamples:
      - AI ignored the weak example completely.
      - AI ran out of space to follow both examples.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: When examples differ in several ways, name the one that matters so AI copies it.
    requiredConcepts:
      - Names the exact refund date as the difference to copy, not the first name.
    acceptedAnswers:
      - What matters is the exact date, not the greeting.
      - Copy the specific refund date instead of 'soon'.
      - "Key difference: a real date, not 'soon'."
    hints:
      - Which difference changes what the customer learns?
      - Which difference might AI copy by mistake?
    tooVagueExamples:
      - Follow the strong one.
      - Be like the good reply.
    incorrectExamples:
      - Use the customer's first name like the strong one.
      - Add a third example.

---

# Naming The Difference

---
## Content

Say you show AI two donor thank-you notes. The weak one hints at another gift; the good one names what the money paid for. The good one is also shorter.

Now AI can see two differences. **If you do not say which one matters, it may copy the shorter length and keep the hint about another gift.**

Add one sentence:

```plain-text
The difference is that the good one names what the money paid for, while the weak one thanks in general terms and hints at the next gift.
```

Now the target is explicit: name what the money paid for, and do not turn the thank-you into another request.

> ‼️ When examples differ in several ways, name the one the assistant should copy.

---
## Practice

Your strong example donor note is shorter; the weak one hints at another gift. New drafts are shorter but still hint. What went wrong?

???

- AI copied the wrong difference between the examples.

---
## Revision

Your strong refund reply gives an exact date and uses the customer's name; the weak one says "soon." What sentence makes AI copy the right difference?

???

- The difference: the strong reply gives the exact refund date.
