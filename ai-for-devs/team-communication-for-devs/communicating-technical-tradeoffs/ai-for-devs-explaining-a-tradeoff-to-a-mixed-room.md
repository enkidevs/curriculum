---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Organize the option around the consequence each audience owns, here what support and customers see.
    requiredConcepts:
      - A support-facing consequence of polling, such as customers seeing payment status late.
    acceptedAnswers:
      - Customers may see a payment as pending for up to 5 minutes.
      - Customers can contact support about a paid order that still looks unpaid.
      - Payment status shows up late, so support will get "did my payment go through?" questions.
    hints:
      - What does a customer see in the minutes before the next poll?
      - What would support get asked?
    tooVagueExamples:
      - It's not perfect.
      - Some tech debt.
    incorrectExamples:
      - Webhooks would take longer to build.
      - It makes more API calls (engineering detail with no support consequence).
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Attach technical detail to the option whose consequence it explains.
    requiredConcepts:
      - Detail sits under the option it explains.
    acceptedAnswers:
      - With the option it belongs to, right after its consequence.
      - Inside each option's section, explaining that option's impact.
      - Next to the option whose tradeoff it clarifies.
    hints:
      - Which option does each detail support?
      - Would a separate doc stay connected to the decision?
    tooVagueExamples:
      - In the summary somewhere.
      - Near the technical part.
    incorrectExamples:
      - In a separate document for engineers only.
      - Up front, before the decision.
---

# Mixed-Audience Tradeoffs

---
## Content

When a technical choice affects other teams, you'll often write one note that a PM, a support lead, and an engineer all read.

An assistant can draft it, but if the draft is organized around implementation details, only the engineer finds what they need.

Say the choice is how much of a webhook worker's retry logic to move into its own module. Here's a note organized around consequences:

```plain-text
Decision: scope of the webhook retry extraction.

Option A: move delay selection only.
  Operations: same behavior required; fewer rules move.
  Engineering: about 40 changed lines; policy remains split.

Option B: centralize delays and 4xx eligibility.
  Operations: same behavior required; more rules move.
  Engineering: about 180 changed lines and rewritten worker tests.

Recommendation: A for this behavior-preserving task. Evaluate B
separately if centralizing all retry policy becomes the goal.
```

- **Operations lines** tell the PM and support lead what they'd notice. Both options keep behavior the same.
- **Engineering lines** give the size of each change, under the option it belongs to.
- **Recommendation** picks one and says when the other would make sense.

**Organize the note by what each reader cares about, and put each technical detail under the option it explains.**

> 💡 Before you send it, check that each reader can find their consequence without reading the engineering lines.

---
## Practice

Your tradeoff note recommends polling a payment provider every 5 minutes instead of webhooks. What consequence should it state for support?

???

- Paid orders may look unpaid for up to 5 minutes.

---
## Revision

You're writing a tradeoff summary for engineers and non-engineers together. Where should the implementation detail go?

???

- Under each option, next to the consequence that detail explains.
