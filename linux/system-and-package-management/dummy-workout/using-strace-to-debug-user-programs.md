---
author: aakarsh

levels:

  - advanced

  - medium

type: normal

category: how-to

---
# Using `strace` to debug user programs

---
## Content

`strace` allows users to trace 
system calls issued by user programs.
Such trace information can be useful 
for debugging and understanding program behavior without having to look at the 
programs source.

In the following example we can see the system calls being issued by the following `cat` invoked via strace:

```bash
strace cat /etc/passwd
execve("/bin/cat", ["cat"
...
open("/etc/passwd", ....)
.....
read(3, "root:..., 65536)
```

Here we see that the `cat` command is calling the `open` system call using the user provided file name after which it issues a `read` call.The `-p pid` can be 
used to attach to a program which is already running on the system.
 
 
 
