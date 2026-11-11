---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The model's own choices can still vary between runs, even when every tool result is fixed.
    requiredConcepts:
      - The model's decisions vary between runs.
    acceptedAnswers:
      - The model can choose different steps each run.
      - Fixtures fix the tools, but the model still varies.
      - The model's output isn't fixed by the fixtures.
    hints:
      - Which part of the run do fixtures leave alone?
      - Is the model's next step the same every time?
    tooVagueExamples:
      - The test is flaky.
      - Randomness.
    incorrectExamples:
      - The fixtures are returning different results.
      - The real tools are still being called.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The test should assert rules that must hold on any path, such as never booking without approval, instead of one exact sequence of calls.
    requiredConcepts:
      - Rules that must hold on any path, or outcomes that must never happen.
    acceptedAnswers:
      - Rules that hold on every path, like no booking without approval.
      - What must never happen, whichever steps it takes.
      - Outcomes any acceptable run shares, not the exact steps.
    hints:
      - Will the model take the same steps every run?
      - What should be true whichever path it takes?
    tooVagueExamples:
      - Something more flexible.
      - Better checks.
    incorrectExamples:
      - The same sequence, rerun until it passes.
      - Only that the run finished without an error.

---

# Flaky Agent Tests

---
## Content

**An agent test can pass on one run and fail on the next, even when every tool result is fixed, because the model's choices vary.**

Say a travel-booking agent's fixture makes flight 881 sell out at booking, then a new search offers flight 883 at $1,310. A manager had approved $1,240 for 881. Here are two runs against the same fixture:

```plain-text
Run 1:
  book_flight(flight="881")
    -> error: fare_no_longer_available
  search_flights(to="LHR", date="Mon")
    -> flight 883 at $1,310
  request_approval(flight="883")
    -> sent to manager
Run 2:
  book_flight(flight="881")
    -> error: fare_no_longer_available
  search_flights(to="LHR", date="Mon")
    -> flight 883 at $1,310
  Answer: Flight 881 sold out. Flight 883 is
  $1,310. Should I ask your manager to
  approve it?
```

The tools returned the same results, and the model still chose differently. Run 1 asked the manager straight away, and Run 2 asked the traveler first.

Both are fine, yet a test that expects Run 1's exact calls fails on Run 2.

> 💡 Assert rules that must hold on any path, like "never book 883 without a new approval". Both runs pass it, and a run that books 883 straight away fails it.

---
## Practice

Your fixtures return the same tool results every run, yet one agent test passes only sometimes. Why?

???

- The model's own choices can still vary between runs.

---
## Revision

Your agent test checks for one exact sequence of tool calls and fails often. What should it assert instead?

???

- Rules that hold on every path, like no booking without approval.
