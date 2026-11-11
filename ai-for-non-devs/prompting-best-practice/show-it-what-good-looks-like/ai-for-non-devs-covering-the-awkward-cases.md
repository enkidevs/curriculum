---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Examples with no gaps teach AI to fill gaps, even by inventing.
    requiredConcepts:
      - AI fills in the blank anyway instead of leaving it empty.
    acceptedAnswers:
      - It'll make something up for the missing field.
      - Gets filled by AI.
      - Gets invented by AI.
      - AI autofills or autocompletes the answers.
      - The gap gets invented.
      - It fills in the blank from nowhere.
    hints:
      - What did every example show?
      - What would AI copy?
    tooVagueExamples:
      - It'll be wrong.
      - Something odd.
    incorrectExamples:
      - It'll be flagged as incomplete.
      - It'll be skipped.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Add an example covering the awkward case, like a missing field.
    requiredConcepts:
      - An example with a missing or awkward field.
    acceptedAnswers:
      - A record with a blank field and how to handle it.
      - An incomplete record showing the right output.
      - An edge case, like missing data.
    hints:
      - What will real records include?
      - Which case do your examples skip?
    tooVagueExamples:
      - Another example.
      - A good one.
    incorrectExamples:
      - One more complete record.
      - Your longest record.

---

# Examples For Awkward Cases

---
## Content

The examples you pick are tidy. Real records are not.

Imagine you're standardizing speaker bios for a conference program. Every example has a name, job title, and organization.

The first speaker who's between roles may get an invented title because your examples made that field look required.

Add the awkward case:

```plain-text
Where a speaker has no current job title, give the name and organization only, like this:

"Rosa Iqbal, Northbridge Community Trust."
```

**Now the prompt has a pattern for a missing field instead of an invitation to fill the gap.**

> ‼️ If your batch contains incomplete records, your examples should too.

---
## Practice

Every example in your prompt has all three fields filled. What likely happens to a record with one field blank?

???

- AI will fill the blank with invented detail.

---
## Revision

Before running your prompt across a batch of real records, what extra example should you add?

???

- One showing what to do when a record is missing something.
