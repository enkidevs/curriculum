---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Without the person's own scope, access is as broad as the service credential.
    requiredConcepts:
      - Any record the service credential can reach.
    acceptedAnswers:
      - Whatever invoice that ID points to, if the service can read it.
      - Any record, including other customers' invoices.
      - Records outside the person's own access.
    hints:
      - Whose permissions apply now?
      - Does the ID prove ownership?
    tooVagueExamples:
      - The wrong data.
      - Something unexpected.
    incorrectExamples:
      - Only the invoice loaded earlier in the run.
      - Nothing, since IDs encode their owner.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Each call should carry the signed-in person's own access token, or a short-lived one scoped to them, so the billing API applies their role.
    requiredConcepts:
      - Calls made with the signed-in person's own token, or a short-lived token scoped to them.
    acceptedAnswers:
      - Pass each person's own access token with the call.
      - Use a short-lived token scoped to whoever asked.
      - Forward the token from their sign-in instead of the shared key.
    hints:
      - Whose permissions does the API see with one shared key?
      - What does each person already carry from signing in?
    tooVagueExamples:
      - Use better credentials.
      - Change the key.
    incorrectExamples:
      - Add a company filter to every read.
      - Tell the model which invoices each role may see.

---

# User-Scoped Identity

---
## Content

If every tool call uses one shared service key, the systems behind your tools see the same all-powerful caller every time. Your app's own checks are then the only protection.

**With user-scoped identity, each tool call runs with the permissions of the person who asked, so those systems apply that person's access rules.**

In Plover, owners see every invoice, and staff see only invoices they created. Sam, on staff, asks the billing assistant about inv-4410, which the owner created.

Here's that tool call made two ways:

```plain-text
with a shared service key
  get_invoice("inv-4410")  ->  returns the invoice
with Sam's own access token
  get_invoice("inv-4410")  ->  403 Forbidden
```

- **With the shared key,** the billing API sees a caller who can read everything, so it returns any invoice the key can read, including other customers'.
- **With Sam's token,** passed along from Sam's sign-in, the API applies Sam's role and refuses.

A short-lived token your server issues with only Sam's access works the same way. Either way, a tricked agent reaches only what Sam could already open.

---
## Practice

Your agent calls `get_invoice` with a shared service key, an ID the model chose, and no other check. What can it return?

???

- Any invoice that key can read, including other customers'.

---
## Revision

Your agent's tools all call the billing API with one service key. What change makes the API itself apply each person's role?

???

- Pass the signed-in person's own access token with each call.
