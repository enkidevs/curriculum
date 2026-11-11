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
    - fill-in-the-gap
  context: standalone
---

# User-Visible Changes

---
## Content

An assistant can draft release notes, but you still decide which merged changes users will notice and which belong in the internal changelog. Put an internal refactor in the release notes and customers go looking for a difference that isn't there.

Here are the PRs merged for the feed service's 3.3.0 release:

```plain-text
#611 Registration rejects inputs it previously accepted. User-visible.
#613 Duplicate feed items no longer appear. User-visible.
#615 Fetching uses the shared client; before-and-after checks show the
     same requests, responses, and errors. Internal refactor.
#618 Registration documentation was updated. Reader-visible resource,
     but no runtime behavior changed.
```

- **#611 and #613** change what users get back, so they go in the release notes.
- **#615** was a big change for the team, but users get the same requests, responses, and errors, so it goes in the internal changelog.
- **#618** only changes the docs, so it's a link in the notes.

**What decides the section is whether a user or integration would notice the change.** How much work it took, or how risky it was, doesn't move it.

> 💡 Sort each PR by what users can see. A large refactor can stay internal, and a one-line change to an error message belongs in the notes.

---
## Practice

A large refactor swaps the HTTP client; tests verify identical requests, responses, and errors. For release notes, the change is ???.

- internal
- user-visible
- breaking
- a speedup

---
## Revision

A commit rewords an error message customers see directly; the status code is unchanged. For release notes, the change is ???.

- user-visible
- internal
- documentation only
- breaking
