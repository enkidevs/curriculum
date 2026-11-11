---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: No. Faithfulness means every claim is supported by the retrieved passages, and one claim isn't.
    requiredConcepts:
      - No, because one claim isn't supported by the retrieved passages.
    acceptedAnswers:
      - No. One claim has no support in the passages.
      - Not faithful, even though it's true.
      - No, every claim has to come from the passages.
    hints:
      - What does faithfulness compare the answer against?
      - Does being true make a claim supported?
    tooVagueExamples:
      - Mostly.
      - Kind of.
    incorrectExamples:
      - Yes, because every claim is true.
      - Yes, as long as most claims cite a passage.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Split the answer into its claims and check each one against the retrieved passages.
    requiredConcepts:
      - Break the answer into claims, and check each against the retrieved passages.
    acceptedAnswers:
      - List its claims and check each against the passages.
      - Go claim by claim and look for support in what was retrieved.
      - Have a person or model check every claim against the sources.
    hints:
      - What does faithfulness look at, the whole answer or each claim?
      - What do you compare each claim with?
    tooVagueExamples:
      - Read it.
      - Check it.
    incorrectExamples:
      - Compare it with the model's training data.
      - Check that the answer cites at least one source.

---

# Faithfulness

---
## Content

A RAG bot should answer only from the passages your app gave it.

**An answer is faithful when every claim in it is supported by those passages.**

Here's the one passage a docs bot retrieved for "How do I restore a backup?":

```plain-text
[1] Restore from a backup: Stop the server first.
A restore overwrites current data.
```

The model answered:

```plain-text
Stop the server, then run the restore [1]. Your
current data is backed up automatically before
it's overwritten.
```

To check faithfulness, split the answer into claims and check each one against the passages. A person or a second model can do it:

```plain-text
Claim 1: Stop the server, then restore.
  Supported by [1]
Claim 2: Current data is backed up first.
  Not in any passage
```

The second claim isn't in the passage, and a customer who trusts it could skip a manual backup and lose data.

> ‼️ One unsupported claim fails the answer, even if it happens to be true, because the bot is meant to answer only from your docs.

---
## Practice

Every claim in your bot's answer is true, but one isn't in the retrieved passages. Is the answer faithful?

???

- No. One claim isn't supported by the retrieved passages.

---
## Revision

How do you check whether a RAG answer is faithful?

???

- Split it into claims and check each against the retrieved passages.
