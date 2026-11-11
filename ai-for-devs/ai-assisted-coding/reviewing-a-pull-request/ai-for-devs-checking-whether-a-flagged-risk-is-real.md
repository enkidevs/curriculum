---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: State only the part of a flagged risk the trace supports.
    requiredConcepts:
      - Admins (not anyone) can export with no size limit.
    acceptedAnswers:
      - Signed-in admins can pull unlimited exports.
      - No size limit, but only for admins.
      - Admin users can export everything with no cap.
    hints:
      - Who can actually reach the route?
      - Which part of the flag held up?
    tooVagueExamples:
      - There's a risk.
      - It might be abused.
    incorrectExamples:
      - Anyone on the internet can download every record.
      - Nothing; the login makes it safe.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A verified risk comment cites the code path that shows it.
    requiredConcepts:
      - The specific code location that shows the missing check (route or middleware setup).
    acceptedAnswers:
      - The line where the route is registered without auth.
      - The router file and the middleware it skips.
      - The exact route and the path I traced.
    hints:
      - What would let the author see it without redoing your trace?
      - Which code shows the gap?
    tooVagueExamples:
      - The problem.
      - The code.
    incorrectExamples:
      - The assistant's original warning.
      - A general note that auth is missing somewhere.
---

# Risk Verification

---
## Content

AI review tools flag possible problems in a pull request, and some flags are only partly right. Post one unchecked, and the wrong part goes out under your name.

Reviewing the invite-resend PR, an assistant flags this:

```plain-text
The resend endpoint has no rate limit. Any signed-in user can send
unlimited invite emails.
```

**Before you post it, trace the whole request path:**

```plain-text
Application: no global request limiter.
/orgs/:id/invites prefix: requireOrgMember only.
POST /:inviteId/resend: no route or handler limiter.
Sibling /members prefix: orgRateLimit(20, "1h").
```

The sibling `/members` limiter doesn't wrap the invite route, so the missing-limit part holds. "Any signed-in user" doesn't: callers must be organization members.

Your comment can now state the verified risk and point to the route: organization members can call the resend endpoint again and again with no limit.

> ‼️ A common mistake is posting a flagged risk as written. One sentence can mix a real problem with a wrong detail, so check each part.

---
## Practice

An assistant flags an export endpoint as open to anyone with no size limit. You confirm no limit, but admin login is required. What should your comment say?

???

- Admins can export without any size limit.

---
## Revision

You've confirmed an assistant's flag: a new `/admin/stats` route has no auth check. What should your review comment point to?

???

- The route definition that's mounted without auth middleware.
