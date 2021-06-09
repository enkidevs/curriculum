---
author: tuwidc
type: normal
category: hack
tags:
  - sudo
  - cd
  - terminal
links:
  - >-
    [The Directory
    Stack](https://www.gnu.org/software/bash/manual/html_node/The-Directory-Stack.html){documentation}
  - >-
    [Directory Stack
    Builtins](https://www.gnu.org/software/bash/manual/html_node/Directory-Stack-Builtins.html#Directory-Stack-Builtins){documentation}
  - >-
    [pushd-popd vs cd in bash and zsh](https://unix.stackexchange.com/questions/272965/pushd-popd-vs-cd-cd-in-bash-and-zsh){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Quick `cd` Tips


---

## Content

The `pushd` command saves the current working directory in memory so it can be returned to at any time. You can think of it as an evolution of `cd`, because `pushd` stores the history of your visited folders.

These visited folders/directories are saved in what's called "the directory stack".

To move to a new directory, you would use:

```bash
pushd projects/
~/projects ~
```

After calling `pushd` followed by a folder name, the directory stack is logged in the shell and you're switched to that folder.

> 💡 Tilde `~` is a shorthand notation for `Users/your-name/`.

If you want to add the current directory to the stack, you would call `pushd` while in that directory:

```bash
~/projects/project_1 pushd
~ ~/projects/project_1
```

> In this case, you are returned to the first directory in your queue.

To check the contents of the directory stack, use `dirs`:

```bash
dirs
~ ~/projects/project_1
```

If you add the -v flag you can include indexes and increase readability:
```bash
dirs -v
0 ~
1 ~/projects/project_1
```

> 💡 The current directory is always at *the top of the directory stack*.

Let's say we have the following stack:

```bash
dirs -v
0 ~
1 ~/projects/project_1
2 ~/projects/project_2
```

To navigate the stack, append `+n` to `pushd`, where `n` is the index of the stack item.

```bash
pushd +2
~projects/project_2
```

To remove items from the stack, you would use `popd`. If used with no arguments, it removes the first element in the stack (which is the current working directory of index 0) and switches the working directory to the next item (index 1). 

```bash
dirs -v
0 ~
1 ~/projects/project_1
2 ~/projects/project_2

~projects/project_2 popd
~/projects/project_1
```

If used with the `+n` argument, it removes the `n`th element from the stack, but **doesn't** change the current working directory.

```bash
~/projects/project_1 dirs -v
0 ~/projects/project_1
1 ~/projects/project_2
~/projects/project_1 popd +1
~/projects/project_1
```

To clear the stack, add the `-c` to `dirs`:

```bash
~/projects/project_1 dirs -c
```

Or, to undo the last change of directory and go back to the last visited path:

```bash
cd -
```

To learn more about the directory stack or to view the differences between `popd` and `pushd` vs `cd` in both `bash` and `zsh`, check out the links in the *Learn More* section.

---

## Practice

Directories saved by `pushd` can be seen using ???.

- dirs
- cd -
- topd
- dirs -c


---

## Revision

`pushd`, `popd` and `dirs` are shell built-ins which allow you to manipulate the ???.

- directory stack
- switch
- directory queue
- memory
