---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Pulling labeled passages first gives you evidence to check the draft against and keeps details from several documents apart.
    requiredConcepts:
      - It gives you something to check the draft against, or keeps sources from blurring together.
    acceptedAnswers:
      - You can see which evidence the draft relies on and check its claims.
      - It stops details from different reports mixing together.
      - You can inspect the evidence before the prose gets polished.
    hints:
      - What can you inspect before reading the polished draft?
      - How do you stop facts from several sources blending together?
    tooVagueExamples:
      - It improves accuracy.
      - Claude understands the documents better.
    incorrectExamples:
      - It proves the final draft is correct.
      - A long document never needs checking when it fits in one chat.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Evidence extraction with source labels comes before drafting.
    requiredConcepts:
      - Extracted passages labeled by source.
    acceptedAnswers:
      - Key quotes tagged with report and page.
      - Relevant excerpts with their source.
      - Evidence pulled out and labeled by page.
    hints:
      - What comes before a conclusion?
      - How will you trace claims?
    tooVagueExamples:
      - A summary.
      - Notes.
    incorrectExamples:
      - A conclusion first.
      - All three reports in one block.

---

# Long Material, Consistent Instructions

---
## Content

**Claude is a strong fit when one task uses long documents and one set of writing instructions.**

It works well in two passes, keeping the evidence apart from the writing:

1. **Evidence pass:** relevant passages labeled by source or page
2. **Drafting pass:** that evidence written up for your audience, tone, and format

The first pass gives you something to check before any polished writing exists. It also keeps details from different documents from getting mixed up.

Claude can read a lot at once, but not without limit. A successful upload doesn't prove every detail made it into the answer.[1]

> 💡 Ask for the labeled passages first, check them, then ask for the draft.

---
## Practice

You're drafting from several long documents. Why pull out the key passages, labeled by source, before writing?

???

- So you can check the draft against them and sources don't blur together.

---
## Revision

You're drafting from three long reports. What should Claude produce first, before the draft?

???

- Relevant passages, each labeled by source and page.

---
## Footnotes

[1:Long Documents]
Claude file uploads and project knowledge remain subject to file and context limits.
https://support.claude.com/en/articles/8241126-upload-files-to-claude
