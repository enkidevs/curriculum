---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: "Check every JSDoc claim against the code: default, return, errors, and side effects."
    requiredConcepts:
      - "Names at least two of: notify defaults to true not false; it resolves to the user ID not void; the invalid-email error is missing; the user creation or email sending is missing."
    acceptedAnswers:
      - The default is wrong and the thrown error isn't documented.
      - It returns the new user's ID, and it can send an email.
      - notify is true by default; invalid emails throw.
      - The `notify` default and the return type.
    hints:
      - What does the function actually return?
      - What happens when notify is true?
    tooVagueExamples:
      - It doesn't match the function.
      - The return value and stuff.
    incorrectExamples:
      - email should be typed as an object.
      - notify defaults to false, as written.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Valid JSDoc syntax doesn't show the claims match the implementation and tests.
    requiredConcepts:
      - Whether the block's claims match the implementation or its tests.
    acceptedAnswers:
      - That the documented behavior matches what the function does.
      - The claims against the code and tests.
      - If the defaults and return type are actually right.
    hints:
      - What does a linter check?
      - Could valid JSDoc describe the wrong behavior?
    tooVagueExamples:
      - The docs.
      - Everything.
    incorrectExamples:
      - Whether the JSDoc tags are valid.
      - The code style of the function.
---

# JSDoc Verification

---
## Content

JSDoc is the `/** */` comment format your editor shows on hover and type checkers can read. Assistants write it quickly, and callers trust it, so a wrong default or return type sends them the wrong way.

Here's a generated block. It's valid JSDoc, and it's wrong in several places:

```javascript
/**
 * @param {string[]} skus
 * @param {Set<string>} acceptedIds
 * @param {boolean} [dryRun=true]
 * @returns {number} accepted count
 */
function failedSkus(skus, acceptedIds, dryRun = false) {
  if (!Array.isArray(skus)) {
    throw new TypeError("skus must be an array");
  }
  if (!dryRun) audit.record(skus.length);
  return skus.filter((sku) => !acceptedIds.has(sku));
}
```

- **`[dryRun=true]`:** the code defaults it to `false`, so a caller who leaves it out writes to the audit log.
- **`@returns {number}`:** the function returns an array of the SKUs that failed.
- **What's missing:** the `TypeError` for a non-array, and the audit record when `dryRun` is off.

**Check every parameter, default, return, error, and side effect against the code.** Then let tests confirm edge cases, like an empty array or `dryRun` skipping the audit.

> ‼️ A common mistake is approving a block because the linter accepts it. The linter checks the format, and only the code tells you whether the claims are true.

---
## Practice

This generated JSDoc is valid and wrong:

```javascript
/**
 * @param {string} email
 * @param {boolean} [notify=false]
 * @returns {Promise<void>}
 */
async function inviteUser(email, notify = true) {
  if (!email.includes("@")) throw new Error("invalid email");
  const user = await db.users.create({ email });
  if (notify) await mailer.send(email);
  return user.id;
}
```

The `email` type is correct. Name two things it gets wrong or leaves out.

???

- `notify` defaults to true, and it resolves to the user's ID.

---
## Revision

Your linter accepts an AI-written JSDoc block, so a teammate approves it. What has nobody checked yet?

???

- Whether its defaults, return, and errors match the actual code.
