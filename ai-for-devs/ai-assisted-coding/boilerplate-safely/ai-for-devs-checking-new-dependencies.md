---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Check whether a dependency is needed at all before choosing which one to use.
    requiredConcepts:
      - Whether the package is needed, or a built-in or existing utility already covers it.
    acceptedAnswers:
      - Whether Node's global fetch already does this.
      - If we need a package for this at all.
      - Whether the runtime or an existing helper already makes HTTP calls.
    hints:
      - Can Node make HTTP calls on its own?
      - Why is the package being added?
    tooVagueExamples:
      - If it's good.
      - Check it.
    incorrectExamples:
      - Whether axios would be a better choice.
      - Which HTTP package has the most downloads.
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Dependency Review

---
## Content

Generated boilerplate often pulls in a new package, and each one you accept is code you now update, audit, and ship.

Here, the generated feature-flag client adds a package just to create a trace ID:

```plain-text
@@ -4,5 +4,6 @@
   "dependencies": {
     "express": "^4.19.2",
-    "pg": "^8.11.5"
+    "pg": "^8.11.5",
+    "uuid": "^9.0.1"
   }
 }
```

**The first question is whether you need a package at all.**

This project's Node version already has `randomUUID()` built in:

```plain-text
$ node -p 'typeof require("node:crypto").randomUUID'
function
```

That removes the reason for adding `uuid`.

> 💡 Check built-in APIs and existing utilities first. Only if none fits, compare packages on maintenance, compatibility, license, and size.

---
## Practice

An AI scaffold for your Node 22 service adds `node-fetch`. Before comparing HTTP packages, what should you check?

???

- Whether it's needed at all; Node 22 already has built-in `fetch`.

---
## Revision

You need a PDF library; nothing built in fits. Two candidates both work. Rule one out if it ???.

- is no longer maintained
- has fewer stars
- was suggested second
- has a thinner README
