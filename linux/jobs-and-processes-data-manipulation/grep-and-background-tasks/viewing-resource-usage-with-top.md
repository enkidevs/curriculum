---
author: jfarmer
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Viewing Resource Usage With `top`


---

## Content

Whereas `ps` will display a snapshot of the currently-running processes, the `top` command will give a continuous, sortable display.  `top` is often used to see which processes are consuming the most CPU or memory.

Here is some example output from `top`, sorted by memory usage.  The `...` represent columns deleted in order to make the output fit:

```plain-text
PID   USER   ...  %CPU %MEM    TIME+ COMMAND
14944 jesse  ...  0.0  9.5  17:03.55 ruby
14947 jesse  ...  0.0  9.2  17:03.19 ruby
3164  mysql  ...  0.3  2.5  13:31.83 mysqld
```

You can read `man top` to learn about all the ways to configure the display.  On Linux, the following commands are common:

1. Type `P` to sort by CPU usage (an actual capital `P`, not `p`)
2. Type `M` to sort by memory usage
3. Type `<` to move the sorted column one to the left
4. Type `>` to move the sorted column one to the right
5. Type `q` to quit


---

## Practice

In contrast to `ps` , `top` displays processes

???

- in real time
- as a snapshot
- sorted by memory usage
- of all users
- only owned by the current user


---

## Revision

To display the processes running in real time, you would use

???.

- top
- ps
- ms
- procstat
