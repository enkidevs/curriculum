---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Narrow containment removes only the unsafe action and keeps the rest running; routing that action to review is a strong extra.
    requiredConcepts:
      - Remove only the refund action, keeping replies running.
    acceptedAnswers:
      - Revoke the refund tool and send refunds to a person.
      - Disable just refunds; staff issue them for now.
      - Pull the refund grant, keep replies running.
    hints:
      - Which single action causes the harm?
      - Who issues refunds in the meantime?
    tooVagueExamples:
      - Stop the agent.
      - Contain it fast.
    incorrectExamples:
      - Turn the whole feature off.
      - Tell the model to be careful with refunds.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: "Recovery needs repeatable evidence, not just the symptom stopping: incident cases, the full eval set, and a limited canary."
    requiredConcepts:
      - Evidence the fix holds, such as repeated passes on the incident cases, the full eval set, or a limited canary.
    acceptedAnswers:
      - Repeated passes on the cases that failed.
      - Rerun incident cases and the full eval set.
      - Incident cases pass, then a small review-only canary.
    hints:
      - Could the symptom have stopped by chance?
      - Which cases prove it's fixed?
    tooVagueExamples:
      - Make sure it works.
      - Confirmation.
    incorrectExamples:
      - Nothing; the wrong credits stopped.
      - A root-cause write-up first.

---

# Incident Containment

---
## Content

While you work on the real fix, the first job is to stop the harm from growing. That's called incident containment.

**The harm decides the move:**

| If the harm is | Contain with |
|---|---|
| Wrong quotes | Roll back to config 15 |
| Wrong charges | Turn off the tool |
| Most answers wrong | Switch to fallback |

Say the support assistant has been quoting a draft roaming price of $12 a day since config 16 rebuilt its help-article index.

Quotes are the only harm, since the `add_roaming_pass` tool charges the price from the billing system. Rolling back to config 15 restores the old index and keeps every other answer working.

Before calling it contained, you replay the 12 saved incident chats against config 15. Each runs five times, since one passing run can be luck:

```plain-text
replay: 12 incident chats x 5 runs, config 15
  quotes $10:  60 of 60
  quotes $12:   0 of 60
```

Every run quotes the published price, so the rollback holds.

---
## Practice

Your AI support assistant issues wrong refunds but answers tickets correctly. What containment stops the harm and keeps the rest?

???

- Remove its refund permission and route refunds to a person.

---
## Revision

You turned off your support chat's credit tool and rolled back its prompt. What must pass before credits go back on?

???

- The saved incident cases, on several runs each.
