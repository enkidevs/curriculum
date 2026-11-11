---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Each failure's record names its cause, so failures can be grouped and counted.
    requiredConcepts:
      - The failure's cause or type, specific enough to group it with similar failures.
    acceptedAnswers:
      - What went wrong for the customer and which component to check first.
      - A failure type plus where in the system to look.
      - The harm caused and the likely layer, like retrieval or validation.
      - Its cause, like retrieval missing the policy, so failures can be grouped.
    hints:
      - Which part of the system would you check first?
      - What would let you put similar failures together?
    tooVagueExamples:
      - More details.
      - A label.
    incorrectExamples:
      - The overall pass rate for the run.
      - The model's confidence score for each reply.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The failures share a retrieval cause, so the fix belongs in retrieval.
    requiredConcepts:
      - Retrieval, or the search step, because the right section never reached the model.
    acceptedAnswers:
      - In retrieval; the warranty page never got found.
      - The search step, since the model never saw the warranty page.
      - Fix retrieval so warranty questions find the warranty page.
    hints:
      - Did the model ever see the warranty page?
      - Which step chooses the pages the model sees?
    tooVagueExamples:
      - Fix the system.
      - In the data.
    incorrectExamples:
      - Rewrite the prompt to mention warranties.
      - Switch to a larger model.

---

# Error Analysis

---
## Content

A score says how many cases failed but not what to fix.

For that, you read the failing cases, group them by cause, and count each group. This is called error analysis.

Say prompt v5 for the refund drafter fails 18 of 200 eval cases, in these groups:

```plain-text
wrong return window on a bundle order: 8
no policy section cited: 5
replied in English to a Spanish question: 3
wrong refund amount on a partial return: 2
```

Bundle orders cause almost half. Here's one of the eight, with what retrieval found:

```plain-text
question:  Can I return the knife set from my bundle? It arrived 20 days ago.
retrieved: returns-1 (30-day window), shipping-2
reply:     "Yes, you have 30 days to return it."
expected:  no, bundles-1 sets a 14-day window
```

The bundle section never reached the prompt, so the model applied the general 30-day rule.

**The other seven fail the same way, so the fix belongs in retrieval, the step that finds policy sections.**

The biggest group usually goes first. A smaller group can jump ahead when each failure costs more, like a wrong refund amount that pays out real money.

> 💡 After any fix, run the full eval again. A change that fixes bundles can break something else.

---
## Practice

23 of 200 replies failed your eval, and nobody knows where to start. What should each failure's record say?

???

- Its cause, like retrieval missing the policy, so failures can be grouped.

---
## Revision

Seven failing warranty questions all retrieved the shipping page instead of the warranty page. Where does the fix belong?

???

- In retrieval, since the warranty section never reached the model.
