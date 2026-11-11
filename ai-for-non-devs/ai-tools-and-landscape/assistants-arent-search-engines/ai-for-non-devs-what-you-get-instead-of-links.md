---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An assistant generates a synthesis rather than handing over the original source, so the source still has to support the claim.
    requiredConcepts:
      - The paragraph is generated text rather than the source itself.
    acceptedAnswers:
      - The paragraph is generated, not the source itself, so you need to check the original source supports it.
      - A fluent summary can still misstate the source, so open the source and verify the claim.
      - The assistant composed an answer; it did not replace the evidence behind that answer.
    hints:
      - Compare a policy page with a paragraph written about that page.
      - What can you inspect to see whether the claim is actually supported?
    tooVagueExamples:
      - AI can be wrong.
      - You should be careful.
    incorrectExamples:
      - Assistant answers never contain links.
      - Search results are always correct.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Check the source itself, not another summary.
    requiredConcepts:
      - Check claims against the original source.
    acceptedAnswers:
      - Read the actual policy for each point.
      - Verify against the original document.
      - Open the source and confirm the claims.
    hints:
      - Is the summary the source?
      - Where do you check?
    tooVagueExamples:
      - Double-check.
      - Be careful.
    incorrectExamples:
      - Compare with another summary.
      - Ask for more detail.

---

# Sources And Generated Answers

---
## Content

Search for an archive's group-booking policy, and the result points to pages that already exist.

Ask an assistant the same thing and it may write an answer like this:

```plain-text
Groups can book guided visits in advance. A deposit may be required, with cancellation available before a stated deadline.
```

**That paragraph may be useful, but it is generated text, not the policy page.**

> 💡 Even when the assistant shows citations, open the source and confirm it supports each claim.

---
## Practice

Why does a clear assistant-written paragraph still need checking against the original source?

???

- It is a generated synthesis, not the source itself.

---
## Revision

Before acting on an assistant's summary of a policy, what do you do?

???

- Open the original policy and check it supports each claim.
