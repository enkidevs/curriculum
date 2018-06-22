---
author: nene

levels:

  - basic

  - beginner

type: normal

category: must-know

tags:

  - chaining operators




---

# `else` statements using the `||` operator 

---
## Content

The `OR` operator (`||`) allows you to execute the second command _if and only if_ the first command fails.

```
$ cd ~/
$ mkdir newFolder
$ mkdir newFolder || cd newFolder
```

For example, if you try to run `mkdir newFolder` when the folder already exists, the command fails and the next one is executed:
```
mkdir: cannot create directory 'newFolder':
                        File exists
user@pc:~/newFolder$ #cd'd into it
      
```

---
## Revision

Consider:
```
$ rm enki || echo 'fail'
```
`||` will execute the second command if and only if 

??? .


* the first command fails
* the first command succeeds
* "enki" is already installed

 
