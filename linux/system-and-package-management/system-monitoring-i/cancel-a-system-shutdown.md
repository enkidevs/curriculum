---
author: nene

levels:

  - basic

  - beginner

type: normal

category: how to

tags:

  - shutdown




---

# Cancel a system shutdown

---
## Content

If you started the shutdown either via the terminal or from the GUI and then realised that you didn’t really want to do that, you can use:

```
$ shutdown -c
```
However, note that if the shutdown has already started, it may be too late to cancel it.

Another command to try is :
```
$ pkill shutdown
```

---
## Revision

In order to cancel a shutdown command you can use `shutdown -c` or 

??? .


* pkill shutdown
* kill shutdown
* shutdown -pkill

 
