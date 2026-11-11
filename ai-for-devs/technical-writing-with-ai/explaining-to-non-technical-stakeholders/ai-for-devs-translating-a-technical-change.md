---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: "Write for the reader's decision: end with the action only they can take."
    requiredConcepts:
      - Asks the finance lead for a decision or next step they own, such as refunds.
    acceptedAnswers:
      - Ask them to approve refunds for the 40 customers.
      - Their call on how to refund the affected customers.
      - The refund decision they need to make.
    hints:
      - What does the finance lead need to do next?
      - Who decides on the refunds?
    tooVagueExamples:
      - A summary.
      - Thanks.
    incorrectExamples:
      - The code diff behind the fix.
      - A note that nothing else needs deciding.
      - That a refund will be issued to those 40 people.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Adapt the message to what this audience does next.
    requiredConcepts:
      - Customer-ready wording or talking points support staff can use on calls.
    acceptedAnswers:
      - A plain answer support staff can give callers.
      - What to say if a customer asks why numbers changed.
      - Talking points about which accounts changed and why.
    hints:
      - What will support staff be asked?
      - What do they do next?
    tooVagueExamples:
      - More detail.
      - A simpler explanation.
    incorrectExamples:
      - The SQL change behind the count.
      - The PM's notification decision.
---

# Audience-Appropriate Explanations

---
## Content

When a fix changes numbers other teams rely on, they need an explanation they can act on without reading the diff. An assistant can write the first version, and you decide what goes in.

Say the active-users dashboard undercounted because it ignored activity sent through the API. The fix is one line:

```plain-text
-  WHERE source = 'web'
+  WHERE source IN ('web', 'api')
```

The diff doesn't say who was affected. Validation does:

```plain-text
37 accounts had integration-only activity.
Acme: 1,284 -> 1,336 active users.
No customer data was lost.
```

Here's the update for the PM who owns the dashboard:

```plain-text
Active-user totals were too low for 37 accounts because activity sent
only through integrations was excluded. The fix now includes it; Acme
rises from 1,284 to 1,336. No customer data was lost. Please decide
whether account teams need notice before the weekly report.
```

- **The first sentence** says what was wrong and why, without the SQL.
- **The numbers** give the verified scope, with one real account as an example.
- **The last sentence** asks for the decision only the PM can make.

**Keep the facts the same for every reader, and lead with what this reader does next.**

> 💡 End the message with the decision or action that belongs to the person reading it.

---
## Practice

You tell the finance lead that a bug double-charged 40 customers and is now fixed. What should you ask them for at the end of the message?

???

- A request to decide how and when to refund them.

---
## Revision

You're rewriting an update about corrected active-user totals for the support team, who take customer calls. What should it focus on?

???

- What to tell customers who ask about their numbers.
