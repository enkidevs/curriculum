---
author: jfarmer
type: normal
category: must-know
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# The Basics of Environment Variables


---

## Content

An *environment variable* is a dynamic, named variable that can affect the way processes behave on a computer.  For example, a process might look up the `HOME` environment variable to determine the current user's home directory.

### Common Environment Variables

On Linux and other Unix-based operating systems, common environment variables include:

- `HOME`, which contains the current user's home directory
- `PATH`, which contains a list of directory paths.  When a user types a command without providing the full path, `bash` will look at the directories in the `PATH` environment variable to see if they contain the given command.
- `PS1`, which specifies how the prompt is displayed
- `EDITOR`, which specifies the default text editor.
- `LANG`, which specifies the user's language, e.g., a value of `pt_BR` signifies that the user prefers Brazillian Portuguese.

### Displaying Environment Variables

Use the `env` command to see a list of all current environment variables:

```shell
env
USER=jesse
HOME=/home/jesse
... (potentially many lines) ...
EDITOR=vim
```

Here the `USER` environment variable has a value of `jesse` while the `HOME` environment variable has a value of `/home/jesse`.  You can use the `echo` command to display the value of a single environment variable:

```shell
echo $HOME
/home/jesse
```

When referencing the value of a given environment variable you must prefix the name with a `$`.  Compare `echo $HOME` to the following:

```shell
echo HOME
HOME
```

As you can see, `echo $HOME` displays the value of the `HOME` environment variable whereas `echo HOME` displays the literal string "HOME".


---

## Revision

How would you list all environment variables’ values?

```plain-text
???
```

- `env`
- `$PATH`
- `$ALL`
- `vars`
- `$VARS`
