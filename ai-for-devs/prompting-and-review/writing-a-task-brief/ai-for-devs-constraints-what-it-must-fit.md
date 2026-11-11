---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Constraints state the rules the change must fit, such as the runtime it has to run on.
    requiredConcepts:
      - The production runtime or Node version the code must run on.
    acceptedAnswers:
      - The Node version production runs.
      - A runtime constraint, like the Node version it has to support.
      - The runtime or version the code must run on.
    hints:
      - What differs between your laptop and production?
      - Would the assistant know which Node version you run?
    tooVagueExamples:
      - More information.
      - Better instructions.
    incorrectExamples:
      - A test that covers the crash.
      - Which file the fix should go in.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A pasted sample is only context; the constraint must say what to reuse and what to keep separate.
    requiredConcepts:
      - Something specific to the update route that shouldn't carry over, such as its permission or write access.
    acceptedAnswers:
      - Its permission check, giving the endpoint the wrong access.
      - The code that changes orders.
      - The write-level access rule from the update route.
    hints:
      - What does the update route allow that a read-only one shouldn't?
      - Which permission does the sample use?
    tooVagueExamples:
      - The wrong things.
      - Some of the code.
    incorrectExamples:
      - The router setup and handler signature.
      - Nothing; a sample says exactly what to reuse.
---

# Constraints

---
## Content

Constraints are the rules the change has to follow, like the Node version, the framework, or a pattern your codebase already uses.

For the refund status route, the existing refund routes show how permissions are checked:

```javascript
router.get("/refunds/:id", requirePermission("refunds:read"), showRefund);
router.post("/refunds/:id/retry", requirePermission("refunds:retry"), retryRefund);
```

The first route returns the whole refund record. If the new route copied its `refunds:read` permission, support agents could see more than the task allows.

> ‼️ If you only say "follow this pattern", the assistant may copy everything in the example, including the permissions.

Here's a constraint that keeps the pattern but gives the new route its own permission:

```plain-text
Constraints: use the existing requirePermission middleware with
refunds:read_status. Keep refunds:read on the full-refund route and
refunds:retry on the retry route. Match showRefund's handler signature.
```

**When you show the assistant an example to follow, say which parts to copy and which to keep separate.**

---
## Practice

An assistant's fix passes locally on Node 20 but crashes on production's older Node. What constraint did the brief lack?

???

- The runtime version the code must run on in production.

---
## Revision

For a read-only endpoint, your brief pastes an order-update route and says "follow this pattern." What shouldn't the assistant copy?

???

- The update route's permission or write behavior.
