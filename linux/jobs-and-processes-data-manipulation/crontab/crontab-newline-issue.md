---
author: tuwidc
type: normal
category: caveats
tags:
  - linux
  - cron
  - crontab
  - newline
  - issue
  - trick
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Crontab newline issue


---

## Content

If you forget to add a newline at the end of the `crontab` file, it won't run the last job in the list. 

The `crontab` file should always end with an empty line.

Running the `crontab -e` command on the machine we can modify the content of the `crontab` file.

An example of such file is:

```plain-text
*/30 * * * * say -v whisper "I can see you"

# don't forget the newline!
```

Note how after the last command there is an empty line ensuring that the `whisper` command will run.


---

## Revision

??? is needed for `crontab` to run the last job in the list.

- A newline at the end
- A newline at the start
- A comment at the end
- `$`
