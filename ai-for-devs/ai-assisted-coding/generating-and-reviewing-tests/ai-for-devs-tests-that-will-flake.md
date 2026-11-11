---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Flakiness comes from uncontrolled variation, such as reading the clock twice; control the source.
    requiredConcepts:
      - Two separate clock readings can differ and cross the boundary.
    acceptedAnswers:
      - Setup and the check read the clock separately, so the time moves between them.
      - Two Date.now() calls; the gap can push the token over its expiry.
      - The test depends on real time passing between two reads.
    hints:
      - How many times does the test read the clock?
      - What if a millisecond passes between the reads?
    tooVagueExamples:
      - Randomness.
      - The test is bad.
    incorrectExamples:
      - The function under test is wrong.
      - The test needs a retry.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Remove the variation by controlling the time source; retries only hide it.
    requiredConcepts:
      - Inject a fixed time (or frozen clock) used by both setup and the code.
    acceptedAnswers:
      - Inject a fake clock set to one timestamp.
      - Pass a fixed `now` to both the fixture and the function.
      - Freeze time with fake timers so both reads match.
    hints:
      - What changes between the two clock reads?
      - Can the test choose the time?
    tooVagueExamples:
      - Make it stable.
      - Fix the timing.
    incorrectExamples:
      - Retry it up to three times on CI.
      - Give it a longer timeout on CI.
---

# Test Flakiness

---
## Content

A flaky test passes and fails on the same code. Once a suite flakes, people rerun red builds instead of reading them.

Generated tests that read the clock are prone to it. This one passes most of the time:

```javascript
const token = { issuedAt: Date.now() - TOKEN_TTL_MS + 1 };
assert.equal(isTokenValid(token.issuedAt, Date.now()), true);
```

It reads the clock twice, with one millisecond of margin. If the clock moves between the two reads, the token hits its expiry and the assertion fails.

**Control the source of the variation instead of adding retries.** `isTokenValid` already takes `now`, so pass one fixed time to both the setup and the assertion.

Other common sources of variation are test order, randomness, shared fixtures, and network state.

---
## Practice

A generated test sets `issuedAt: Date.now() - TTL + 1`, then asserts `isTokenValid(issuedAt, Date.now())`. It sometimes fails. Why?

???

- Two clock reads; the gap can push it past expiry.

---
## Revision

A generated test and the code it checks each read the clock, so it flakes on CI. What beats a retry?

???

- Inject one fixed time into both setup and code.
