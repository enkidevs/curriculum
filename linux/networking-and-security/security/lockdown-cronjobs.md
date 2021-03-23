---
author: catalin
type: normal
category: tip
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Lockdown **Cronjobs**


---

## Content

`cron`, the system process used to *schedule* tasks has a built-in feature that let's you determine who may or who may not run jobs with it.

There are two files in charge of this:

- `/etc/cron.allow`
- `/etc/cron.deny`

You can add usernames to `cron.deny` as to lock them from using `cron`.

To allow a user to run `cron` you need to add its username to `cron.allow`.

You can also disable all users from using `cron` by adding `ALL` to the former file:

```bash
echo ALL >>/etc/cron.deny
```

*Note*: If the *cron.allow* file exists, only users specified in that file can use cron, and *cron.deny* file is ignored.


---

## Practice

Disable `cron` access for every user:

```bash
??? ???>>/etc/???
```

- `echo`
- `ALL`
- `cron.deny`
- `allow`
- `deny`
- `cron.lock`
- `cron.allow`
- `DISABLE`
- `ls`


---

## Revision

You can deny users access to *cronjobs* by adding them to 

???.

- `/etc/cron.deny`
- `/etc/cron.allow`
- `/crontab/deny`
- `/cron/.deny`
