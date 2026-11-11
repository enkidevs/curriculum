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
    expectedPoint: Separate behavior changes from refactors.
    requiredConcepts:
      - Split out the rule change.
    acceptedAnswers:
      - Pull the retry-rule change into its own review.
      - Keep the extraction, remove the rule change.
      - Separate them; assess the rule change alone.
    hints:
      - Was the rule change requested?
      - How would you review both at once?
    tooVagueExamples:
      - Fix it.
      - Review carefully.
    incorrectExamples:
      - Approve both; it's simpler.
      - Merge, then restore the rule later.
---

# Refactor Scope

---
## Content

A refactor should move code around without changing what it does. Generated refactors sometimes slip a behavior change in with the moved code, and it's easy to approve both in one review.

Here's everything a coding agent changed in the delivery worker while extracting retry scheduling:

```plain-text
--- a/src/workers/delivery.js
+++ b/src/workers/delivery.js
@@ -2,2 +2,3 @@ import { post } from "../http/client.js";
 import { logger } from "../logger.js";
+import { retryPolicy } from "../scheduling/retryPolicy.js";
 import { enqueueIn, markDelivered, deadLetter } from "./queue.js";
@@ -14,3 +15,2 @@ export async function deliver(job) {
 function shouldRetry(status) {
-  if (status === 408 || status === 429) return true;
   return status >= 500;
@@ -18,13 +18,4 @@ function shouldRetry(status) {
 
-// Retries wait 1, 5 and 30 minutes after the attempt that failed.
-// A delivery that has used all three waits is dead-lettered.
-const RETRY_MINUTES = [1, 5, 30];
-
-function nextAttemptMinutes(attempt) {
-  if (attempt > RETRY_MINUTES.length) return null;
-  return RETRY_MINUTES[attempt - 1];
-}
-
 function scheduleRetry(job, attempt) {
-  const minutes = nextAttemptMinutes(attempt);
+  const minutes = retryPolicy.nextAttemptMinutes(attempt);
   if (minutes === null) {
```

- **The import and the `retryPolicy` call** belong to the extraction.
- **The `shouldRetry` hunk** doesn't. Statuses 408 and 429 used to retry, and now they go to the dead-letter queue[1].

That's a behavior change hidden inside a structural one.

**Ask for a diff that only extracts.** If the retry rule should change, review that separately, with its own reason and tests.

---
## Practice

A diff labeled "extract helper, no behavior change" contains this:

```javascript
 function isRetryable(err) {
-  if (err.code === "ECONNRESET") return true;
   return err.status >= 500;
 }
```

In practice, this change ???.

- stops retrying connection resets
- changes nothing
- stops retrying 5xx
- retries every error

---
## Revision

A diff contains the extraction you requested plus an unrequested retry-rule change. What should you do?

???

- Remove the rule change and review it separately if still wanted.

---
## Footnotes

[1: Dead-Letter Queue]
Where a delivery goes when the normal retry path stops. The system can then inspect, alert on, or replay it according to its recovery process.