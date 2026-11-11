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
    expectedPoint: Ask something whose answer points to one cause over the other.
    requiredConcepts:
      - Answer differs between the two causes.
    acceptedAnswers:
      - After clearing cache, does the same checkout show methods?
      - Does a fresh session with the same cart fix it?
      - If you bypass the cache, are methods listed?
    hints:
      - What behaves differently if cache is the cause?
      - Can they try it quickly?
    tooVagueExamples:
      - Can you give more details?
      - When did it start?
    incorrectExamples:
      - Which browser?
      - Can you send a screenshot?
---

# Clarifying Questions

---
## Content

A vague bug report leaves plenty of open questions, and sending the reporter all of them slows the fix down. The first question to ask is the one whose answer rules out one of your explanations.

Say the usage page doesn't list an account's busiest API key first. One explanation is that request counts arrive as strings. Text sorting compares character by character, so `"9"` lands above `"100"`.

So ask about counts that sort differently as text and as numbers:

```plain-text
On an affected account, do the counts have different digit lengths,
such as 9 and 100?
```

Then ask about an account where text and number sorting agree:

```plain-text
On the same build, does an account with only three-digit counts
sort correctly?
```

- **If mixed lengths fail and equal lengths work,** string sorting becomes the likely cause.
- **If both fail,** something else is going on, and you move to your next explanation.

**A useful question has answers that point to different causes.** Ask for the browser, version, or timing only when the answer would tell your explanations apart.

> ‼️ A common mistake is opening with "Which browser?" or "Can you send a screenshot?" The answer is the same whichever cause it is.

---
## Practice

Some users' dashboards show yesterday's date, either a timezone bug or a stale cache. Ask the reporter first about ???.

- affected regions
- their browser
- a screenshot
- how many users

---
## Revision

Checkout shows no payment methods: stale cache, or empty provider response? What question for the reporter separates them?

???

- If you clear the cache and retry, do payment methods appear?
