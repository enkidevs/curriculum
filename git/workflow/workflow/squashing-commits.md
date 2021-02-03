---
author: rosielowther
type: normal
category: best-practice
links:
  - >-
    [Git and Github
    Hacks](https://ponyfoo.com/articles/git-github-hacks){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Squashing commits


---

## Content

If you contribute to an open source project, e.g., by submitting a pull request with a bug fix, it should be presented as one unit of code.

You should **squash** your commits together. For example, if you have three commits:

```bash
git reset HEAD~3
git add .
git commit -am "Fix bug #14"
git push --force
```

The `--force` option is needed if the commits have already been pushed, for them to be replaced. **Beware** that this overwrites the previous history so always avoid when possible.

By squashing you can get rid of `"fix typo"` commits and have all your changes grouped in just one commit. This will keep the maintainer happy! 


---

## Revision

Squashing commits means 

??? .

- combining them into one big commit
- deleting them
- commiting them
