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
    - free-form
  context: standalone
  rubric:
    expectedPoint: An actionable blocker names who owns the follow-up, not just the dependency and deadline.
    requiredConcepts:
      - A named owner for following up the request.
    acceptedAnswers:
      - The person responsible for chasing the access grant.
      - Who is following up with the data team.
      - An owner, for example "Lena owns the request."
    hints:
      - Who makes sure the access arrives?
      - Could anyone act on it as written?
    tooVagueExamples:
      - More detail.
      - A next step.
    incorrectExamples:
      - How long you've already been waiting.
      - A fuller explanation of why the demo needs it.
---

# Actionable Blockers

---
## Content

A blocker in a status update is a request for help. It only gets help if the person reading it knows what to do.

An assistant can tidy the wording, and the owner and deadline still have to come from you.

Say an SSO rollout is waiting on a customer's identity-provider details. "Blocked on customer metadata" names the problem and gives nobody a task.

Here's the same blocker written as a request:

```plain-text
Blocked: Northwind's IT admin must send the identity-provider metadata,
including its signing certificate, by Thursday. Ana owns the request.
Without it, provider-initiated login misses Friday's test window and
moves to next week.
```

- **Who unblocks it:** Northwind's IT admin.
- **What must arrive, and when:** the metadata and signing certificate, by Thursday.
- **Who follows up:** Ana.
- **What slips without it:** provider-initiated login moves to next week.

**A blocker needs an owner on your side and the milestone it puts at risk.**

> ‼️ A common mistake is naming the dependency and the deadline and stopping there. If nobody on your team owns the follow-up, everyone assumes someone else is chasing it.

---
## Practice

Your update says "Blocked: the payments team must send the API key by Wednesday. Marco is chasing it." It omits ???.

- which milestone slips
- how long you've waited
- which endpoints need it
- your follow-up cadence

---
## Revision

Your update says "Blocked: the data team must grant events-table access by Tuesday, or Wednesday's demo slips." What's still missing?

???

- Who on your side owns chasing the data team.
