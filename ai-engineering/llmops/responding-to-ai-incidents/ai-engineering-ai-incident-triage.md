---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: One passing rerun doesn't prove the fix.
    requiredConcepts:
      - The failure isn't deterministic; nothing more.
    acceptedAnswers:
      - That it doesn't fail every time.
      - Just that the failure is intermittent.
      - Not a fix, only that it can pass.
    hints:
      - Are model outputs the same each run?
      - What would show it's resolved?
    tooVagueExamples:
      - It's fixed.
      - Not much.
    incorrectExamples:
      - The failure has stopped.
      - It was caused by load.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# AI Incident Triage

---
## Content

Early in an incident, you need to know what went wrong, for whom, since when, and on which config version. Working that out is called incident triage.

On Tuesday morning, support staff report that a mobile carrier's support assistant is quoting the wrong EU roaming price. Here are the triage notes an hour later:

```plain-text
what:     quotes $12/day for EU roaming; price is $10
for whom: chats about roaming, about 1,500 so far
since:    Monday 23:10, the first bad trace
config:   16, live from Monday 23:00 (index rebuild)
traces:   12 saved, all retrieved "EU roaming 2027 (draft)"
```

The last three lines point at the cause. Monday night's index rebuild picked up a draft help article with next year's planned price.

Rerunning one bad chat would prove little.

Here's one question asked twice on config 16:

```plain-text
"How much is the EU roaming pass?"
try 1: "The EU roaming pass is $10 a day."
try 2: "The EU roaming pass is $12 a day."
```

The index holds both the published and the draft article, so each try can lean on either one.

**A rerun that passes shows only that the failure doesn't happen every time.**

> 💡 Save example traces early. They're your evidence now, and they become test cases for the fix.

---
## Practice

An engineer reruns one failed chat and it passes. What does that single run establish?

???

- Only that the failure doesn't happen on every run.

---
## Revision

Early in an AI incident, saving example ??? gives you evidence now and test cases for the fix.

- traces
- dashboards
- alerts
- screenshots
