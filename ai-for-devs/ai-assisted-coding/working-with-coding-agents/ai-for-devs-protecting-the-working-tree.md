---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Restoring a tracked file throws away its unstaged changes.
    requiredConcepts:
      - The unstaged edits are discarded.
    acceptedAnswers:
      - They're lost.
      - The file goes back to the last commit and my changes are gone.
      - It wipes the unstaged modifications.
    hints:
      - What does restore put back?
      - Were the changes saved anywhere?
    tooVagueExamples:
      - Something bad.
      - It resets things.
    incorrectExamples:
      - They're moved to a stash automatically.
      - Only untracked files are affected.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Preserve existing work before an agent edits the same file.
    requiredConcepts:
      - Save your existing work first, for example by commit, stash, or branch.
    acceptedAnswers:
      - Commit or stash my changes before it starts.
      - Make a WIP commit so my edits are safe, then let it edit.
      - Move my edits to a branch or stash so they can't get mixed in.
    hints:
      - What if the agent rewrites the file?
      - How would you tell your lines from its lines?
    tooVagueExamples:
      - Be careful.
      - Watch what it does.
    incorrectExamples:
      - Let it edit and recover my lines from the diff.
      - Ask it to leave my lines alone.
---

# Working Tree Safety

---
## Content

A coding agent edits the same checkout you work in, so its changes can tangle with your uncommitted work, or wipe it out.

Before a broad edit, check the branch and working tree:

```plain-text
$ git branch --show-current
main
$ git status --short
 M docs/webhooks.md
 M src/workers/delivery.js
```

You're on `main` with two uncommitted edits, and one is in the file the agent plans to rewrite.

**If the agent proposes `git checkout .` to start clean, both edits are gone, and Git can't bring back work it never recorded.**

> 💡 Before the agent starts, commit or stash your work, give the agent its own branch, and agree which files it may touch.

---
## Practice

`src/app.js` holds your uncommitted edits. An agent proposes `git restore src/app.js`. What happens to your edits if you approve?

???

- They're discarded and can't be recovered from Git.

---
## Revision

An agent needs to edit a file holding your unrelated uncommitted work. What should you do first?

???

- Commit or stash your work so the agent's change stays separate.
