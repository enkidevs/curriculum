---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [Basic Client Configuration Official
    Documentation](http://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Add autocorrect to git


---

## Content

If you want git to correct typos you can set `help.autocorrect`:

```bash
git config --global help.autocorrect 30
```

You set `help.autocorrect` to an integer representing the time you have to change your mind before git executes the command (1 = 0.1 seconds).

For example:

```bash
git comit
WARNING: You called a git command
named 'comit', which does not exist.
Continuing under the assumption that
you meant 'commit'
in 3 seconds automatically...
```

If you want to stop the autocorrect you need to set `help.autocorrect` back to `0`:

```bash
git config --global help.autocorrect 0
```


---

## Revision

You can enable autocorrect using :

```bash
git config --global ???.???
```

- `help`
- `autocorrect`
- `git`
- `-ac`
