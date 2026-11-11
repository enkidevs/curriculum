---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Code proves behavior, not rationale; the invented GDPR reason is unsupported.
    requiredConcepts:
      - The GDPR reason is the unsupported part.
    acceptedAnswers:
      - The compliance part.
      - Why it does it; GDPR isn't backed by anything.
      - The GDPR rationale, the ADR says dedupe.
    hints:
      - What can you see directly in the code?
      - What does the decision record say?
    tooVagueExamples:
      - Some of it.
      - It's partly wrong.
    incorrectExamples:
      - That it strips utm_ parameters.
      - Nothing; both reasons are fine.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Code shows what happens, not why; with no recorded reason, the honest label is unknown.
    requiredConcepts:
      - Mark the reason as unknown, rather than guessing or using the AI's plausible reason.
    acceptedAnswers:
      - Rationale unknown.
      - Say no reason is documented yet.
      - Leave the AI's reason out and mark it unconfirmed.
    hints:
      - Did anything you found say why?
      - Is a plausible reason the same as a recorded one?
    tooVagueExamples:
      - Be careful.
      - Add a note.
    incorrectExamples:
      - To avoid rate limits, as the assistant suggested.
      - Whatever reason seems most likely.
---

# Unsupported Rationale

---
## Content

When you ask an assistant to explain unfamiliar code, it can describe what the code does and invent why in the same sentence. A made-up reason tends to stick and steer later changes.

Here it explains `buildTarget`, which builds the destination URL for a short link:

```plain-text
buildTarget strips utm_ parameters before redirecting, for GDPR
compliance.
```

The function shows that the parameters are stripped. It can't show why.

**The reason needs its own source, like a comment, a decision record, or an issue.**

Here, a decision record says:

```plain-text
docs/decisions/021-stable-click-dedupe.md
Remove utm_ parameters before generating the click-deduplication key.
```

The real reason is stable click deduplication. Without that record, the honest answer would be "reason unknown".

> ‼️ A common mistake is writing down the assistant's reason as fact. If nothing recorded explains the code, note the reason as unknown.

---
## Practice

An assistant says `buildTarget` strips `utm_` parameters for GDPR compliance. The code strips them; the decision record says click deduplication. Which part is unsupported?

???

- The GDPR reason; the record says deduplication.

---
## Revision

You find no recorded reason why `retryLimit` is 7. An assistant suggests "to avoid rate limits." What reason should your notes give?

???

- That it's unknown; nothing recorded explains it.
