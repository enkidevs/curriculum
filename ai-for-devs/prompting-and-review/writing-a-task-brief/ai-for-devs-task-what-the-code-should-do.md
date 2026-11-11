---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A task clause names a request and the result it returns, not a goal or an implementation.
    requiredConcepts:
      - Names a specific request or action and what comes back.
    acceptedAnswers:
      - Add an Export button that downloads the user's orders as a CSV.
      - Add GET /orders/export returning date, items, and total for each order.
      - Let a signed-in user download all their orders as a CSV file.
    hints:
      - What does the user do, and what do they get back?
      - Could someone check your clause by trying it?
    tooVagueExamples:
      - Make order export work well.
      - Let users export orders easily.
      - Create a way for users to export their orders, like a button.
    incorrectExamples:
      - Add an exportOrders helper in utils/orders.js that loops over rows.
      - Use the csv-writer package for exports.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A task clause describes observable behavior, not how to build it.
    requiredConcepts:
      - It describes how to build it instead of the observable result.
    acceptedAnswers:
      - It says how, not what the code should return.
      - It names files and helpers instead of the expected behavior.
      - It doesn't say what result a caller should see.
    hints:
      - Does it say what result comes back?
      - Who should choose the helper and file?
    tooVagueExamples:
      - It's unclear.
      - It needs work.
    incorrectExamples:
      - It doesn't list enough files.
      - It should name the test framework.
---

# Task

---
## Content

The first part of a brief is the task. It says what the code should do, in a way you could check by trying it.

Here's the vague refund request from before, rewritten as a task:

**🚫 Weak**

```plain-text
Add refund visibility for the support team.
```

**✅ Stronger**

```plain-text
Add GET /refunds/:id/status for support agents. Return the refund's
status, amount, and updated_at value.
```

- **The first** names a goal but not what the code should do, so the assistant decides that for you.
- **The second** names the endpoint and what it returns, so you can check the result by calling it.

**The task describes what the code should do and leaves how to build it to the assistant.**

---
## Practice

Your ticket says "Let users export their orders." Rewrite it as a task that says what the user does and what they get back.

???

- Add GET /orders/export that returns the user's orders as a CSV file.

---
## Revision

What's wrong with this task clause: "Add a `getInvoiceTotal` helper in `billing/utils.js` that loops over line items"?

???

- It prescribes implementation, not the behavior callers should observe.
