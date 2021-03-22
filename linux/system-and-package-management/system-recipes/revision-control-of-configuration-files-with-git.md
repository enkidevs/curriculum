---
author: tuwidc
type: normal
category: hack
tags:
  - git
  - linux
  - bash
  - backup
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Revision control of configuration files with git


---

## Content

It is always considered good practice to keep track of your important configuration files 
and `git` is a great tool for this. 

Create a repository on your git server and initialize it locally:

```bash
cd path/to/config/file/
git init
git add config_file.conf
git commit -m "Initial config files"
git remote add origin \
   https://gitserver/repo/repo.git
git push -u origin master
```

Then create a little bash file:

```bash
#!/bin/bash
DDDD = `date +%Y_%m_%d`
cd /path_to_git_repo
git commit -a -m "Auto Git Update $DDDD"
git push
```

And make the file executable:

```plain-text
chmod +x git_updater.sh
```

Finally, set a crontab entry that will run at an interval of your liking:

```plain-text
45 2 1 * * /path_to_bash_file/git_updater.sh
#this will run the script on the 1st of
#every month, at 2:45 in the morning
```


---

## Revision

You can upload your important configuration files to *git* using 

??? .

- auto-commit scripts
- auto-pull scripts
- history
