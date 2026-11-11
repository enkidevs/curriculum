---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A model migration ships like any release, through a canary or other staged rollout before it takes all traffic.
    requiredConcepts:
      - A staged rollout, such as a canary on a small share of traffic, or a test on real traffic before it takes everything.
    acceptedAnswers:
      - A canary on a small share of users first.
      - Roll it out in stages, watching for problems.
      - Send 5% of traffic to it, then widen.
      - Do a test with real traffic.
      - Try it on some real users first.
    hints:
      - How do other releases reach users?
      - What could your evals miss?
    tooVagueExamples:
      - Testing.
      - Be careful.
    incorrectExamples:
      - Switch all traffic on the retirement date.
      - Nothing, since it passed the evals.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Model Migrations

---
## Content

Providers retire old model snapshots, and calls to a retired snapshot fail. Moving your feature to a new model version is called a model migration.

Say the support assistant replies in JSON that its app parses, and its snapshot retires in 90 days. Here's the replacement on its 300 eval cases:

```plain-text
replacement vs current model, 300 eval cases
  quality: same scores on the 279 that parse
  format:  21 replies fail to parse:
           JSONDecodeError: Expecting value:
           line 1 column 1 (char 0)
```

The 21 replies wrapped their JSON in a markdown code fence, so the parser met a backtick where it expected `{`.

Turning on constrained output fixed it. That's a provider option that makes every reply follow the app's JSON schema.

**Then the migration ships like any release, with a canary rollout on a small share of traffic first.** Its 300 eval cases can't cover everything real customers ask.

---
## Practice

The replacement for your retiring model passes your evals. What should happen before it serves all traffic?

???

- A staged rollout, starting with a small share of traffic.

---
## Revision

Your new model wraps its JSON replies in a markdown code fence, so they fail to parse. The provider feature that fixes it is ???.

- constrained output
- a lower temperature
- a stop sequence
- response streaming
