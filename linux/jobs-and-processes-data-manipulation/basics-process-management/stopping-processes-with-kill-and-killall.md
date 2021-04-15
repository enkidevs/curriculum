---
author: jfarmer
type: normal
category: tip
links:
  - >-
    [Kill
    signals](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_12_01.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Stopping Processes With `kill` And `killall`


---

## Content

Oftentimes we want to kill a process that is consuming too many resources or has otherwise become unresponsive.  The two most common tools for this are `kill` and `killall`.

The `kill` command expects to be given a process ID (or PID), which can be found using the `ps` command.  The `killall` command expects to be given the *name* of a process, whereupon it will attempt to kill every process with that process name.

Consider the following output from `ps`:

```shell
ps
  PID TTY           TIME CMD
20735 ttys000    0:00.10 -bash
 3086 ttys002    0:00.70 -bash
```

We have two `bash` processes running, one with PID `20735` and one with PID `3086`.  Running `kill 3086` would cause the operating system to send a "graceful shutdown" signal to that specific `bash` process, while `killall bash` would cause the operating system to terminate *every* `bash` process.

### Sending Different Signals

By default, `kill` and `killall` will send the `TERM` signal to the specified process(es).  The `TERM` signal is a "graceful" termination signal, which the receiving process can process and handle as it sees fit.  For example, a process might want to finish its current task before terminating or clean up some temporary files it had left around the system.

If a process has a bug that causes it to be unresponsive then it won't be able to handle the `TERM` signal.  In that case, you can send other, more aggressive signals, like `KILL`.

There are two ways to do this:

1. `kill -KILL 3086`, where `3086` is the hypothetical process ID
2. `kill -9 3086`

Every signal is given a numerical value and the value for `KILL` is `9`, so both `-KILL` and `-9` do the same thing.

The `kill -9` or `killall -9` commands are *very* aggressive, roughly equivalent to turning off your computer by unplugging your power cord from the wall.  Killing a process this way can leave a mess behind, but it is your only choice if a process is genuinely non-responsive.

As a best practice, always try `kill PID` before trying `kill -9 PID`.


---

## Practice

Match with the correct argument:

```plain-text
kill ???
killall ???
```

- `processID`
- `processname`
- `taskID`
- `username`


---

## Revision

Force killing a process is done by attaching a ??? code.

- `-9`
- `-2`
- `-3`
- `-7`
