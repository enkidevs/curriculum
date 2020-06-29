---
author: tuwidc
type: normal
category: feature
tags:
  - linux
  - terminal
  - type
  - bash
  - alias
  - workout
---

# Get to know your commands with `type`


---

## Content

The `type` command is used to differentiate between *builtin* commands and *external binaries*.

Subsequently, you can find different *types* of commands[1].

Find an **alias**:

```plain-text
type ls
ls is aliased to `ls --color=auto'
```

Find a **file**:

```plain-text
type rm
rm is /bin/rm
```

Find a **builtin**:

```plain-text
type cd
cd is a shell builtin
```

Find a **function**:

```plain-text
type psgrep
psgrep is a function
psgrep () 
{ 
    ps -ef | { 
        read -r;
        echo "$REPLY";
        grep --color=auto "$@"
    }
}
```

You can also check the type of `type`:

```plain-text
type type
type is a shell builtin
```


---

## Revision

You can call ??? 

alongside another command to find out its alias, functions, builtins and keywords.

- type
- desc
- -type
- —desc


---

## Footnotes

[1:info]
`type` can find whether the targeted command is an *alias*, a *keyword*, a *function*, a *builtin* or a *file*.
 
