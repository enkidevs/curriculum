---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

aspects:

  - introduction
  - deep

links:

  - '[Branching Workflows Official Documentation(http://git-scm.com/book/en/v2/Git-Branching-Branching-Workflows){website}'


---

# Workflow: long running branches

---
## Content

Long-running branches are branches that you create to work on for the long-term.

For example, the branch `master` could be for stable code and `develop` for testing.

You could create a fix to a new issue on the topic branch `iss14`. You could merge this with `develop` and test its stability:
```
$ git checkout develop
$ git merge iss14
# merge into develop
# test the stability
```
If the fix proves to be stable, you could then merge with `master`.

This can be helpful for large, complex projects.

---
## Revision

For complex projects, the best practice is to work on ??? .

* auxiliary branches        
* master branch
* a single other branch

 
