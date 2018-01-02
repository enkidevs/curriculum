# Specify a commit by its ancestry
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

---
## Content

To show a commit's first parent use `^` or `~`, both achieving the same thing:
```
$ git show 34de6f1^
# or
$ git show 34de6f1~
```

To show the second parent of a merge commit:
```
$ git show df23e42^2
# shows parent commit on the branch
# you merged in
```
To show the grandparent of commit `34de6f1`:
```
$ git show 34de6f1^^
# or
$ git show 34de6f1~2
```

---
## Practice

What is the `~` equivalent of `^^^^`?

???
* ~4
* ~3
* ~2
* ~~~~

---
## Revision

The command:
```
$ git show 42ea31d^
```
Gets the ??? of commit `42ea31d`.
* parent
* grandparent
* child

---
## Quiz

headline: how can you access the forth commit in this sequence?

question: |
  Say you've got the following commit tree: A--B--C--D--E--HEAD.
  Which of the following refers to the commit labeled with D?

answers:
  - HEAD~~
  - HEAD^2
  - HEAD^1
  - HEAD~1
