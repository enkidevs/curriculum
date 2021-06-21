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

# The Process Tree


---

## Content

Every process is launched (or "forked") by another process.  There is a special root process (called "init") that is launched directly by the kernel when your system first boots.

In this way the collection of processes running on a system form a "process tree" rooted on the init process.  Every process has a parent process and potentially multiple child processes.

For example, every time you run a command while at the `bash` prompt, `bash` will fork a new process to run your command, making that process a child of your current `bash` process.

Similarly, when you see a "log in" prompt, this is actually the `login` command running.  If you log in successfully, the `login` command will fork a new process to execute the logged-in user's shell of choice.

The `ps` command displays a flat list of processes, but you can use the `pstree` command if you want to see a tree-like display.  Here's some example output from an Ubuntu web server:

```shell
pstree
init─┬─atd
     ├─cron
     ├─dbus-daemon
     ├─dhclient
     ├─getty
     ├─mysqld_safe───mysql
     ├─nginx───nginx
     ├─ntpd
     ├─rsyslogd───3*[{rsyslogd}]
     ├─ruby─┬─4*[ruby───{ruby}]
     │      └─{ruby}
     ├─sshd─┬─sshd───bash
     │      └─bash───pstree
     ├─systemd-logind
     ├─systemd-udevd
     ├─upstart-file-br
     ├─upstart-socket-
     └─upstart-udev-br
```

You can also run `ps auxf` to see a tree-like display, although the output is less user-friendly.


---

## Practice

In the following extract of a tree representation of processes, which process launched  `pstree` ?

???

```plain-text
pstree
systemd─┬─ModemManager─┬─{gdbus}
        |              └─{gdmain}  
        └─konsole--bash─┬─pstree
                        └─{QXcbEventReader}
```

- bash
- ModemManager
- konsole
- QXcbEventReader
- systemd


---

## Revision

Every process has a common root process named ???.

- init
- root
- systemd
- bash
