---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A breaking-change note must name the exact inputs that now fail and what callers get back, so each caller can tell if they're affected.
    requiredConcepts:
      - Name the specific inputs that now fail, such as URLs over 2,048 characters.
    acceptedAnswers:
      - The 2,048-character limit and the 400 error.
      - Exactly which requests are now rejected.
      - Which feed URLs break and what response they get.
    hints:
      - How would a caller know if their URLs are affected?
      - What does a rejected caller actually see?
    tooVagueExamples:
      - More detail.
      - Clearer wording.
    incorrectExamples:
      - The name of the engineer who made the change.
      - A longer explanation of why validation matters.
---

# Breaking Changes

---
## Content

Whether you or an assistant drafts the release notes, the entry integrators need most is the breaking change: something their existing requests will now fail on. A PR that looks like a cleanup can be one.

Say PR #611 in a feed service switches URL validation at `POST /feeds` to `new URL()`. In Node 20.11.1, `new URL()` needs a base for a relative input,[1] and this code doesn't pass one.

Here's what the checks show before and after the change:

```plain-text
Input                                  Before   After
https://blog.example.org/rss.xml       saved    saved
blog.example.org/rss.xml               saved    400 invalid_url
ftp://files.example.org/feed.xml       saved    400 unsupported_scheme
Existing stored feeds                  fetched  fetched
```

URLs with no scheme, and `ftp://` URLs, used to save and now return a 400. For anyone sending them, the cleanup is a breaking change.

**The note has to name the inputs that now fail, the error each one gets, and what callers should change.**

Here's that note:

```plain-text
Breaking: POST /feeds now requires an absolute HTTP or HTTPS URL.
Relative inputs return 400 invalid_url; other schemes return 400
unsupported_scheme. Existing stored feeds continue to fetch. Update
callers to send the scheme and host before upgrading.
```

> ‼️ A common mistake is writing only "Breaking: stricter URL validation." Integrators can't tell from that whether their requests are affected.

---
## Practice

PR #611 only tightens URL validation; integrations sending `blog.example.org/rss.xml` now get `400 invalid_url`. Release notes should list it as ???.

- a breaking change
- an internal refactor
- a bug fix
- a performance improvement

---
## Revision

PR #640 rejects URLs over 2,048 characters with `400 url_too_long`. The release note says only "Breaking: stricter URL validation." What's missing?

???

- The 2,048-character limit and the `400 url_too_long` error.

---
## Footnotes

[1: Node.js URL Documentation]
Official Node.js v20.11.1 documentation for `new URL(input[, base])`.
https://nodejs.org/download/release/v20.11.1/docs/api/url.html
