# Helpful Git Commands
author: mihaiberq

levels:
  - medium

type: normal

category: must-know

stub: true

tags:
  - obscura
  - deep

---
## Content

Among the possible answers, `repack` is the only command not recognized by `git`:
- `reflog` is a local record of all commits referenced in your repository, and can be seen as a “saftey net”, useful for recovering lost commits.
- `request-pull` prints in the standard output a report asking the upstream project to `pull` changes into their tree.
- `merge-base` finds best common ancestor(s) between two commits to use in a three-way merge.

---
## Quiz

headline: how familiar are you with git commands?

question: Which of the following is not an actual git command?

answers:
  - git repack
  - git reflog
  - git request-pull
  - git merge-base
