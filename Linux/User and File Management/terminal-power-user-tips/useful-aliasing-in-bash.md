# Useful aliasing in bash
author: tuwi.dc

levels:

  - medium

type: normal

category: feature

tags:
  - linux
  - terminal
  - alias
  - ''
  - workout


---
## Content

The `alias` tool is a way to simplify things by giving them a new "false name". 

```
$ alias short_word="Command"
```

You can use an alias instead of longer commands, adding them on your `.bashrc` file to make them permanent.


```
$ alias ll="ls –l"
```

In this example, typing ``ll`` will now return ‘long listing format’.

Quick exit with alias:
```
$ alias x="exit"
```
Other examples:
```
$ alias rm="rm -iv"
$ alias nbrc="nano ~/.bashrc"
```


Now, to open *~/.bashrc* in nano text editor: 
```
$ nbrc
```
Or, to find the top 10 largest files in your system, you can set the following ‘alias’:

```
alias top10=
  "find . -type f -exec ls -sh {} \; | 
  sort -n -r | head -10"
```

To save the aliases for future use, you have to add the command to the end of `~/.bashrc` file and then execute it:
```
#using the alias created earlier
$ nbrc
# add a new aliased command to the end
# of the file then execute ~/.bashrc
$ . ~/.bashrc # there is a point after $
```

---
## Practice

Complete the following snippet:
```
$ ??? ???="netstat -a | more"
$ ports
```
*`alias`
*`ports`
*`sudo`
*`ran30`

---
## Revision

??? 

is used to give a “false name” to other commands.
*alias
*short
*rm
*ctrl+k