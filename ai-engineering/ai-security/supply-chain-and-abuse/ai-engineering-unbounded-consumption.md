---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A per-visitor message cap and a per-message token cap both limit what the script can spend, and a spend alert catches the rest.
    requiredConcepts:
      - Any two of a per-person or per-visitor message cap or rate limit, a token cap per message, or a total spend cap or alert.
    acceptedAnswers:
      - A per-visitor rate limit and a max input size.
      - Cap tokens per message and messages per minute.
      - A rate limit per visitor, plus a daily spend cap.
    hints:
      - What limits how often one visitor can send?
      - What limits how big one message can be?
    tooVagueExamples:
      - Some limits.
      - Watch the costs.
    incorrectExamples:
      - A longer timeout on each request.
      - A smaller model, so each message costs less.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Per-call and rate caps don't bound the total; the workflow also needs a total cap.
    requiredConcepts:
      - Nothing caps the total number of summaries over time.
    acceptedAnswers:
      - Every extra open dashboard adds more summaries.
      - No daily or per-user cap on total summaries.
      - Per-call limits don't cap how many calls happen.
    hints:
      - How many summaries can one day produce?
      - What limits the total, not each call?
    tooVagueExamples:
      - It could get expensive.
      - Usage.
    incorrectExamples:
      - Summaries longer than 500 words.
      - Refreshes faster than once a minute.

---

# Unbounded Consumption

---
## Content

When nothing caps usage, it can run up cost or use up capacity. Huge inputs, an agent looping on tool calls, and someone hammering your endpoint can all do it. That's called unbounded consumption.

A public help-center chat launched with no limits. One night, a script sent it a 50,000-token message every second.

At an illustrative $3 per million input tokens, that's about $540 an hour. The flood also used up the team's rate limit, the provider's cap on requests and tokens per minute, so real visitors got errors.

The team added these limits:

```plain-text
per visitor:   20 messages a minute, 200 a day
per message:   4,000 input tokens, 800 output tokens
per agent run: 10 tool calls
whole feature: alert at $200 an hour, pause at $1,000 a day
```

Here's the same script against them:

```plain-text
second 1   50,000 tokens  ->  rejected, input cap
second 2   50,000 tokens  ->  rejected, input cap
...
second 21  50,000 tokens  ->  blocked, visitor cap
```

**Each message was rejected before any model call, so the script cost nothing.**

The other two lines cover what this script didn't try:

- **Per agent run:** stops a run that keeps calling a tool, since each round is another paid model call.
- **Whole feature:** catches what gets past the rest, like thousands of visitors at once.

---
## Practice

Anyone can send your public assistant 50,000-token messages in a loop. Name two limits that cap the cost.

???

- A per-visitor message cap and a cap on input tokens per message.

---
## Revision

Each open dashboard regenerates a 500-word summary at most once a minute. What still lets total spend grow without limit?

???

- No total cap; spend grows with every dashboard left open.
