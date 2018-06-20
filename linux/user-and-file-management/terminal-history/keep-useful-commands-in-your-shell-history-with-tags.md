---
author: Arseny

levels:

  - medium

type: normal

category: hack

tags:

  - bash

  - zsh

  - history

  - search

  - reverse-i-search

  - workout


links:

  - '[lukas.zapletalovi.com](https://lukas.zapletalovi.com/2013/03/never-lost-your-bash-history-again.html){website}'


aspects:
  - workout


---

# Keep useful commands in your shell history with tags

---
## Content

Tag commands for future reference:
```
$ some_command -some_flag
       some_path # useful
```

Then it is possible to search your bash history using `Ctrl+R`:

```text
(reverse-i-search)`#useful': 
  some_command -some_flag some_path #useful 
```

Because `# useful` is just a comment in bash you are not limited to this word. Therefore, creative use of tags can save you time. 

Command history is saved in *~/.bash_history* file, which is emptied after a history limit is reached. In order to preserve the tag collection, a backup of the file is needed.

---
## Revision

To reverse search for a tagged command you have to press ???.


* ctrl+r
* ctrl+h
* ctrl+c

 
