---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Replace the email with a placeholder or fake value. Changing only the email keeps the rest of the query for diagnosis.
    requiredConcepts:
      - Replaces the email with a placeholder or fake value.
    acceptedAnswers:
      - Swap the email for a fake value like `user@example.com`.
      - Mask the email but keep the rest of the query.
      - Use a placeholder in place of the real address.
      - You change it to bla@example.com.
      - Change the email to a made-up one.
      - Replace the email with ?.
      - Put a dummy email in its place.
    hints:
      - Which part is sensitive?
      - What does the assistant need to diagnose it?
    tooVagueExamples:
      - Remove sensitive stuff.
      - Be careful.
      - You redact it before giving it to your assistant.
    incorrectExamples:
      - Delete the `WHERE` clause.
      - Keep it; it's only one customer.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Remove secrets before sharing context.
    requiredConcepts:
      - The connection string or the credentials in it.
    acceptedAnswers:
      - Any database connection string with credentials.
      - The secret connection string in the error.
      - Credentials embedded in the trace.
    hints:
      - What in the trace grants access?
      - What would be dangerous to leak?
    tooVagueExamples:
      - Sensitive data.
      - Private info.
    incorrectExamples:
      - The framework version.
      - The request timestamp.
---

# Sensitive Context

---
## Content

Before you share an artifact with an assistant, remove anything it isn't approved to receive. Your organization's data-use policy decides what that is, but it usually includes:

- credentials, like a database connection string
- private keys
- restricted source code
- protected customer data, like emails

**Good redaction removes the values and keeps the technical details the assistant needs.**

Here's a slow query, redacted two ways:

**🚫 Too much removed**
```plain-text
SELECT [REDACTED] FROM [REDACTED]
WHERE [REDACTED] = [REDACTED] ORDER BY [REDACTED]
```

**✅ Values removed, structure kept**
```plain-text
SELECT id, total_cents, issued_at FROM invoices
WHERE account_id = ? ORDER BY issued_at DESC
```

- **The first** hides the columns, filter, and sort order, so there's nothing left to diagnose.
- **The second** keeps all three and replaces only the account value with `?`.

> 💡 If policy forbids sharing the query at all, build a minimal reproduction with made-up data instead.

---
## Practice

A slow query has a customer's email in its `WHERE` clause. How do you prepare it for an assistant?

???

- Replace the email with a placeholder and keep the query's structure.

---
## Revision

Before pasting a stack trace to an assistant, which must come out: the timestamp, framework version, or database connection string?

???

- The database connection string.
