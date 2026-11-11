---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Disproving the removal claim does not make the replacement safe; test it in your project.
    requiredConcepts:
      - Test or verify the replacement in your own project before relying on it.
    acceptedAnswers:
      - Run our tests against the new call.
      - Try it with our actual inputs first.
      - Check its docs for my version, then run the tests.
    hints:
      - Does a correct status check prove the new code works?
      - What could differ for your inputs?
    tooVagueExamples:
      - Be careful.
      - Review it.
    incorrectExamples:
      - Nothing; the docs already confirmed the API status.
      - Ask the assistant whether the replacement is safe.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Current docs show API status; your installed version and tests show what applies to your project.
    requiredConcepts:
      - The library version your project actually has installed.
    acceptedAnswers:
      - Which library version is in our lockfile.
      - Whether our installed version has the rename.
      - The docs for the version we run, plus our tests.
    hints:
      - Are the latest docs about your version?
      - Where is your installed version recorded?
    tooVagueExamples:
      - Other sources.
      - If it's right.
    incorrectExamples:
      - Nothing; the latest docs are authoritative.
      - Whether the assistant agrees with the docs.
---

# Current Information

---
## Content

A model doesn't know about changes made after it was trained, and docs it finds online may be for a different version than yours.

So when an assistant says an API you use was removed, check first. Say it tells you this:

```plain-text
url.parse() was removed in Node 20. Switch to new URL(req.url).
```

A quick check shows the function still exists in your Node version:

```plain-text
$ node -v && node -e 'console.log(typeof require("url").parse)'
v20.11.1
function
```

The Node 20 docs[1] list `url.parse()` as deprecated, which means it still works for now.

**If you do switch, test the replacement first.** For example, `new URL()` throws an error on a relative path like `req.url` without a base URL:

```plain-text
$ node -e 'new URL("/refunds/42?full=true")'
TypeError: Invalid URL
```

> 💡 Before you act on a claim that something was removed or renamed, read the docs for the version your project actually uses.

---
## Practice

An assistant says an API was removed; the docs say only deprecated. You still want to use its replacement. What's left before merging?

???

- Test the replacement on your runtime with real inputs.

---
## Revision

A library's latest docs say a function was renamed. What should you check before changing your code?

???

- Which version your project runs, and whether the rename applies there.

---
## Footnotes

[1: Node.js URL Documentation]
Official Node.js v20.11.1 documentation for `url.parse()` and `new URL()`.
https://nodejs.org/download/release/v20.11.1/docs/api/url.html
