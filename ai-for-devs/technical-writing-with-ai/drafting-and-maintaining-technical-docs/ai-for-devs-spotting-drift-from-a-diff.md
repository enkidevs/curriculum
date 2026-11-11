---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A diff finds docs to inspect; only claims about changed behavior are proven stale.
    requiredConcepts:
      - The two password-length lines (not the lockout line).
    acceptedAnswers:
      - The 8-character and 10-character lines.
      - Both password lines; login wasn't changed.
      - Lines one and two.
    hints:
      - Which inputs does signup now reject?
      - Did the change touch login?
    tooVagueExamples:
      - The password stuff.
      - Some of them.
    incorrectExamples:
      - All three, since they're on the same page.
      - Only the lockout line.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Verify each drift candidate before editing.
    requiredConcepts:
      - Verify each candidate against the new config.
    acceptedAnswers:
      - Confirm each mention really uses the renamed variable.
      - Check every flagged line against the current config.
      - Verify one by one before changing them.
    hints:
      - Is every flagged mention really affected?
      - What shows current behavior?
    tooVagueExamples:
      - Be careful.
      - Review the page.
    incorrectExamples:
      - Replace every mention; the diff proves drift.
      - Wait for someone to report breakage.
---

# Documentation Drift

---
## Content

Docs go stale quietly when code changes, and the next person follows the old instructions. After a merge, you can paste the diff into an assistant and ask which doc sections it might affect.

Say this merged diff changes feed registration:

```plain-text
@@ -1,8 +1,11 @@
-import url from "node:url";
-
 export function registerFeed(req, res) {
-  const parsed = url.parse(req.body.url);
-  if (!parsed.pathname) {
+  let parsed;
+  try {
+    parsed = new URL(req.body.url);
+  } catch {
     return res.status(400).json({ error: "invalid_url" });
   }
+  if (parsed.protocol !== "http:" && parsed.protocol !== "https:") {
+    return res.status(400).json({ error: "unsupported_scheme" });
+  }
   return saveFeed({ url: req.body.url });
```

- **The `try` block** now rejects anything `new URL()` can't parse, like a path with no host.
- **The protocol check** now rejects every scheme except `http` and `https`.

The assistant flags two doc sections:

```plain-text
Registering a feed
Any URL scheme is accepted. A path with no host is stored as sent.

Errors
A feed that fails to fetch is retried for 12 hours, then marked
unreachable.
```

- **"Registering a feed"** is now false. `ftp://` URLs and paths with no host both get a 400.
- **"Errors"** is only a candidate. It's about fetching, and the diff never touches fetching.

**A diff tells you which sections to check. The changed behavior tells you which ones to edit.**

> ‼️ A common mistake is editing every section the assistant flags. Check each one against the new behavior first, and leave the rest alone.

---
## Practice

Signup now rejects passwords under 12 characters; login is unchanged. Which of these doc lines are now false?

```plain-text
Passwords need at least 8 characters.
Any 10-character password works.
Five failed logins lock the account.
```

???

- The first two; the change doesn't touch the lockout line.

---
## Revision

AI flags a setup page as stale because a diff renamed an environment variable. What do you do before editing every mention?

???

- Check each flagged mention against the new configuration and behavior.
