---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The campaign raises the bug's priority. Its technical severity stays the same.
    requiredConcepts:
      - Priority rises because of the campaign, or severity stays the same while urgency goes up.
    acceptedAnswers:
      - Fix it sooner; the typo itself is no worse technically.
      - Raise its priority because of the traffic, keep severity low.
      - It gets scheduled first, but the bug's technical impact is unchanged.
      - Priority goes up because of the campaign.
      - Fix it before the campaign; it's more urgent now.
    hints:
      - Did the bug itself get worse?
      - What does the campaign change?
    tooVagueExamples:
      - It matters more now.
      - Something should change.
      - Fix it asap as you have time.
    incorrectExamples:
      - Both, since more people will see it.
      - Severity, since the campaign raises the stakes.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Business commitments can raise priority even when severity stays low.
    requiredConcepts:
      - A business or customer consequence at stake.
    acceptedAnswers:
      - A key customer needs that workflow tomorrow.
      - A contract deadline depends on it.
      - A demo or launch relies on the broken flow.
    hints:
      - Who depends on it?
      - When?
    tooVagueExamples:
      - It matters more.
      - Impact.
    incorrectExamples:
      - The assistant is very confident.
      - It uses the standard template.
---

# Severity And Priority

---
## Content

Triage makes two separate calls. Severity is how bad the bug is technically. Priority is how soon it gets fixed. Mixing them up is how a minor-looking bug ends up hurting a customer conversation.

Say several customers report that the usage page lists API keys in the wrong order. An assistant groups the reports and applies the team's severity scale:

```plain-text
Suggested severity: S3. Display ordering only. No data loss, failed
requests, or security impact reported.
```

That fits the evidence it was given. What it doesn't know is how the page gets used.

Account managers open this page during renewal calls. If the wrong key shows on top, they can bring up the wrong overage charge with a paying customer.

The bug is no worse technically, so severity stays S3. Priority goes up because those renewal calls are happening now.

**The team sets priority, because people know which commitments depend on the bug.**

> 💡 Let the assistant group reports and apply your severity scale. Before you set priority, ask who depends on the broken flow and when.

---
## Practice

A pricing-page typo has low technical severity. A big campaign hits that page tomorrow. What changes, and why?

???

- Priority rises for the business consequence; technical severity stays low.

---
## Revision

An assistant rates a defect low severity because it loses no data. What fact could still raise its priority?

???

- A big customer demo depends on that flow tomorrow.
