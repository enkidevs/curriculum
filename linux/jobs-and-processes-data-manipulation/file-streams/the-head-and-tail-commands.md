---
author: jfarmer
type: normal
category: must-know
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# The head And tail Commands


---

## Content

`head` and `tail` are two commands that allow you to select and display the first few lines or last few lines from a file or output stream, respectively.  By default both will select 10 lines, but using the `-n` option you can specify a different amount.

For example, you can use `tail` to select the last 5 lines from a log file, like so:

```shell
tail -n5 /usr/share/dict/words
zythem
Zythia
zythum
Zyzomys
Zyzzogeton
```

Likewise, `head -n5 some_file.txt` would display the *first* 5 lines from the hypothetical `some_file.txt`.

### Using `tail -f`

Supplying the `-f` or "follow" option to `tail` causes it to not stop when the end of the file is reached, but rather to wait for additional data to be appended.  This is commonly used with a log file

Try it:

```shell
tail -f /var/log/messages
```

On Linux, `/var/log/messages` is the generic "system log file".  As new log entries are appended to the file, `tail -f` will display them.

This is called "tailing a log file" or "tailing a file".

### Using `head` And `tail` With `|`

It's also common to use `head` and `tail` to filter the output of other programs.  Try these out:

```shell
ls -t | head -n3
ls -t | tail -n3
```

`ls -t` lists the contents of the current directory sorted by modification time (most recent first).  So `ls -t | head -n3` will list the three most recently modified files and `ls -t | tail -n3` the three files with the oldest modified times.


---

## Revision

The flag of `tail` that will make it keep printing lines as they are appended to a file is ???.

- -f
- -a
- -n
- -r
