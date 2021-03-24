---
author: tuwidc
type: normal
category: caveats
tags:
  - linux
  - cron
  - dot
  - issues
  - crontab
  - cron.daily
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Cron dot-in-filename issues when using run-parts


---

## Content

The script filenames in `cron.d/`, `cron.daily/`, `cron.hourly/`, etc, should not contain a dot(`.`), otherwise run-parts will skip them.

According to `run-parts(8)`[1]: 

```plain-text
the names must consist entirely 
of upper and lower case  letters,
digits, underscores, and hyphens.
```

If there is a cron script `backup.sh` in `cron.daily/` directory, the extension name should be removed.


---

## Revision

It’s not a good idea to use ??? in a script name when you run it using `run-parts` .

- `.` 
- `_` 
- `-`
- `r`


---

## Footnotes

[1:Run-parts]
This command will take a directory as an argument and run every script found in it.
