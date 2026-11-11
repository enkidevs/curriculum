---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A rating is a judgment of the experience, not a label that each claim was correct.
    requiredConcepts:
      - It shows the customer's overall judgment, not which answers were correct.
    acceptedAnswers:
      - That the customer was happy, nothing about accuracy.
      - An overall opinion; the answers could still be wrong.
      - How it felt to them, not which claims held up.
    hints:
      - What was the customer actually judging?
      - Could a wrong answer still earn five stars?
    tooVagueExamples:
      - It was probably fine.
      - Good feedback.
    incorrectExamples:
      - Every answer in the chat was correct.
      - The issue was fully resolved.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The human outcome shows whether drafts were useful; logs of text and versions alone can't.
    requiredConcepts:
      - What support staff did with the draft, such as sent unchanged, edited, or rejected.
    acceptedAnswers:
      - Whether staff used it as-is, changed it, or threw it out.
      - How much it was edited before sending.
      - The final action taken on each draft.
    hints:
      - Who sees the draft before the customer does?
      - What would tell you a draft was bad?
    tooVagueExamples:
      - More data.
      - Quality info.
    incorrectExamples:
      - The customer's full account details.
      - How long the model took to respond.

---

# User Feedback

---
## Content

**User feedback is any signal people give about an AI output, and some signals say far more than others.**

In your video-call app, people can react to a meeting summary in four ways:

- **Thumbs up or down:** how it felt, with no reason given.
- **Regenerate:** the first try missed, or they wanted new wording.
- **Edit:** what was wrong, plus the right version.
- **Support ticket:** rare, so someone cared enough to complain.

A thumbs-up says less than it seems. People rate right after the meeting, before anyone checks who owns each action item, so a summary with a wrong owner can still get one.

A thumbs-down tells you to read that summary and find out why.

Edits carry their own fix. Here's one:

```plain-text
before:  Sam: send the budget by Friday
after:   Priya: send the budget by Friday
```

> 💡 Store each edit with its transcript, redacted like any other log. It's a ready-made eval case with the correct answer included.

---
## Practice

A customer rates your AI support chat five stars. By itself, what does that rating show?

???

- Satisfaction with the experience; the answers could still be wrong.

---
## Revision

Your AI drafts support replies, and each record logs draft text and versions. What else shows whether drafts are good?

???

- Whether each was sent as-is, edited, or rejected.
