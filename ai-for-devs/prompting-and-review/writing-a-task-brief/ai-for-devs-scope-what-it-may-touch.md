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
    - fill-in-the-gap
  context: standalone
---

# Scope

---
## Content

**The scope says which parts of the code the assistant may change, and which parts it must leave alone.**

Without it, a request for one new route can come back with changes to routes you never mentioned.

For the refund status endpoint, support agents should only be able to read refunds. Here's a scope that allows that and protects everything else:

```plain-text
Scope: one new GET route, its handler, and a dedicated read-status
permission for support. Do not modify existing refund routes, their
permission requirements, or the retry job.
```

- **The first sentence** allows the new route and the permission it needs.
- **The second sentence** protects the existing routes and who is allowed to use them.

---
## Practice

You ask for a read-only refund status endpoint and get an extra `POST /refunds/:id/cancel` route. The missing brief clause was ???.

- scope
- task
- acceptance
- constraints

---
## Revision

A scope clause names what may change but not what must stay untouched, missing the ??? side of the boundary.

- protected
- observable
- stylistic
- testable
