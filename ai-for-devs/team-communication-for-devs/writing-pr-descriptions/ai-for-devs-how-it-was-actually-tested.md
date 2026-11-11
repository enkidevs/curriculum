---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A test only covers the path it exercises; handler tests don't prove route authorization.
    requiredConcepts:
      - No, because direct handler calls skip the middleware where the check runs.
    acceptedAnswers:
      - No, the middleware never runs in those tests.
      - Not covered; you'd need a test that hits the route itself.
      - No. Handler tests bypass route auth, so the 403 is unproven.
    hints:
      - Which code do the tests actually run?
      - Where does the 403 come from?
    tooVagueExamples:
      - Partly.
      - Probably not fully.
    incorrectExamples:
      - Yes, all the handler tests passed.
      - Yes, passing unit tests cover the endpoint's behavior.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Test evidence states what remains unchecked; staging results don't prove production config.
    requiredConcepts:
      - Production's gateway config is not checked by the staging test.
    acceptedAnswers:
      - That production's gateway setup hasn't been checked.
      - "Not checked: whether production's config enforces the same limit."
      - A note that staging doesn't prove production's rate limit.
    hints:
      - Does the staging result prove production?
      - What hasn't anyone checked?
    tooVagueExamples:
      - More testing details.
      - A caveat.
    incorrectExamples:
      - Nothing; staging is close enough to production.
      - That the limit works everywhere, since staging passed.
---

# Test Evidence

---
## Content

The testing section of a PR tells the reviewer what's already been checked and what hasn't. It's the part of an AI-drafted description you most need to fill in yourself. "Tested locally" tells the reviewer nothing about either.

Here's a testing section for the new refund-status endpoint:

```plain-text
Automated
  node --test src/refunds/__tests__/status.test.js
  3 passed, 0 failed
  Covers: 200 with the three allowed fields; 404 for a missing refund.

Manual on staging
  Support token: GET status -> 200; POST retry -> 403.

Not checked
  Whether the production support role already receives refunds:read.
```

- **Automated** gives the command, the result, and the behavior the tests cover.
- **Manual on staging** shows the permission check working with a real support token.
- **Not checked** names the gap: production roles may be set up differently from staging.

**Record the command, the result, what it covers, and what's still unchecked.**

Each check proves only the path it ran through. Handler tests call the handler directly, so they skip the route's permission check. A staging check doesn't tell you how production roles are configured.

> 💡 For each check, write which path it ran through. Anything it skipped goes under "Not checked."

---
## Practice

Your passing unit tests call the `exportReport` handler directly; permission checks run in the route's middleware. Do they prove unauthorized users get a 403? Why?

???

- No; calling the handler directly skips the middleware's permission check.

---
## Revision

Your PR's testing section says staging returns a 429 above 100 requests a minute. Production's gateway config differs. What should it add?

???

- A note that production's gateway config is unchecked.
