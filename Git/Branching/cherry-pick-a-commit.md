# Cherry-pick a commit
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

parent: managing-branches

links:

  - >-
    [swsblog.stanford.edu](https://swsblog.stanford.edu/blog/cherry-picking-small-git-lesson){website}

---
## Content

Cherry-pickin[1]g is the[2]  method to apply a single, specific commit from another branch.iA  

For example:
```
$ git checkout master
$ git cherry-pick a456bd7
# merge commit a456bd7 (from another branch)
# with branch master
```
This is most useful when you are unable to merge the two branches. For example, you might want to fix a security issue present in both branches.

![my image]
(%253Csvg%2520width%253D%252230%2522%2520height%253D%252230%2522%2520viewBox%253D%25220%25200%252030%252030%2522%2520xmlns%253D%2522http%253A%252F%252Fwww.w3.org%252F2000%252Fsvg%2522%253E%250A%2520%2520%253Ctitle%253E%250A%2520%2520%2520%2520Page%25201%250A%2520%2520%253C%252Ftitle%253E%250A%2520%2520%253Cpath%2520d%253D%2522M25.6%252025.6c3-3%25204.4-6.5%25204.4-10.6%25200-4-1.5-7.7-4.4-10.6C22.6%25201.4%252019%25200%252015%25200%252011%25200%25207.3%25201.5%25204.4%25204.4%25201.4%25207.4%25200%252011%25200%252015c0%25204%25201.5%25207.7%25204.4%252010.6%25203%25203%25206.5%25204.4%252010.6%25204.4%25204%25200%25207.7-1.5%252010.6-4.4zM15%25202.6c3.4%25200%25206.4%25201.2%25208.8%25203.6%25202.5%25202.4%25203.7%25205.4%25203.7%25208.8%25200%25203.5-1.2%25206.4-3.7%25208.8-2.4%25202.5-5.4%25203.7-8.8%25203.7-3.4%25200-6.4-1.2-8.8-3.7-2.4-2.4-3.7-5.3-3.7-8.8%25200-3.4%25201.3-6.4%25203.7-8.8%25202.4-2.4%25205.4-3.7%25208.8-3.7zM7.2%252018c0%25202.4.8%25204.2%25202.2%25205.4%25201.4%25201.2%25203.2%25201.8%25205.7%25201.8%25202.4%25200%25204.3-.6%25205.6-1.8%25201.5-1.2%25202.2-3%25202.2-5.3%25200-.2%25200-.5-.3-.6-.2-.2-.4-.3-.7-.3H8.2c-.3%25200-.5.2-.7.4-.2%25200-.3.4-.3.7zm3.5%25204c-.8-.8-1.3-1.7-1.4-3h11.5c-.2%25201.2-.7%25202.2-1.5%25203-1%2520.8-2.4%25201.2-4.2%25201.2-1.8%25200-3.2-.4-4.3-1.3zm-3.5-8.2c.4.4%25201%2520.6%25201.4.6.6%25200%25201-.2%25201.5-.6.5-.4.7-1%2520.7-1.4%25200-.6-.2-1-.6-1.5-.3-.5-.8-.7-1.4-.7-.5%25200-1%2520.2-1.4.6-.4.3-.6.8-.6%25201.4%25200%2520.5.2%25201%2520.6%25201.4zm14%2520.6c.7%25200%25201.2-.2%25201.6-.6.4-.4.6-1%2520.6-1.4%25200-.6-.2-1-.6-1.5-.4-.5-1-.7-1.5-.7s-1%2520.2-1.4.6c-.5.3-.7.8-.7%25201.4%25200%2520.5.2%25201%2520.6%25201.4.3.4.8.6%25201.3.6z%2522%2520fill%253D%2522%2523000%2522%2520fill-rule%253D%2522evenodd%2522%2520fill-opacity%253D%2522.4%2522%252F%253E%250A%253C%252Fsvg%253E%250A)

---
## Practice
The commit cherry-picked in the example was applied on ???. ???

*master
*second
---
## Revision

In order to apply a *single* commit (from another branch) on the current branch, you use
```
$ git ??? a456bd7
```
*`cherry-pick`
*`pick`
*`merge
---
## Footnotes

[1:ala bala]
Hello there.

[2:two]
Second footnot
