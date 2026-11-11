---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Passing tests don't mean generated code is wired into the app.
    requiredConcepts:
      - Nothing calls or uses it yet.
    acceptedAnswers:
      - Nothing calls it, so it isn't integrated.
      - It's not wired into the app yet.
      - The app never uses it.
    hints:
      - Who calls it?
      - Would a real request ever reach it?
    tooVagueExamples:
      - It's incomplete.
      - Something's off.
    incorrectExamples:
      - It's ready, since the tests pass.
      - It needs more unit tests.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Mounting is one seam; auth, config, error handling, and logging still need checking.
    requiredConcepts:
      - "Names a remaining seam: auth, config source, error handling, or logging."
    acceptedAnswers:
      - That it sits behind the admin auth middleware.
      - Where it reads its config from.
      - How its errors and logs reach the app's handlers.
    hints:
      - Who should be allowed to call an admin route?
      - Where do its settings and errors go?
    tooVagueExamples:
      - Integration.
      - That it works.
    incorrectExamples:
      - Nothing; it's mounted and tested.
      - Whether it has more tests than other routes.
---

# Integration Points

---
## Content

Generated code often arrives with its own tests, and those tests can pass while nothing in your app uses the code yet.

Say a scaffold produces `src/flags/middleware.js` and its unit tests. Search for where the app uses it:

```plain-text
$ rg "flagsMiddleware" .
src/flags/middleware.js:3:export function flagsMiddleware(req, res, next) {
test/flags/middleware.test.js:1:import { flagsMiddleware } from "../../src/flags/middleware.js";
```

The only matches are the definition and its own test. No route or app file mounts it, so the tests pass while no request ever reaches it.

**Mounting is one of several connections to check before you call generated code integrated:**

- what imports or mounts it
- where its configuration comes from
- which authentication runs before it
- how its errors and logs flow

---
## Practice

A generated `exportReport()` passes its tests, but a repo search finds only its definition. What does that tell you?

???

- Nothing in the app calls it yet, so it isn't wired in.

---
## Revision

Your generated `/admin/refunds` route passes its tests and `app.js` mounts it. Before calling it integrated, what else should you check?

???

- Whether the admin auth check actually runs before it.
