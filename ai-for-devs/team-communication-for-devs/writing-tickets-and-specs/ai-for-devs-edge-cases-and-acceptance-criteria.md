---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An old token with only the broad permission loses summary access but keeps full-order access, so rollout must handle it.
    requiredConcepts:
      - Summary route 403 and full-order route 200.
    acceptedAnswers:
      - "Summary: 403. Full order: 200."
      - Blocked on the summary, but it can still read full orders.
      - Forbidden on the summary route, allowed on the full-order route.
    hints:
      - Which permission does the summary route now check?
      - Which route still accepts `orders:read`?
    tooVagueExamples:
      - Mixed access.
      - It depends on the token.
    incorrectExamples:
      - 200 from summary, 403 from full order.
      - 200 from both, since it has the broader permission.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Acceptance criteria should cover permission and bad-ID paths with observable statuses.
    requiredConcepts:
      - A failure case (missing permission, unknown ID, or malformed ID) with a fitting status code.
    acceptedAnswers:
      - An unknown invoice ID returns 404.
      - A malformed ID returns 400.
      - No permission gets 403.
    hints:
      - What if the caller lacks the permission?
      - What are two ways an ID can be wrong?
    tooVagueExamples:
      - Error handling.
      - Edge cases.
    incorrectExamples:
      - Any logged-in user gets 200.
      - The middleware name for the route.
---

# Edge Cases And Acceptance Criteria

---
## Content

Acceptance criteria are the checks that tell everyone when a ticket is done. Ask an assistant for them and you may get a generic list of authentication errors. It misses the cases that can actually go wrong in your system.

Say the refund-status route is moving to its own `refunds:read_status` permission, while the full-refund route keeps `refunds:read`.

**The criteria have to cover each permission on each route, plus each kind of bad request.**

Here they are:

```plain-text
Permissions                         Status route   Full-refund route
refunds:read_status                  200            403
refunds:read + refunds:read_status   200            200
refunds:read                         403            200
neither                              403            403

Existing refund ID         200 with status, amount, updated_at
Missing refund ID          404
Malformed refund ID        400
Support POST retry         403
```

- **Each route** checks only its own permission, so a role that needs both routes needs both permissions.
- **`refunds:read` alone** now gets a 403 from the status route. A support token issued before the split carries only that permission until it expires or is reissued.

So the criteria also show that the rollout needs a plan for old tokens.

> 💡 For every route in a ticket, write the status a caller without the permission should get, alongside the successful case.

---
## Practice

The order-summary route requires `orders:read_summary`; the full-order route accepts `orders:read`. What does a token with only `orders:read` get from each?

???

- 403 from the summary route, 200 from the full-order route.

---
## Revision

`GET /invoices/:id` requires `invoices:read`. Its acceptance criteria cover only a successful lookup. What missing case and status would you add?

???

- A caller without `invoices:read` should get 403.
