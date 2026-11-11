---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Least privilege applies to the credential, not just the tool list the model sees.
    requiredConcepts:
      - The credential is broader than the workflow needs.
    acceptedAnswers:
      - Its credential can still cancel subscriptions.
      - Over-privileged service credentials behind the tools.
      - Hiding tools isn't enough; the credential should be narrowed.
    hints:
      - What does the model's tool list actually limit?
      - What could the code's credential do?
    tooVagueExamples:
      - Security is weak.
      - Too many permissions somewhere.
    incorrectExamples:
      - No prompt rule forbidding cancellations.
      - The model was shown too many tools.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Swap the key for a read-only one, so the service refuses any change the code sends, bug or not.
    requiredConcepts:
      - Give the tool a read-only key, or one that can't cancel subscriptions.
    acceptedAnswers:
      - Use a read-only key for that tool.
      - A key that can only read invoices.
      - Narrow the key so cancelling is refused.
    hints:
      - Which part decides what the billing service allows?
      - What does reading an invoice actually need?
    tooVagueExamples:
      - Fix the key.
      - Tighten security.
    incorrectExamples:
      - Remove the cancel tool from the model's list.
      - Add a prompt line saying never to cancel anything.

---

# Least-Privilege Credentials

---
## Content

Each tool's code calls your services with a credential, usually an API key. The service allows whatever that key allows, however short the model's tool list is.

**So the key behind each tool needs least privilege too.**

Say the billing assistant's `get_invoice` tool only needs to read invoices, but a bug makes it call the wrong endpoint. Here's that call run with two keys:

```plain-text
full-access key
  DELETE /subscriptions/sub-77  ->  200 OK, cancelled
read-only key
  DELETE /subscriptions/sub-77  ->  403 Forbidden
```

- **The full-access key** lets the bug cancel a customer's subscription, even though the model never had a cancel tool.
- **The read-only key** makes the billing service refuse any change, whatever the code sends.

The same limit holds when an injected instruction steers a tool's arguments. The key decides the most damage that call can do.

---
## Practice

Your agent sees only invoice-reading tools, yet a code bug cancels a subscription. What design gap allowed it?

???

- The credential behind the tools can do more than the task needs.

---
## Revision

Your `get_invoice` tool runs with a key that can also cancel subscriptions. What change caps what a bug in that code can do?

???

- Give that tool a read-only key.
