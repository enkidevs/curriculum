---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Address the follow-up that changes the reader's next decision, not just the cause.
    requiredConcepts:
      - What happens to decisions already made on the old March figure, such as commission or targets.
    acceptedAnswers:
      - Whether salespeople have to pay back part of their March commission.
      - How paid commissions will be corrected, if at all.
      - That the old figure drove payouts or targets and needs a decision.
    hints:
      - What did the old number already drive?
      - What will the sales lead ask first?
    tooVagueExamples:
      - The impact.
      - More context.
    incorrectExamples:
      - The SQL filter that changed.
      - Which engineer found the bug.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Anticipate the next question that changes what the customer does.
    requiredConcepts:
      - Whether the report they already exported is wrong and needs redoing.
    acceptedAnswers:
      - Do I need to re-export last month's report?
      - Is my old export still right, or do I have to redo it?
      - Does the report I already sent out need correcting?
    hints:
      - What would you ask if your numbers changed?
      - What would change what you do next?
    tooVagueExamples:
      - How it happened.
      - More detail.
    incorrectExamples:
      - Which engineer reviewed the fix.
      - How many lines changed.
---

# Stakeholder Follow-Ups

---
## Content

An assistant's draft of a fix update usually covers what broke and why. It often misses the question that decides what the reader does next, and they'll ask it the moment they read your message.

Say a dashboard fix raises active-user totals for 37 accounts. The PM replies:

```plain-text
Can I reuse last quarter's exported board deck?
```

You already have what you need to answer it:

```plain-text
Historical dashboard months recalculate from stored activity.
Existing slide and spreadsheet exports do not update automatically.
```

So put the answer in the first message:

```plain-text
Historical dashboard months will recalculate, but existing exports
will not. Review the 37 affected accounts before reusing last quarter's
deck or comparing it with a fresh export.
```

**Answer up front the questions that change what the reader does next.** Usually that's who's affected, whether data changed, what they need to do, and when you'll know more.

> 💡 Before you send a fix update, ask what the reader already did with the old numbers.

---
## Practice

A report fix drops March revenue 4%, and sales already acted on the old figure. Besides the cause, what should your message to sales cover?

???

- What happens to decisions made on the old figure, like commission.

---
## Revision

Support tells customers their active-user totals rose, why, and that no data was lost. Some already exported last month's report. What will they still ask?

???

- Whether their exported report is wrong and needs redoing.
