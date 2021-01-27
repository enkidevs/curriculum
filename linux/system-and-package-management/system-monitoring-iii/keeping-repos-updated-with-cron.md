---
author: tuwidc
type: normal
category: best-practice
tags:
  - cron
  - apt-get
  - update
  - repository
  - schedule
  - repo
  - terminal
  - null
---

# Keeping repos updated with `cron`


---

## Content

It is good practice to keep your repositories updated. This reduces update time when upgrades are required. 

To update them every day via `cron`, start by opening your `crontab` file by doing:

```plain-text
crontab -e
```

Append:

```plain-text
1 1 * * * apt-get update
```

This will only update the repos, leaving the system ready to be upgraded.
 
