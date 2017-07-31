# Recover lost code
author: rosielowther

levels:

  - advanced

type: normal

category: must-know

parent: check-the-reflog

links:

  - '[ochronus.com](https://ochronus.com/git-tips-from-the-trenches/){website}'

---
## Content

If you have committed or pushed your code anywhere, then in most cases it is not lost for good.

To check the reflog:
```
$ git log -g
```
If the lost commit is there, you can retrieve it using its checksum[1]:
```
$ git branch myBranch ca3df45
```
Then you can merge this into your current branch.

To search for orphan commits[2]:
```
$ git fsck --full
```
Again you can merge a commit into your current branch.

---
## Practice

Create a `newBranch` that has the `ba23fe1` commit as the starting point:
```
$ git ??? ??? ba23fe1
```
* `branch`
* `newBranch`
* `temp`
* `log`
* `reflog`
* `master`

---
## Revision

Check the reflog :
```
$ git ??? ???
```
* `log`
* `-g`
* `-m`
* `-l`

---
## Footnotes

[1:checksum]
A checksum is a count of the number of bits in a transmission unit that is included with the unit so that the receiver can check to see whether the same number of bits arrived. 
[2:orphan commits]
Orphan commits are just commits that get lost in various scenarios. One such example would be running `git reset --hard HEAD^`.