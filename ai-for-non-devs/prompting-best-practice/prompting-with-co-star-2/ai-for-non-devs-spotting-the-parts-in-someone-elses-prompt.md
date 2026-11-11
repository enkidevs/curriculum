---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Style is missing, so the prompt needs a concrete instruction for how the summary should be written.
    requiredConcepts:
      - Style is the missing CO-STAR element.
      - The answer adds a concrete writing instruction.
    acceptedAnswers:
      - Style is missing. Add "Use short sentences and simple words."
      - "Style: add \"Plain words, short sentences, no intro.\""
      - How it's written is missing; say "Keep sentences short and simple."
    hints:
      - Which element controls how the writing is built?
      - Add an instruction about sentence length, headings, vocabulary, or paragraph structure.
    tooVagueExamples:
      - It needs more detail.
      - Style is missing.
    incorrectExamples:
      - Tone is missing. Ask it to stay neutral.
      - Audience is missing. Say who will read it.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Identifying CO-STAR Elements

---
## Content

A colleague shares a prompt they've been using for months:

```plain-text
I run first-aid training. After each session, I type the paper feedback into one document. Summarize this month's comments for regional trainers deciding what to change. Use at most six themes, with the number of comments after each. Keep it neutral.
```

**Read it back a piece at a time and the structure is right there.**

The first two sentences set the context. "Summarize this month's comments" is the objective, and the regional trainers are the audience.

Six themes with counts sets the response. "Keep it neutral" sets the tone.

Style is missing. The prompt never says how the writing should be built, so the summaries keep arriving wordier than they want.

> 💡 A working prompt has CO-STAR inside it, labeled or not. The missing letter is usually the fix.

---
## Practice

A colleague's prompt:

```plain-text
I manage a dental clinic's front desk. Summarize last week's patient complaints for the practice owner, who is deciding on staffing. List the top four issues with how often each came up. Keep it calm and factual.
```

Which CO-STAR element is missing, and what short instruction adds it?

???

- Style. Add "Use short, plain sentences."

---
## Revision

A colleague's prompt:

```plain-text
You're writing for our night-shift supervisors, who know the lock-up process inside out. Draft the notice about the new checklist. Under 120 words, plain sentences, no headings.
```

It never says ???.

- how it should feel
- who reads it
- what to write
- how long
