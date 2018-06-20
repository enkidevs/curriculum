---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

  - beginner

type: normal

category: feature

tags:

  - terminal

  - bash

  - linux

  - history

  - commands

  - incognito

  - workout




aspects:
  - workout


---

# Terminal incognito mode

---
## Content

To temporarily disable command logging in the terminal, use:
```bash
$ set +o history 
```
Or, alternatively:
```bash
$ shopt -uo history 
```
To enable command logging once more, run:
```bash
$ set -o history 
```
Alternatively:
```bash
$ shopt -so history 
```
There are no noticeable differences between the two commands, both being used to modify the same optional shell behavior.

---
## Practice

Complete the snippet to disable command tracking:
```
$ ??? ??? ???
```

* `set`
* `+o`
* `history`
* `-o`
* `shopt`

---
## Revision

```
$ set -o history
```
??? command tracking.


* enables
* disables

 
