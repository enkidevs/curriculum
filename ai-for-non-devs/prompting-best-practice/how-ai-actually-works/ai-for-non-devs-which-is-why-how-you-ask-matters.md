---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The prompt provides the report and asks AI to tie each claim to a finding.
    requiredConcepts:
      - The report is provided.
      - Each claim is tied to a specific finding.
    acceptedAnswers:
      - Using the report below, list key issues with the finding number for each.
      - Summarize this report and reference the section behind every point.
      - Here's the report. Summarize it and cite the finding for each line.
    hints:
      - What does AI need in front of it?
      - How could you check each line fast?
    tooVagueExamples:
      - Summarize it accurately.
      - Be careful with facts.
    incorrectExamples:
      - Summarize our latest inspection confidently.
      - Summarize it and mark lines you're unsure of.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Without the source notes, AI has to invent the decision.
    requiredConcepts:
      - The source notes of the decision.
    acceptedAnswers:
      - The meeting notes with the decision.
      - The approved decision record.
      - Whatever document records what was decided.
    hints:
      - What would the summary be based on?
      - Can AI know what was decided yesterday?
    tooVagueExamples:
      - More detail.
      - Context.
    incorrectExamples:
      - A stricter word limit.
      - A more confident tone.

---

# Prompt Context And Checks

---
## Content

Imagine asking AI to write a project update without giving it the confirmed cause, revised deadline, or meeting notes. **If it has no source for those details, it may fill the gaps with plausible text.**

That is why how you ask matters:

- Give AI the context.
- Provide the source when facts matter.
- Ask for an output you can check.
- Use exact tools for exact answers.

The next workout turns those choices into a reusable prompt structure.

> 💡 Prompting isn't a trick for squeezing more out of AI. It's how you supply the context and sources the assistant cannot safely invent.

---
## Practice

Write a prompt asking AI to summarize a safety inspection report so you can check each point against the report.

???

- Summarize the attached report; after each point, name the finding it comes from.

---
## Revision

A prompt says "Summarize yesterday's pricing decision," with nothing attached. What is the most useful thing to add?

???

- The approved notes from the pricing decision.
