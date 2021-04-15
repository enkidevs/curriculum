---
author: catalin
type: normal
category: must-know
links:
  - >-
    [Git Tools
    Stashing](https://git-scm.com/book/en/v2/Git-Tools-Stashing-and-Cleaning){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Stashing


---

## Content

Another highly useful feature of **Git** allows you to *set aside* current work; usually to switch branches without losing uncommitted changes.

Stashing is the action of saving all your dirty files (modified **tracked** files and **staged** changes) in a special *stack*[1] of commits. Any of the commits in **the stash**  can be later popped, restoring the state of the working tree.

The key to this feature is the **Git** command `git stash`.

If you have some modified files, you can check on them with `git status`:

```bash
git status
# ...
# Changes to be committed:
#    modified: enki.txt

```

To stash your changes:

```bash
git stash
# Saved working directory and index state
# HEAD is not at e0bb942 ...
```

Checking again, the working directory is clean:

```bash
git status
# On branch master
# You branch is up-to-date with
# 'origin/master' ...
```

You can see all your stashed changes:

```bash
git stash list
# stash@{0}: WIP on master: 049d078 ...
# stash@{1}: WIP on master: 21d80a5 ...
```

To apply the latest stashed changes[2]:

```bash
git stash apply
```

To apply a specific stashed set of changes, you must specify its name:

```bash
git stash apply stash@{2}
```

You can also remove from the stash stack:

```bash
git stash drop stash@{0}
```

To both *apply* and *drop* the stash, the `pop` command can be used:

```bash
git stash pop
```


---

## Practice

Complete the code snippet below so it removes the most recent set of changes in the stash:

```bash
git stash ??? ???@???
```

- `drop`
- `stash`
- `{0}`
- `{1}`
- `list`
- `pop`
- `status`


---

## Revision

Complete the command below such as the most recent set of changes in the stash are applied:

```bash
??? ??? ???
```

- `git`
- `stash`
- `apply`
- `pop`
- `git-stash`
- `push`
- `@{1}`
- `list`


---

## Footnotes

[1:stack]
A **stack** is an abstract data type on top of which `git`'s stash is built.
The name **stack** comes from the analogy to a set of physical items (e.g. plates) stacked on top of each other. You can only add an element to the *top* of the stack or remove the *topmost* element of the stack. This principle is called **LIFO** - last in, first out.

Commits in the **stash** are counted from index `0`; more recent commits, with a higher index, sit *above* older ones  .

[2:apply]
**Git** will update (modifying) the files uncommitted or unstaged when the stash was saved. Keep in mind that the staged files are not re-staged. To do that you must use the `--index` flag:

```bash
git stash --index
```

The `apply` and `pop` can be used within **any** branch.  In this way you can move changes to another branch
