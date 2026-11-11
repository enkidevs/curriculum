---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Polished rationale must not replace the real reason or erase open disagreement.
    requiredConcepts:
      - It swaps the real reason (no capacity this quarter) for a claim nobody made, or hides that the split is still wanted.
    acceptedAnswers:
      - It hides that the choice was about staffing, not architecture.
      - It drops the engineer's view and makes a 'for now' choice look final.
      - Nobody argued the monolith was better; it was a capacity call.
    hints:
      - Why did the team actually keep it?
      - Is the question closed for everyone?
    tooVagueExamples:
      - It's too strong.
      - It sounds biased.
    incorrectExamples:
      - Nothing; it's a neutral summary.
      - It should name who chose the monolith.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Check the narrative against the original discussion.
    requiredConcepts:
      - Go back to the source discussion.
    acceptedAnswers:
      - Check the original thread for doubts or tradeoffs that got dropped.
      - Compare it with the meeting notes and look for dissent.
      - Reread the source conversation for missing constraints.
    hints:
      - Where did the decision actually happen?
      - What might have been smoothed over?
    tooVagueExamples:
      - Read it carefully.
      - Question it.
    incorrectExamples:
      - Check the alternatives section is filled in.
      - Compare with other decision records.
---

# Decision History

---
## Content

When an assistant writes the reasoning in a decision record, it tends to make the choice sound cleaner than it was. Whoever reopens the decision a year later only has that record to go on.

Here's how an assistant summed up a team's choice of built-in search over a dedicated search cluster:

```plain-text
We selected built-in full-text search because it offered the best
balance of relevance, latency, and operational simplicity.
```

Compare it with the team's thread:

- **Latency** is backed by the benchmark.
- **Relevance** was never compared.
- **"Operational simplicity"** hides the real reason: nobody on the team could run a cluster this quarter.
- **Tom's preference** for a cluster has disappeared.

Here's the reasoning as it actually happened:

```plain-text
We chose built-in search for this quarter because it met the latency
target and the team could operate it. A cluster remained Tom's
preferred long-term option; typo tolerance was deferred, not rejected.
```

**A polished summary can erase the constraint that made a decision temporary.**

> 💡 Reread the original thread next to the draft, and put back any constraint or disagreement it dropped.

---
## Practice

A team kept its monolith only because nobody can split out billing this quarter; one engineer still wants the split. An AI draft calls the monolith "the better architecture." What's wrong with that wording?

???

- It turns a temporary staffing constraint into a settled verdict.

---
## Revision

A decision record makes one option look inevitable. How do you test whether that's honest?

???

- Reread the source discussion for dropped constraints or disagreement.
