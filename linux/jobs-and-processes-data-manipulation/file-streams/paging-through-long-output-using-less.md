---
author: jfarmer

levels:

  - basic

  - beginner

type: normal

category: must-know

inAlgoPool: false


links:

  - '[Pagers comparison](http://unix.stackexchange.com/questions/81129/what-are-the-differences-between-most-more-and-less){website}'


---

# Paging Through Long Output Using `less`

---
## Content

The `less` command is a "pager", which allows you to scroll and search through streams of output that are too long for a single page.

A simple example:

```shell
$ ps aux | less
```

`ps aux` will print detailed information about the currently running processes and likely take up several screens worth of text.  By piping its output to `less` we can scroll through the output more easily.

Use the arrows keys to move up, down, left, and right through the output.  Pressing the spacebar will scroll you forward a single page while pressing the `b` key will scroll you backwards a single page.

To exit `less` press the `q` key.

### Searching With `less`

`less` is also capable of searching through the output.  To search, press the `/` key to enter "search mode", type the keyword or pattern you want to search for, and hit the enter key.  `less` will take you to the first match.

To find the next match you can simply type `/` and hit enter again, i.e., you don't have to  akin to the "Find Next" feature in most text editors and word processors.

### What's With The Name?

In the same way that `bash` (the Bourne Again Shell) is a play on its predecessor `sh` (the Bourne Shell), `less` is a play on its predecessor `more`.  The `more` command exists on most systems but is much more limited than `less`.  For example, it's impossible to scroll backwards with `more`.

### Read The Manpage!

Run `man less` to read `less`'s manual (aka "manpage").

---
## Revision

A pager utility that allows you to scroll and search through a stream of output, alternative to `more`,  is

???.

* less
* grep
* awk
* cut

---
## Quiz 
### are you familiar with Linux pagers?

Is `more` `less` or `less` `more`?


???

* less is more
* Both are true
* more is less
* Neither
 
