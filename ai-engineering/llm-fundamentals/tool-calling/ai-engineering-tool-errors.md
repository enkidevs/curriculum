---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The model has to guess what null means, and may give a confident wrong answer.
    requiredConcepts:
      - The model can't tell the failures apart, or it guesses and answers wrongly.
    acceptedAnswers:
      - The model guesses what null means and answers wrongly.
      - It might tell the customer the order hasn't shipped.
      - The model can't tell a typo from a timeout.
    hints:
      - How does the model know what null means?
      - What would a typo in the order number look like?
    tooVagueExamples:
      - Errors.
      - It's confusing.
    incorrectExamples:
      - Nothing, since null is valid JSON.
      - The request crashes the model.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The charge may have gone through before the timeout, so a retry could charge twice.
    requiredConcepts:
      - The charge may already have happened, or a retry could charge twice.
    acceptedAnswers:
      - The first charge may have succeeded, so you'd charge twice.
      - A timeout doesn't mean it failed; a retry could double-charge.
      - It might have gone through already.
    hints:
      - Did the card get charged before the timeout?
      - What happens if both attempts succeed?
    tooVagueExamples:
      - Retries are risky.
      - It might fail again.
    incorrectExamples:
      - The model gets confused by the second result.
      - Retrying costs extra tokens.

---

# Tool Errors

---
## Content

When a tool call fails, your code still sends a result back to the model. **The model reads that result like any other, so it has to say clearly what went wrong.**

Say your support assistant's `get_order_status` tool returns the same thing for every failure:

```plain-text
{"status": null}
```

A customer mistypes their order number, the lookup finds nothing, and the model has to guess what `null` means:

```plain-text
Your order hasn't shipped yet. It should go out soon!
```

A typo became a confident wrong answer.

Here's a separate result for each kind of failure:

```plain-text
{"error": "not_found", "retryable": false}
{"error": "permission_denied", "retryable": false}
{"error": "timeout", "retryable": true}
```

Now the model can respond to each one: ask the customer to check the number, explain that the order isn't on their account, or try once more.

> ‼️ Be careful with retries on tools that take actions. If `issue_refund` times out, the refund may have gone through anyway, so mark it `"retryable": false` and check the refund's status before trying again.

---
## Practice

Your tool returns `{"status": null}` for every failure. What can go wrong?

???

- The model guesses what null means and gives a wrong answer.

---
## Revision

A `charge_card` tool call times out. Why is retrying it automatically risky?

???

- The charge may have gone through, so a retry could charge twice.
