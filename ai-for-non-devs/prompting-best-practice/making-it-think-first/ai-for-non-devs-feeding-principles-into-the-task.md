---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Showing only the finished draft removes the check that would reveal which principle the draft skipped.
    requiredConcepts:
      - You lose the check that shows which principle the draft skipped.
    acceptedAnswers:
      - You lose the check because you cannot see which principle the draft skipped.
      - You lose the visible check because you cannot compare the finished path with the principles it was meant to follow.
      - Without the principles on screen, you cannot tell which requirement the draft skipped.
    hints:
      - What were the two outputs the prompt asked to show?
      - Explain what comparison becomes impossible when only the finished path appears.
    tooVagueExamples:
      - You lose some useful detail.
    incorrectExamples:
      - The assistant never worked out any principles internally.
      - Nothing is lost because the principles must still have shaped the draft.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The prompt asks for principles first, then applies them to this case.
    requiredConcepts:
      - Ask for principles first.
      - Then apply them to this business.
    acceptedAnswers:
      - First list what makes a refund policy work, then write ours using that.
      - What do effective refund policies include? Now apply that to our shop.
      - Name the key principles, then draft our policy from them.
    hints:
      - What should come before the draft?
      - How do principles reach the draft?
    tooVagueExamples:
      - Make it better.
      - Make it fit.
    incorrectExamples:
      - Copy a competitor's policy structure.
      - Write three policies and pick one.

---

# Applying Principles To The Task

---
## Content

Step-back prompting does not require two messages. **Put both parts in one prompt and ask AI to show each one**:

```plain-text
First, list the five things that make an out-of-hours escalation path work, and the two ways they usually fail.

Then write ours using those five things. We're a 30-person company with one duty manager on call and a systems team of three people across two time zones.

Show me both parts.
```

Now the principles and draft share the same context. If the first part says to set a fixed wait before escalating but the draft has no wait, you'll see the gap right away.

> 💡 When the principles and the draft arrive together, you can check the draft against its own rules.

---
## Practice

You asked AI for principles first, then a draft, but only the draft came back. Why is that a problem?

???

- You lose the check because you cannot see which principle the draft skipped.

---
## Revision

AI's draft refund policy for your shop came back generic. Write one step-back prompt: principles first, then the draft.

???

- List what good refund policies need, then apply those to our business.
