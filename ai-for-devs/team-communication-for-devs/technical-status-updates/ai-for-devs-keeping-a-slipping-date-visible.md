---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A slipping date needs the change, the reason, the confidence, and any decision that could save the earlier date.
    requiredConcepts:
      - "Names at least two of: the new date or how far it moved, the specific cause, confidence, a decision (with deadline) that could keep the earlier date."
    acceptedAnswers:
      - The new date and the confidence level.
      - What moved, from when to when, and what could pull it back.
      - How far it slipped and what exactly went wrong with the SDK.
    hints:
      - When is the beta now?
      - Could anyone still keep the old date?
    tooVagueExamples:
      - More detail.
      - The real status.
    incorrectExamples:
      - The SDK vendor's name.
      - A promise that the team will catch up.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A forecast can get riskier before its date moves, and the update should show that.
    requiredConcepts:
      - Lower the stated confidence while keeping the date.
    acceptedAnswers:
      - Same date, but drop confidence to medium or low because of the missed dependency.
      - Show confidence falling, with the late dependency as the reason.
      - Keep the date and mark it lower confidence.
    hints:
      - Is the date as safe as it was last week?
      - What tells readers how risky the date is?
    tooVagueExamples:
      - Give more detail.
      - Update the status.
    incorrectExamples:
      - Nothing, since the date hasn't moved.
      - Keep high confidence until the date actually slips.
---

# Schedule Risk

---
## Content

When a delivery date slips, the status update is how other teams find out. Smooth wording, from you or an assistant, can bury the slip, and they keep planning around the old date.

Say an SSO pilot is late, and the draft says "The timeline shifted after the incident." Readers can't tell the new date or how sure you are of it.

Here's the forecast written out:

```plain-text
Pilot forecast: September 21 -> September 28. Medium confidence.
Reason: incident response displaced Thursday's login work, and the
signing certificate is still outstanding.
Decision by September 10: remove provider-initiated login from the
pilot to keep September 21, or move the pilot to September 28.
```

- **The forecast line** gives both dates and how confident you are.
- **Reason** says what caused the slip.
- **Decision** gives readers a way to keep the old date, and a deadline for choosing.

**A slip needs the new date, the reason, your confidence, and any decision that could save the old date.**

> ‼️ A common mistake is keeping "high confidence" because the date still holds, after a dependency has missed its deadline. Lower the confidence and give the reason.

---
## Practice

A weekly update says only "Beta timeline shifted slightly due to a vendor SDK." What two facts does it hide?

???

- The new date and how confident you are in it.

---
## Revision

Your forecast date holds, but a dependency just missed its deadline. Last week's update said high confidence. What should change this week?

???

- Lower the stated confidence and give the reason, even though the date holds.
