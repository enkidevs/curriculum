---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: caveats

tags:

  - linux

  - cron

  - shell

  - 



parent: practical-cron

---

# Fixing the shell in cron

---
## Content

In most environments `cron` executes commands using `sh`, though  it is often assumed it will use `bash`.

To test or fix this for a failing command:

First, try running the command in ``sh``.

Wrap the command in a `bash` subshell to make sure it gets run in `bash`:
    
```bash
bash -c "mybashcommand"
```
Tell `cron` to run all commands in `bash` by setting the shell at the top of your `crontab`:

```bash
SHELL=/bin/bash
```
If the command is a script, make sure the script contains a shebang:

```
#!/bin/bash
```

---
## Revision

You have to modify the ??? variable in the cron file to run all the commands using `/bin/bash`.

* SHELL
* RUN
* COMPILE
* BASH

 
