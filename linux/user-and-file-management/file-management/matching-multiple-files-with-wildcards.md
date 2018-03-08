# Matching Multiple Files With Wildcards
author: jfarmer

levels:

  - basic

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-
    [www.tldp.org](http://www.tldp.org/LDP/GNU-Linux-Tools-Summary/html/x11655.htm){website}

tags:
  - introduction
  - workout
---
## Content

When referencing files from the command line, you can use wildcard characters like `*` and `?` to refer to groups of files (called *globs*).

### The `*` Wildcard

The `*` wildcard means "any number of characters including none".  For example, if you wanted to move every file ending with `.mp3` from the current directory to the `~/music` directory, you could run the following command:

```console
$ mv *.mp3 ~/music
```

### The `?` Wildcard

The `?` wildcard matches any single character.  For example, `???` would match every file with a three-character filename.

### The `[...]` Wildcard

You can also match specific characters by using the `[...]` wild card.  For example, ***.mp&#91;34&#93;** would match any file that ends with either `.mp3` or `.mp4`.  The wildcard `[CcBb]at` would match `Cat`, `cat`, `Bat`, and `bat`.

### Be Careful With Spaces!

Be careful when using `*` as a misplaced space or other character can wreak havoc.  Notice the space between `*` and `.mp3`:

```console
$ mv * .mp3 ~/music
```

This would move all files matching `*` and a file named `.mp3` to the `~/music` directory.  But *every* file matches `*`, so you'd be moving every file in the current directory to `~/music`.

Likewise, imagine the difference between `rm *.mp3` (which removes every `.mp3` file) and `rm * .mp3` (which inadvertently removes *every* file).

---
## Practice

What kind of file would the following expression match? 

???
```
$ mv ??*.[mM]p3
```
*Any file with  a name at least 2 character long and the extension `.mp3` or `.Mp3` .
*Any file with the extension `.mp3` or `.Mp3` .
*Any file with a name at least 2 character long and the extension `.mp4` .
*Any file with a name at least 2 character long.

---
## Revision

The `?` wildcard matches

 ???.
*any single character
*any character
*any capital letter
*one or more characters