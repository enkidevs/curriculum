# Rebasing
author: catalin

levels:

  - advanced

  - medium

type: normal

category: must-know

---
## Content

Rebasing is the process of modifying the base commit from which a series of commits stems. This is achieved with the `git rebase` command.

```
$ git rebase <base>
```

The base argument can be any one of:
 - commit ID
 - branch name
 - a tag
 - relative reference to `HEAD`

It might seem that rebasing just moves a `branch` from a starting `commit` to another, but internally the whole process is done by **re-writing** the history of your project through multiple commits applied to the **base**.

To start an *interactive* rebase you use the `-i` flag:
```
$ git rebase -i branch
```

This will give you the option of modifying individual commits throughout the process instead of automatically moving the commits to a new **base**.

Keep in mind that rebasing shouldn't be done to *public* projects as this operation can lead to terrible confusion because history is being rewritten.

---
## Revision

How would you start an **interactive** rebase?
```
$ git ??? ??? branch
```

*`rebase`
*`-i`
*`i`
*`--int`
*`revert`
*`merge`
*`interactive`
