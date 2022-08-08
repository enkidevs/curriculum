---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [Git Tool Rerere Official
    Documentation](http://git-scm.com/book/en/v2/Git-Tools-Rerere){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Remember the results of previous hunk conflicts


---

## Content

The "Reuse Recorded Resolution" tool (`rerere`) permits git to remember how you chose to resolve a merge conflict. The next time this conflict appears git can automatically resolve it for you.

To turn on `rerere`:

```bash
git config --global rerere.enabled true
```

To see what `rerere` will remember as the resolution:

```bash
git rerere diff
-- - a/hello.js
+++ b/hello.js
-<<<<<<<
-  console.log("hello world");
-=======
-  console.log("hi Enki");
->>>>>>>
+  console.log("hello Enki");
 end
```

This is useful, for example, if you have a topic branch that you want to be sure will merge cleanly further down the line. You can merge every so often, resolve the conflicts then back out of the merge. When you come to merge for the last time, git will remember how to resolve the conflicts.


---

## Practice

Practice: The command to enable the *Reuse Recorded Resolution* tool is:

```bash
??? ??? ??? ???.??? ???
```

- `git`
- `config`
- `--global`
- `rerere`
- `enabled`
- `true`


---

## Revision

rerere(“Reuse Recorded Resolution”) ??? the way you ??? a ??? conflict and automatically resolves it for you.

- saves
- solved
- merging
- shares
- pulling
