---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Drills find broken paths while there is time to fix them.
    requiredConcepts:
      - Broken paths found before a real incident.
    acceptedAnswers:
      - Two dead rollback paths discovered early.
      - Finding failures before a real rollback needs them.
      - It exposed broken recovery paths in advance.
    hints:
      - When would you otherwise discover these?
      - What would a real incident look like?
    tooVagueExamples:
      - It was useful practice.
      - Learning.
    incorrectExamples:
      - A record that the plan exists.
      - A fresh snapshot taken during the drill.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Rollbacks

---
## Content

When a new configuration misbehaves, you switch back to the previous one. That's called a rollback.

**A rollback works only if every part of the previous configuration still exists and still runs.**

Yesterday, the support assistant moved from config 14 to config 15. Today a rollback drill tried switching back:

```plain-text
rollback drill: config 15 -> config 14
  prompt billing-v22:  restored in 1 minute
  model snapshot:      available
  tools (2):           both work
  index of May 12:     deleted by a cleanup job
```

A nightly job deletes any index more than 30 days old that no live config uses. Once config 15 went live with a newer index, config 14's index matched both rules.

A real rollback would have brought back an assistant with no help articles to search.

The fix was to keep the previous config's parts out of cleanup until the new config has proven itself.

Other parts expire on their own schedule. If config 14 had used a backup provider's model, its API key could lapse unnoticed, since nothing calls it after the switch.

> 💡 Run rollback drills more often than anything expires. They catch both kinds of break while there's still time to fix them.

---
## Practice

A rollback drill finds the old index was deleted by a cleanup job and the backup provider's API key had lapsed. What is its immediate value?

???

- It found two broken rollback paths before anyone depended on them.

---
## Revision

Rollback drills run every 90 days; old indexes last 120 days, backup credentials 60. Between drills, the ??? can expire.

- backup credentials
- old index builds
- previous prompt
- eval dataset
