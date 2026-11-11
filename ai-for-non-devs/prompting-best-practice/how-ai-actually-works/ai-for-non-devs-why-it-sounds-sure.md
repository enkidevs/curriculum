---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Well-formatted citations can be invented, so check the reference exists.
    requiredConcepts:
      - Look up the reference to confirm it exists.
    acceptedAnswers:
      - Search for the paper and check it's real.
      - Find the article in the journal.
      - Verify the source exists and says that.
    hints:
      - Does good formatting prove it's real?
      - Where could you find the paper?
    tooVagueExamples:
      - Double-check it.
      - Be careful.
    incorrectExamples:
      - Ask the assistant if it's sure.
      - Check the page range looks plausible.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Hallucinations

---
## Content

An AI answer can sound polished even when a detail is invented.

Ask where a claim came from and it might return:

```plain-text
See Harrelson & Bowe (2021), "Retention Drivers in Mid-Market Services", Journal of Workforce Studies, pp. 44-61.
```

The citation looks complete, but none of it may exist.

An invented detail presented as fact is called a hallucination[1]. It is a normal risk of generated text, not a sign that the app has broken.

**Fluent writing is not evidence.** Look up the source before using it.

> ‼️ Check the answers that look finished, not only the ones that sound uncertain.

---
## Practice

AI returns a citation with authors, year, journal, and page numbers. What do you do before using it?

???

- Look it up and confirm the reference actually exists.

---
## Revision

If an AI answer includes an invented detail, this is called ???.

- a hallucination
- a software bug
- an outdated answer
- a vague question

---
## Footnotes

[1:Hallucination]
Content an AI produces that reads as factual but isn't. It covers invented sources, figures, quotes, product features, and events.
