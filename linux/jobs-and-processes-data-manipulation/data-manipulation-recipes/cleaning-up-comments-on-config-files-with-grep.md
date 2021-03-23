---
author: tuwidc
type: normal
category: how-to
tags:
  - grep
  - linux
  - config files
links:
  - >-
    [www.thegeekstuff.com](http://www.thegeekstuff.com/2009/03/15-practical-unix-grep-command-examples/){website}
notes: ''
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Cleaning up comments on config files with grep


---

## Content

The `grep` command is most commonly used to search plain-text data sets for lines matching a regular expression. But that's not the only use for `grep`.

In the example below, we use grep to remove the *comment lines* from a *configuration* file.

```bash
grep -v -e '^#'
      -e '^$' squid.conf
```

The `-e` flag enables us to do regex matching and the `-v` inverts the match.

To use special symbols as comment delimiters, escape them with single quotes:

```bash
grep -v -e '^#' -e '^$'
      -e ';' squid.conf
```


---

## Practice

Display `.bashrc` without empty lines:

```plain-text
??? -v ??? ??? ~/.bashrc
```

- `grep`
- `-e`
- `'^$'`
- `^_`
- `'^ '`


---

## Revision

What flag can be used with the `grep` command to enable regex matching?

???

- `-e`
- `-v`
- `-r`
- `-m`
