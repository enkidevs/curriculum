---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A redactor only replaces details that match patterns it recognizes, so an address with no street word, or a name it doesn't know, gets through.
    requiredConcepts:
      - The address doesn't match a pattern the redactor recognizes, such as a street word.
    acceptedAnswers:
      - It has no street word for the redactor to match.
      - The address doesn't fit any pattern the redactor knows.
      - Redaction only catches formats it recognizes, and this one didn't fit.
    hints:
      - How does the redactor spot an address?
      - What's missing from "12 Elm, Flat 3"?
    tooVagueExamples:
      - It's broken.
      - Bad redaction.
    incorrectExamples:
      - Redaction never touches addresses.
      - The address was in the reply, which isn't redacted.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Redaction Gaps

---
## Content

A redactor only replaces details that match a pattern it recognizes. The personal details it misses are called redaction gaps.

Here's one customer message from the carrier's redacted 1% sample, before and after:

```plain-text
in:  "I'm Dana Ruiz, account 4417-2290. Send the bill to 12 Elm, Flat 3."
out: "I'm [NAME], account [ACCOUNT]. Send the bill to 12 Elm, Flat 3."
```

The redactor recognized the name and the account number's format, so both became placeholders. The address got through, because it has no word like "Street" or "Road" for the redactor to match.

**Every redactor has gaps like this, so a redacted sample still holds some personal data.** That's why it goes in a store with limited access.

---
## Practice

Your redactor turned a customer's name into `[NAME]` but left "12 Elm, Flat 3" untouched. Why might it have missed the address?

???

- It has no street word or other pattern the redactor recognizes.

---
## Revision

Redacted chat samples still go in a store with limited access, because redaction ???.

- misses some details
- can be reversed
- slows down logging
- drops whole messages
