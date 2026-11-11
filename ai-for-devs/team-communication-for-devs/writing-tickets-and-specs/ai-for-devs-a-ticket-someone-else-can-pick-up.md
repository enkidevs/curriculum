---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An undecided choice goes in the ticket as an open question with its owner, not as a requirement.
    requiredConcepts:
      - Record it as an open decision for Product instead of choosing an answer.
    acceptedAnswers:
      - Mark it open, owned by Product.
      - Note it as undecided and leave the call to Product.
      - "Add an Open line: Product decides on a grace period."
    hints:
      - Who makes this call?
      - Would picking an option be inventing scope?
    tooVagueExamples:
      - Mention the grace period.
      - Handle it carefully.
    incorrectExamples:
      - Require a 30-day grace period to be safe.
      - Leave it out; it's not engineering's problem.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Actionable Tickets

---

## Content

When a PR can't merge, the fix often goes to a teammate as a ticket, and an assistant can turn your notes into a first draft. If the ticket leaves gaps, whoever picks it up fills them with guesses.

Say a refund-status route used the broad `refunds:read` permission instead of the narrow `refunds:read_status` from the brief. Because `refunds:read` also opens the full-refund route, the PR can't merge as written.

Here's a ticket for the fix:

```plain-text
Problem: support needs status access without full-refund access.

Change: require refunds:read_status on the status route and grant
it to roles that need status access. Keep refunds:read on the
full-refund route.

Boundary: do not change responses, write routes, or refunds:retry.

Dependency: permissions are embedded in issued tokens.

Open: Security decides whether existing support tokens are reissued
or allowed to expire before rollout.
```

- **Change and Boundary** say what to edit and what to leave alone.
- **Dependency** explains why rollout is tricky: old tokens still carry the old permission.
- **Open** names a decision nobody has made yet, and who makes it.

**A decision nobody has made goes in the ticket as an open question with an owner.** The teammate can start the fix without guessing the rollout.

> ‼️ A common mistake is letting the assistant pick an answer, like "reissue all tokens." Written as a requirement, a guess looks like a decision.

---

## Practice

Your ticket adds API rate limits. Product hasn't decided on a grace period for existing customers. How should the ticket handle that?

???

- List it as an open question for Product; don't pick an answer.

---

## Revision

Nobody has decided whether old API keys are revoked or left to expire. A generated ticket requiring immediate revocation has ???.

- invented a requirement
- set a safe default
- recorded an open question
- clarified the rollout
