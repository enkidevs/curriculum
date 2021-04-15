---
author: catalin
type: normal
category: how-to
links:
  - >-
    [linux.about.com](http://linux.about.com/od/howtos/fl/Boast-How-Long-Your-Linux-System-Has-Been-Running-Using-uptime.htm){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# System uptime


---

## Content

In Linux, the `uptime` standard command shows information regarding how long your system is running, but also how many users are currently logged in.

Run uptime:

```bash
uptime
12:59  up  2:26, 2 users, \
 load averages: 1.19 2.45 4.34
```

- The current time is `12:59`.
- The uptime is `2:26` (hours).
- `2` users are logged in.
- The load averages for the past 1, 5 and 15 minutes are `1.19`, `2.45` and `4.34`.

To display just the uptime:

```bash
uptime -p
```

Display last time the system restarted:

```bash
uptime -s
```


---

## Revision

Check for how long your system is running: 

```bash
???
```

- `uptime`
- `whoami`
- `who am i`
- `stats`
