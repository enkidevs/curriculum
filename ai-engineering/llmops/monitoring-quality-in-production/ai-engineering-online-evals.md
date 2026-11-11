---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Rare high-impact slices need their own sample quota.
    requiredConcepts:
      - A separate sample quota for the slice.
    acceptedAnswers:
      - Oversample that slice with its own count.
      - Its own quota and separate reporting.
      - A dedicated sample for refund chats.
    hints:
      - How many would a plain 2% sample contain?
      - Is that enough to measure?
    tooVagueExamples:
      - More samples.
      - Focus on it.
    incorrectExamples:
      - A larger random sample drawn the same way.
      - A monthly rollup.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Production sampling shows real current traffic.
    requiredConcepts:
      - Visibility into real recent production outputs.
    acceptedAnswers:
      - Seeing real traffic from last week.
      - Knowing what users actually got.
      - The live production view.
    hints:
      - What does a fixed set not change with?
      - What does the live sample reflect?
    tooVagueExamples:
      - Freshness.
      - Coverage.
    incorrectExamples:
      - Comparing configurations on identical cases.
      - Human labels.

---

# Online Evals

---
## Content

An offline eval runs on a fixed set of saved cases. Live traffic shows what people send now, including inputs nobody saved.

**An online eval grades a sample of live traffic with the same graders you use offline.**

Here's the online eval for your video-call app's meeting summaries:

```plain-text
online eval, meeting summaries
  sample:  2% of meetings, plus 50 a day in languages other than English
  graders: code check that each action item names an attendee; LLM judge comparing each summary with its transcript
  report:  daily, by config version and language
```

Both graders work without a reference summary, which live meetings don't have. That's why the same graders can run offline and online.

Here's one day's report:

```plain-text
June 14, 10,000 meetings
  English:          0.90  (194 graded)
  other languages:  0.74  (56 graded)
```

Non-English meetings are 3% of traffic, so a plain 2% sample would grade about 6 of them, too few to trust. The extra 50 make the drop visible, and the language split shows where it is.

> 💡 Give rare, important groups their own sample quota, and report them separately. Each graded output costs a judge call, which is why it's a sample at all.

---
## Practice

Only 1% of your support chats are about refunds, but mistakes there are costly. How should your online eval sample treat them?

???

- Give refund chats their own sample quota, reported separately.

---
## Revision

An engineer proposes replacing the weekly production sample with the fixed offline eval set. What would that swap give up?

???

- A view of what production actually sent last week.
