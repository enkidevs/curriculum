---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Release summaries describe verified behavior; a refactor isn't a speed claim without a measurement.
    requiredConcepts:
      - The speed claim isn't backed by any measurement or verified behavior.
    acceptedAnswers:
      - It invents a performance benefit.
      - No benchmark says it's faster.
      - It's a refactor, not a proven speedup.
    hints:
      - What would prove it's faster?
      - What did the PR actually change?
    tooVagueExamples:
      - It's unclear.
      - Wrong wording.
    incorrectExamples:
      - Nothing; shared clients are faster.
      - It should say imports are much faster.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Release notes list only behavior traced to merged, verified work.
    requiredConcepts:
      - Omit it until merged work proves it.
    acceptedAnswers:
      - Not yet; a ticket and branch name don't prove it shipped.
      - No, there's no merged PR or test behind it.
      - Leave it out until you can link merged, tested code.
    hints:
      - What shows it actually shipped?
      - Does a branch name prove anything?
    tooVagueExamples:
      - Maybe.
      - Only if it's ready.
    incorrectExamples:
      - Yes, ticket and branch agree.
      - List it as shipped, verification pending.
---

# Merged Change Summaries

---
## Content

Release notes are a good job to hand an assistant, as long as it drafts from what actually merged. A note built from the milestone or ticket list tells customers about behavior they may not get.

Say you're writing notes for a feed service's 3.3.0 release. Start from the commits merged since the last release:

```plain-text
$ git log --oneline v3.2.0..HEAD
072e923 Document the registration rules in docs/feeds.md (#618)
a1fa0ff Bump the XML parser one patch version (#616)
f8dfe85 Move feed fetching onto the shared HTTP client (#615)
712e105 Fix duplicate items when a feed changes its item ids (#613)
a723d9d Reject relative and non-http(s) URLs at registration (#611)
```

Open each PR and its tests before you describe what it does. #615, for example, only moves code, so a draft that says "imports are faster" needs a measurement behind it.

The milestone also lists:

```plain-text
- Feeds are now re-validated every 24 hours.
```

That ticket, #620, is closed, but no merged commit or test in this release covers it. It may have been built somewhere, and nothing shows it's in 3.3.0.

**A release note needs merged code and a check that the behavior works.** Tickets, branch names, and milestones only show what the team planned.

> 💡 Leave out any item you can't trace to a merged commit in the release range. Add it to the release that actually ships it.

---
## Practice

A PR only moves feed fetching to a shared client. An AI release draft says "Feed imports are now faster." What's wrong?

???

- Nothing measured shows it's faster; the PR only moved code.

---
## Revision

A closed ticket has a branch `add-24h-revalidation` but no merged PR or test. Should release notes include it? Why?

???

- No; leave it out until it traces to merged, verified work.
