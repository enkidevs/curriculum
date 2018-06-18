---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

tags:

  - bash

  - linux

  - terminal

  - background



notes: ''

---

# Backgrounding tasks 

---
## Content

Sometimes we need to execute a task that takes a couple of minutes but this task is screen-blocking, and it's a pain to open a new terminal just for it.

In this situation, it can be convenient to just run the task in the background
by adding a `&` at the end of the command:

```
$ ./backup_script.sh &
```

The task might then post some messages while it executes, but you can prevent printing these messages  by redirecting the output to `/dev/null` (printing only the errors):
```
$ ./backup_script.sh > /dev/null &
```

Or, in case you want to silence the errors:
```
$ ./backup_script.sh 2> /dev/null &
```

---
## Revision

You can run a command in the background by adding 

??? at the end of it .


* `&`
* `$`
* `bg`
* `!`

 
