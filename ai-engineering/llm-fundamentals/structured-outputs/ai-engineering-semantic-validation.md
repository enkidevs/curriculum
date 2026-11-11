---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: No. Each value is a valid number, so only a semantic check that adds them up catches it.
    requiredConcepts:
      - No, because each value has the right type, or a semantic check is needed.
    acceptedAnswers:
      - No. They're all valid numbers; a semantic check has to compare them.
      - No, the schema only checks that each one is a number.
      - No. Only a check that subtotal plus tax equals total catches it.
    hints:
      - What type is each value?
      - Which check looks at two fields together?
    tooVagueExamples:
      - Maybe.
      - It depends on the schema.
    incorrectExamples:
      - Yes, schema validation checks every field.
      - Yes, if the fields are required.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Hold the receipt back and flag it for a person to review, or ask the model again.
    requiredConcepts:
      - Flag it for review, or re-extract it, before the expense is used.
    acceptedAnswers:
      - Flag it for a person to check.
      - Hold the expense and send it to review.
      - Re-run the extraction and check again before saving.
    hints:
      - Which value is right, the dates or the nights?
      - Who can look at the original receipt?
    tooVagueExamples:
      - Fix it.
      - Handle the error.
    incorrectExamples:
      - Save it, since it passed schema validation.
      - Trust the nights field and ignore the dates.

---

# Semantic Validation

---
## Content

A reply can match your schema and still be wrong. **Semantic validation checks whether the values make sense together, like whether two dates are in the right order.**

Here's what a model in an expense app returned for a hotel receipt:

```plain-text
{"hotel": "Lakeview Inn", "check_in": "2026-05-14",
 "check_out": "2026-05-12", "nights": 2, "total_usd": 412.00}
```

Every field is there with the right type, so schema validation passes. But check-out is two days before check-in.

A few lines of Python catch it by comparing the dates with the number of nights:

```python
from datetime import date

receipt = {"check_in": "2026-05-14", "check_out": "2026-05-12", "nights": 2}

check_in = date.fromisoformat(receipt["check_in"])
check_out = date.fromisoformat(receipt["check_out"])

if (check_out - check_in).days != receipt["nights"]:
    print("Flag for review: dates and nights disagree")
```

It prints:

```plain-text
Flag for review: dates and nights disagree
```

Check-out minus check-in is -2 days, which doesn't match 2 nights, so the receipt goes to a person to check.

> 💡 Add checks like this for your own business rules, such as a receipt's subtotal plus tax matching its total.

---
## Practice

An extracted receipt has `subtotal` 40, `tax` 4, and `total` 54. Does schema validation catch it, and why?

???

- No. Each is a valid number; only a check comparing them does.

---
## Revision

An extracted receipt says 3 nights, but its dates span 2. What should your code do with it?

???

- Flag it for a person to review before it's used.
