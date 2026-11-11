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
    expectedPoint: A citation makes a claim checkable; it does not prove the summary is complete.
    requiredConcepts:
      - Citations don't show that nothing was omitted.
    acceptedAnswers:
      - Whether it skipped branches it never mentioned.
      - Left-out behavior has no citation for you to check.
      - Completeness; references support each claim, not the whole file.
    hints:
      - What do the citations let you check?
      - How would a left-out branch show up?
    tooVagueExamples:
      - Not really.
      - It depends.
    incorrectExamples:
      - Nothing; every claim is cited and correct.
      - Nothing, as long as the citations cover the main function.
---

# Source-Linked Summaries

---
## Content

When an assistant summarizes unfamiliar code, like the redirect service, each claim is only useful if you can check it. Asking for the file, function, and line behind each claim makes that quick:

```plain-text
Expired links return 410 (resolve.js, resolveCode, line 34).
```

Here's the cited code:

```javascript
if (link.expires_at && link.expires_at < now) return { status: 410 };
if (link.revoked_at) return { status: 404 };
```

The claim about expired links holds. But the summary left out the line right below it: revoked links return 404.

**A citation makes a claim quick to check, but it can't show what the summary left out.**

> 💡 Ask for the files, functions, tests, or doc sections behind each claim, rather than phrases like "the redirect code".

---
## Practice

The most reviewable claim in a code summary ???.

- cites its source
- sounds confident
- hedges with probably
- mentions tests exist

---
## Revision

Every claim in an assistant's `refunds.js` summary cites a line that checks out. What can't the citations tell you?

???

- Whether it left out anything the file does.
