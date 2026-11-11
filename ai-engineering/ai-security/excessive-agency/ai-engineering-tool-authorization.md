---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Authorization applies per call and per resource, not once per workflow.
    requiredConcepts:
      - A check on each call.
      - Checked against the specific record the call touches.
    acceptedAnswers:
      - Authorize each call for the record it names.
      - Every call needs its own permission check on its record.
      - Per-call, per-record authorization.
    hints:
      - Could different calls touch records with different owners?
      - Does one early check cover later arguments?
    tooVagueExamples:
      - More security checks.
      - Check permissions again.
    incorrectExamples:
      - A prompt reminder before each tool choice.
      - One audit after all the calls have finished.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Identity comes from the authenticated request, never from model-generated arguments.
    requiredConcepts:
      - The authenticated request or session, not the model's arguments.
    acceptedAnswers:
      - From the signed-in person's session.
      - The authenticated caller; ignore the model's approver_id.
      - The auth token on the request.
    hints:
      - Can the model put any value into an argument?
      - What did the person prove when signing in?
    tooVagueExamples:
      - From the system.
      - Somewhere trusted.
    incorrectExamples:
      - From the approver_id the model supplied.
      - From the employee named on the request.

---

# Tool Authorization

---
## Content

When an agent calls a tool, your code has to check that the person behind the request may take that action on that record. That check is called tool authorization, and it runs on every call.

Say the billing assistant in Plover, an invoicing app, is helping a signed-in customer. It proposes this:

```plain-text
issue_credit(account="acct-5531", amount=40)
```

The call is well-formed, and $40 is under the credit limit.

Before it runs, your code compares it with the session, the sign-in that proves who's asking:

```plain-text
signed in as:  maya@brightdental.example
account:       acct-3318
role:          owner
call targets:  acct-5531  ->  refused
```

Maya owns acct-3318, and the call names another account, so it's refused. The answer is the same whether the model misread an invoice or followed an injected message.

**Identity comes from the session, since the model can put any value in an argument.** The check repeats on every call, because one run can touch several records.

---
## Practice

Your agent checks permissions once at the start, then makes five calls on three records. What check is missing?

???

- Authorization on every call, against the record it names.

---
## Revision

Your approval tool has an `approver_id` argument the model fills in. Where should your code get the approver's identity?

???

- From the signed-in session, not the model's argument.
