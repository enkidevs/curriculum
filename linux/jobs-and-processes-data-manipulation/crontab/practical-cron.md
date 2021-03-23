---
author: tuwidc
type: normal
category: must-know
tags:
  - linux
  - cron
  - tasks
  - terminal
links:
  - >-
    [code.tutsplus.com](http://code.tutsplus.com/tutorials/scheduling-tasks-with-cron-jobs--net-8800){website}
notes: ''
practiceQuestion:
  formats:
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Practical cron


---

## Content

Linux Cron utility is an effective way to schedule a routine background job at a specific time and/or day on an on-going basis.

The linux crontab format is as follows:

```plain-text
MINUTE HOUR DATE MONTH WEEKDAY COMMAND
```

To list the current cron jobs, use `-l` : 

```bash
crontab -l
```

To check another user's crontab, use `-u user` with the `-l` flag:

```bash
crontab -u username -l
```

To edit the crontab, use `-e`:

```bash
crontab -e
```

Some common used *special characters* are:

- `*` = every possible value[1]
- `-` = range[2]
- `/x` = values that are repetead over and over again[3]
- `%` = output to `stdout`[4]
- `?` = executes the command at Cron start time[5]
- `Mon - Sun` instead of `1-7`[6]

For example, to set a cron job that executes at 9:00, 9:15, 18:00, 18:15, of every Monday and Friday in January and August:

```plain-text
00,15 09,18 * Jan,Aug 1,5
            /root/check_cache.sh
```

To execute something every 10 minutes before half-past of every hour:

```plain-text
0-30/10 * * * * macchanger -A eth0
#00, 10, 20, 30
```


---

## Practice

Setup cron to run `myScript.py` every Saturday at 8:00pm and 10:00pm :

```plain-text
??? ??? * * ??? myScript.py
```

- `00`
- `20,22`
- `6`
- `00,00`
- `Saturday`
- `*`


---

## Revision

A crontab job’s format is:

```plain-text
MIN ??? DATE ??? ??? COMMAND 
```

- `HOUR`
- `MONTH`
- `DAY`
- `YEAR`
- `SECOND`
- `WEEK`


---

## Footnotes

[1:Example]
`*` in the Minute field means the command is executed every minute
[2:Example]
`1-5` in the Weekday field means the command is executed every day, Monday to Friday
[3:Example]
`/9` in the Minute field means the command is executed every 9 minutes
[4:Example]
`* * * * * - % a minute has passed` will output *a minute has passed* to the console. Each `%` represents a new line.
[5:Example]
`/5 ? * * *` means it will execute every 5 minutes in the hour the Cron has started, every day of every month (i.e. if Cron starts at 10, the command will be changed automatically to `/5 10 * * *`).
[6:Sunday]
`Sun` can be both `0` and `7`. *0-6* means Sunday to Saturday, while *1-7* means Monday to Sunday.The same is true for months. The notation depends on the distribution.
