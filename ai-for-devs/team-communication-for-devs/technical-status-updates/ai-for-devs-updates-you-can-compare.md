---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Consistent structure makes weekly updates comparable.
    requiredConcepts:
      - Keep the same sections each week.
    acceptedAnswers:
      - Use the same template and order every week.
      - Stick to fixed headings and definitions each time.
      - Keep last week's structure so updates line up.
    hints:
      - How would you compare two weeks?
      - What should stay fixed?
    tooVagueExamples:
      - Make it clearer.
      - Be more consistent in tone.
    incorrectExamples:
      - Pick headings that fit each week's story.
      - Only report newly completed work.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Changing structure hides movement between updates.
    requiredConcepts:
      - Hard to see what moved week to week.
    acceptedAnswers:
      - You can't compare them line by line to spot changes.
      - It's hard to tell what progressed or slipped.
      - You must reread both to find differences.
    hints:
      - What do you want to learn from two updates?
      - Where would you look for changes?
    tooVagueExamples:
      - They're confusing.
      - They look different.
    incorrectExamples:
      - None, each fits its own week's facts.
      - They lose detail a template would cut.
---

# Comparable Status Updates

---
## Content

An assistant drafting your weekly update from scratch may pick fresh headings each time. Each update reads well, and you can't compare one week with the next.

Here are two weeks written with the same sections:

```plain-text
Week 5
Done: metadata exchange
In progress: user-initiated login
Blocked: none
Forecast: pilot September 21, high confidence

Week 6
Done: user-initiated login on staging
In progress: provider-initiated login
Blocked: signing certificate, due Thursday
Forecast: pilot September 28, medium confidence
```

Read side by side, four things moved:

- **Done:** user-initiated login is finished.
- **In progress:** work moved on to provider-initiated login.
- **Blocked:** a new blocker, the signing certificate.
- **Forecast:** the pilot slipped a week, with lower confidence.

**Keep the labels the same every week, so the only thing that changes is the facts.**

> 💡 Give the assistant last week's update and ask it to reuse the same sections in the same order.

---
## Practice

An assistant invents new headings and ordering for every weekly status update. What should you tell it to do?

???

- Reuse the same sections, order, and definitions every week.

---
## Revision

Two consecutive weekly updates use different headings and ordering. What problem does that create when you read them together?

???

- You can't see what changed without rereading both in full.
