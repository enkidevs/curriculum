---
author: catalin

levels:

  - basic

  - advanced

  - medium

  - beginner

type: fillTheGap

category: must-know

---

# Gotta know them all

---
## Content

Can you guess which commands fits best the description or scenario given?

---
## Game Content

```bash
Which command can update a user's
authentication token?
???
```

* passwd
* password
* auth-token
* ps

%exp
`passwd`  is the utility used for updating authentication tokens. The password entered by the user is run through a key derivation function such that a hashed version of the new password is created and saved.
%

---

```bash
Which utility is an interface
used for securely gaining access
to a remote computer and is used by
network admins to control servers
remotely?
???
```

* ssh
* putty
* netstat

%exp
`SSH`, also known as Secure Socket Shell, is a Linux utility which encrypts the data communication between two hosts on an insecure network.
%

---

```bash
Which command is used to configure
kernel-resident network interfaces?
???
```

* ifconfig
* ipconfig
* tracepath

%exp
`ifconfig` stands for interface configuration. It allows users to see and change local network configurations.
%

---

```bash
What do you use to search files
for a given string or pattern?
You can also replace strings
with it.
???
```

* grep
* gawk
* cat

%exp
By default, `grep` prints line containing words matching a regular expression. Parsing a file requires two parameters: the string(or regex) to be searched and the file path.
%

---

```bash
What to use in order to copy
files, directories and even
make links to files?
???
```

* cp
* copy
* cpio

%exp
`cp` provides users with the capability to copy files and directories. It has the following syntax: `cp file_name new_file_name`.
%

---

```bash
This command is used to change
permissions on one or several files.
In addition, it can also alter
special mode flags.
???
```

* chmod
* perm
* acc

%exp
`chmod`  stands for "change mode" and it defines the way in which a file can be accessed. It can restrict or allow actions such as reading, writing or execution of a file or directory, for the owner, the owner's group or others.
%

---

```bash
What should be used to change
the system's date and time?
This one also proves useful when
working with script files to output
such information.
???
```

* date
* datetime
* tzdata

%exp
`date` command is used to change the system's date and time. It has a readable format by default. There is the possibilty to change the format as well using `date -FORMAT`.
%

---

```bash
What command will show you the
free space you have on the
mounted file systems?
???
```

* df
* declare
* disk

%exp
On linux, `df` command shows the available space on the mounted system file, if no arguments are given. If no file name is given, the space available on all currently mounted `file system` is shown.
%

---

```bash
What can be used to search the
directory tree for files
meeting given condition?
???
```

* find
* ls
* cd

%exp
When invoked, `ls` lists all files int the current working directory.
`cd` command is used to change the current working directory.
`find` command searches for files meeting a given condition.
%

---

```bash
What command can shutdown,
reboot or halt you machine?
???
```

* shutdown
* sd
* boot

%exp
The `shutdown` command brings system down in a secure way. It notifies all users that the system is going to be shut down and no other logins will be possible. It is possible to shut down the system immediately or after a certain delay.
%