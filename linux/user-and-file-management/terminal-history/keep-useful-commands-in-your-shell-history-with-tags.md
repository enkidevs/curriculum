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
```bash
$ some_command
   -some_flag some_path #useful
```

Then it is possible to search your bash history using `Ctrl+R`:

```shell
$ some_command 
    -some_flag some_path #useful
bck-i-search: useful
```

Although `#useful` is just a comment in bash, you are not limited to this word. You can also just search for commands that you've used recently. Therefore, creative use of tags can save you time.

```shell
$ some_command
    -some_flag some_path #useful
bck-i-search: some_command
```

Command history is saved in *~/.bash_history* file. When its limit is reached, commands at the beginning of the file are removed to make room for new commands. The default limit is 500 commands, but you can modify the `HISTFILESIZE` (maximum number of files contained in the history file) and the `HISTSIZE` (number of commands to remember in the command history) variables to change this limit. You can find these variables either in your `~/.profile` or `~/.bash_profile` file[1].

---
## Revision

To reverse search for a tagged command you have to press ???.


* `Ctrl+R`
* `Ctrl+H`
* `Ctrl+C`

---
## Footnotes

[1:Command History]
Check out [this thread](https://unix.stackexchange.com/a/163406) to find out how you can further customize your shell or how `HISTFILESIZE` and `HISTSIZE` work under the hood.