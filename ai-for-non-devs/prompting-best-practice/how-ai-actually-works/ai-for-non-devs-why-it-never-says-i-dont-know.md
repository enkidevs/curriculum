---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The assistant can build a plausible answer from patterns in similar tools.
    requiredConcepts:
      - It built a plausible answer from general patterns, not from your company's documentation.
    acceptedAnswers:
      - It built a plausible answer from patterns in similar tools.
      - The fluent explanation was synthesized from what errors in other tools often mean, not from company documentation.
      - It filled the knowledge gap with a likely-sounding pattern rather than admitting it lacked access.
    hints:
      - Remember that only the company uses this tool.
      - Where could the answer come from if the model has never seen the real error code?
    tooVagueExamples:
      - It made it up.
      - AI guessed.
    incorrectExamples:
      - It looked up the company's internal documentation before replying.
      - Error 5512 has the same meaning in every software system.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Instant agreement shows the first answer was a plausible guess, not grounded in evidence.
    requiredConcepts:
      - The first answer was a plausible guess, not backed by evidence or real confidence.
    acceptedAnswers:
      - It was a guess, not based on real knowledge.
      - It had no real evidence behind it.
      - It wasn't backed by any real confidence.
    hints:
      - Ask what evidence changed when you challenged the detail.
      - Does a quick rewrite tell you that either version has been checked?
    tooVagueExamples:
      - AI changed its mind.
      - It was different.
    incorrectExamples:
      - The new version is now verified because the assistant corrected itself.
      - The original answer was withheld because the subject was sensitive.

---

# Uncertainty In AI Answers

---
## Content

**AI can produce a confident answer even when it has little evidence behind it.**

Ask what error 5512 means in your company's room-booking system. If the assistant cannot access your internal documentation, it may still build an explanation from patterns in other software.

Challenge one detail and it may switch to a different explanation just as quickly.

No new evidence entered the chat. The quick switch shows that the first answer was a plausible attempt, not a measure of confidence.

> 💡 An answer that changes the moment you push back was never based on evidence.

---
## Practice

AI gives a fluent, specific explanation of an error in a tool only your company uses. How could it?

???

- It built a plausible answer from patterns in similar tools.

---
## Revision

You challenge one detail and the assistant instantly agrees and rewrites it. What does that reveal about the original answer?

???

- It was a plausible guess, not something it actually knew.
