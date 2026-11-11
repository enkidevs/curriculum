---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A cause suggested by a diff stays a hypothesis until evidence shows it.
    requiredConcepts:
      - The diff suggests the cause but doesn't prove it.
    acceptedAnswers:
      - It's a hypothesis; nothing shows the key actually caused it.
      - A missing field in the key is a clue, not proof of the outage.
      - Nobody has traced the outage to that key yet.
    hints:
      - What does the diff actually show?
      - Has anything linked the key to the outage?
    tooVagueExamples:
      - It's not certain.
      - Check more.
    incorrectExamples:
      - Confirmed lines can only come from logs, not diffs.
      - It belongs under Unknown, since nothing is known.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Triage Briefs

---
## Content

When you ask an assistant to sum up a bug investigation, it can present a guess as the root cause. A triage brief[1] keeps the two apart.

**Ask for three sections, with the evidence behind every point:**

```plain-text
Separate what the evidence confirms, what it suggests but does not
prove, and what remains unknown. Quote the clue behind each point.
```

For the checkout bug, where payment methods go missing after a shipping-country change, it returns:

```plain-text
Confirmed: refresh was skipped after shipping country changed US to CA.
Hypothesis: the cart-only key reused cached US methods.
Unknown: whether currency changes hit the same path.
```

- **Confirmed** is backed by evidence you can quote, like a log line.
- **Hypothesis** is what the diff suggests but doesn't prove.
- **Unknown** names the next thing to check.

> 💡 If a Confirmed line has no quoted clue behind it, move it down to Hypothesis.

---
## Practice

Your assistant marks "the cache key caused the outage" as Confirmed, citing only a diff where the key omits region. Why isn't that confirmed?

???

- The diff suggests that cause but doesn't prove it.

---
## Revision

Logs confirm reset emails stopped after a key rotation; a diff suggests the old key is cached; nobody has checked signup emails. Your triage brief's Unknown line covers ???.

- whether signup emails fail
- the cached old key
- the key rotation
- the reset email failures

---
## Footnotes

[1: Triage Brief]
A short investigation summary that separates confirmed evidence, hypotheses, and remaining unknowns so the next check is visible.
