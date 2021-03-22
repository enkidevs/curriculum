---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - terminal
  - who
  - w
  - logins
  - remote
links:
  - >-
    [www.cyberciti.biz](http://www.cyberciti.biz/faq/unix-linux-w-command-examples-syntax-usage-2/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# List currently logged in users


---

## Content

It is possible to check if other people are working on a server or machine you are using.

To do this, use the `w` command:

```bash
w
```

Running this will output a list of users currently working on the machine as well as their processes.

To find information about a specific user just add its name as an argument:

```bash
w enki
```

On *Linux* you can also use the `-s` flag[1] to **short**-print the output such that some columns are dropped[2]:

```bash
w -s
19:34:06 up 67 days, 21:26,  2 users,
          load average: 0.09, 0.13, 0.13
 USER     TTY    FROM         IDLE   WHAT
 root     pts/0  10.92.42.138 3:23   nano
             /etc/dnsmasq.d/sede.conf
 root     pts/1  10.92.42.138 0.00s  -bash
```

Both the IP from where that user is logged from and what they are doing (in this case editing the dns config file) are returned.


---

## Practice

Find information about a user named `tom`:

```bash
??? ???
```

- `w`
- `tom`
- `-s`
- `enki`
- `ls`
- `user`
- `find`


---

## Revision

To check if other people are connected to a server you are using, you could run 

??? .

- `w`
- `ssh users`
- `ssh -u`
- `ssh -w`


---

## Footnotes

[1:Tip]
Other flags can be used as well:

- `-h` won't print the header
- `-u` ignores current process name
- `-f` shows remote hostname field
- `-o` will use old style output

[2:Additional Information]
Other columns printed by `w` command include `JCPU` and `PCPU` time.
