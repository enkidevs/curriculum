---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A shared permission can widen access beyond the diff; the new route needs its own narrow permission.
    requiredConcepts:
      - Give the route its own narrower permission instead of reusing billing:admin.
    acceptedAnswers:
      - Add a view-only invoice permission for it.
      - Stop reusing billing:admin; create a PDF-only permission.
      - Guard it with its own read-only permission.
    hints:
      - What else does billing:admin allow?
      - How could support view PDFs without refund rights?
    tooVagueExamples:
      - Fix the permissions.
      - Review access carefully.
    incorrectExamples:
      - Nothing; the route is read-only.
      - Keep billing:admin and hide the refund button.
---

# Flagging Risk In A PR

---
## Content

Reviewers have limited attention, so the most useful part of a PR description points them at what could go wrong. That risk isn't always inside the diff, and an assistant drafting from the diff alone won't see it.

Say the brief for a refund-status route asked for a narrow `refunds:read_status` permission, and the route uses `refunds:read` instead. On `main`, `refunds:read` already guards `GET /refunds/:id`, which returns the full refund record.

Giving support `refunds:read` for status would also let them read full refunds. That route isn't in the diff at all.

Here's a risk note that points the reviewer there:

```plain-text
Blocking risk: the diff uses refunds:read instead of the required
refunds:read_status. That may also open GET /refunds/:id to support.
Check the support-role grant and gateway policy, then correct the
status route before merge.
```

- **What could go wrong:** support could read full refund records.
- **Where to check:** the support role's grants and the gateway policy.
- **What fixes it:** a narrow permission on the status route.

**A shared permission can open routes that never appear in the diff.**

> 💡 When a new route reuses a permission, find every other route that permission guards, and name them in the risk note.

---
## Practice

Your PR guards a new `/orders/:id/summary` route with `orders:read`, which already protects `/orders/:id/export`. The risk note should point reviewers to the ???.

- export route
- new response fields
- new route's tests
- new error handling

---
## Revision

A new route lets support view invoice PDFs by reusing `billing:admin`, which also allows refunds. What should the PR's risk note ask for?

???

- A separate, narrow permission just for viewing invoice PDFs.
