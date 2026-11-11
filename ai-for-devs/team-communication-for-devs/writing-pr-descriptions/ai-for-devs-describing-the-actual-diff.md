---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A PR summary records both the actual change and any mismatch with the brief.
    requiredConcepts:
      - Flag that the diff has no row limit, unlike the brief.
    acceptedAnswers:
      - A note that the brief's 1,000-row limit is missing.
      - That the diff doesn't cap rows, so it differs from the brief.
      - "The mismatch: no row limit yet; resolve it before merge."
    hints:
      - What did the brief require?
      - Does the diff do that?
    tooVagueExamples:
      - More detail.
      - Something about the brief.
    incorrectExamples:
      - Nothing; passing tests mean it's ready.
      - That it returns up to 1,000 rows, as the brief says.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Describe the final diff, not the ticket, and surface any mismatch.
    requiredConcepts:
      - Describe only the CSV export and flag the missing JSON.
    acceptedAnswers:
      - Change it to CSV only and note JSON isn't done yet.
      - Describe what the diff does, CSV, and call out the JSON gap.
      - "Match the diff: CSV export added; JSON missing versus the ticket."
    hints:
      - What does the diff actually add?
      - Should the reviewer know what's missing?
    tooVagueExamples:
      - Make it accurate.
      - Fix the description.
    incorrectExamples:
      - Nothing; JSON is coming in a follow-up.
      - Keep it, since the ticket asks for both.
---

# Diff-Based Descriptions

---
## Content

Ask an assistant for a PR description and it may work from the ticket, describing what you meant to build. Reviewers read the description first, so it has to match what the diff actually does.

Say you've added an endpoint that returns a refund's status. The diff and tests show this:

```plain-text
GET /refunds/:id/status uses refunds:read.
The response contains status, amount, and updated_at.
A missing refund returns 404.
Tests cover the successful response and the 404.
```

The task brief asked for a narrower permission, `refunds:read_status`. So the description says what changed and where it differs from the brief:

```plain-text
Adds a refund-status endpoint guarded by refunds:read, returning status,
amount, and updated_at, with tests for successful and missing refunds.
This differs from the required refunds:read_status and must be resolved
before merge.
```

- **The first sentence** describes the endpoint as built, with the tests that cover it.
- **The second** flags the permission mismatch so a reviewer can't miss it.

**Write the description from the final diff and tests, then check it against the ticket.** Any difference goes in the description, including changes the ticket never mentioned.

> ‼️ A common mistake is keeping an AI draft because it matches the ticket. Read each line against the diff, and cut anything only the ticket says.

---
## Practice

The brief caps `/orders/export` at 1,000 rows. Your diff adds no limit, and tests pass. Besides describing the endpoint, what should your PR summary say?

???

- That it lacks the brief's 1,000-row limit; resolve before merge.

---
## Revision

Your diff adds only CSV export, but the AI-drafted PR description matches the ticket: "Adds CSV and JSON export." What should you change?

???

- Say it adds CSV only, and flag that JSON is still missing.
