---
author: tuwi.dc

levels:

  - basic

  - medium

  - beginner

type: normal

category: must-know

tags:

  - linux

  - cron

  - tasks

  - terminal

links:

  - '[code.tutsplus.com](http://code.tutsplus.com/tutorials/scheduling-tasks-with-cron-jobs--net-8800)'

---

# Practical `cron`

---
## Content

Linux Cron utility is an effective way to schedule a routine background job at a specific time and/or day on an on-going basis.

The linux crontab format is as follows:
```
MINUTE HOUR DATE MONTH WEEKDAY COMMAND
```

To list the current cron jobs, use `-l` : 
```
$ crontab -l
```
To check another user's crontab, use `-u user` with the `-l` flag:
```
$ crontab -u username -l
```

To edit the crontab, use `-e`:
```
$ crontab -e
```
Some common used *special characters* are:
- `*` = every possible value[1]
- `-` = range[2]
- `/x` = values that are repetead over and over again[3]
- `%` = output to `stdout`[4]
- `?` = executes the command at Cron start time[5]
-  `Mon - Sun` instead of `1-7`[6]

For example, to set a cron job that executes at 9:00, 9:15, 18:00, 18:15, of every Monday and Friday in January and August:
```
00,15 09,18 Jan,Aug * 1,5
            /root/check_cache.sh
```

To execute something every 10 minutes before half-past of every hour:
```
0-30/10 * * * * macchanger -A eth0
#00, 10, 20, 30
```

---
## Practice

Run `myScript.py` every Saturday at 8:00pm and 10:00pm :
```
??? ??? * * 
        ??? myScript.py
```

* `00`
* `20,22`
* `6`
* `00,00`
* `Saturday`
* `*`

---
## Revision

A crontab job’s format is:
```
MIN ??? DATE ??? ???
            COMMAND 
```

* `HOUR`
* `MONTH`
* `DAY`
* `YEAR`
* `SECOND`
* `WEEK`

