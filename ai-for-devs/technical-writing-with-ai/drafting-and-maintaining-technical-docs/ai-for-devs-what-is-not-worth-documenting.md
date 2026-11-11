---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Document behavior, rules, or decisions that field names and payloads can't reveal.
    requiredConcepts:
      - A behavior, rule, or constraint that can't be learned from field names or payloads.
    acceptedAnswers:
      - How long unpaid orders stay open before cancelling.
      - Which status changes are allowed, and what triggers them.
      - How long order history is kept.
    hints:
      - What can't someone learn from the payload?
      - What rule would change how they build against it?
    tooVagueExamples:
      - More details.
      - What the fields mean.
    incorrectExamples:
      - That `order_id` is the order's ID.
      - The type of each field.
---

# Documentation Value

---
## Content

Ask an assistant to document an API and it will write a sentence for every field. Every sentence you keep is one more thing to update when the code changes, so part of your job is cutting the ones that don't help.

Here's part of a generated reference page:

```plain-text
`id` is the feed's id. `url` is the feed's url. `created_at` is when
the feed was created. `status` is the feed's status.
```

Each sentence repeats the field's name. Nobody learns anything from it, and someone still has to keep it up to date.

Here's a sentence from the same page that's worth keeping:

```plain-text
Feed items are kept for 45 days, then deleted.
```

Nothing in the payload shows the 45-day limit. Someone building monthly reports against the API needs to know it, or their reports quietly lose older items.

**Document the rules and behavior that someone can't work out from the fields themselves.**

> 💡 For each generated sentence, ask whether the field name already says it. If it does, cut it.

---
## Practice

In a user API reference, the one sentence worth maintaining explains ???.

- when deleted accounts purge
- that responses are JSON
- each user's unique `id`
- `created_at` as a timestamp

---
## Revision

Your order API docs already describe every field by name. What fact about orders is still worth documenting?

???

- When unpaid orders get cancelled; the payload can't show that.
