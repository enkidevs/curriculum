---
author: jfarmer
type: normal
category: must-know
links:
  - '[Useful sed one-liners](http://sed.sourceforge.net/sed1line.txt){website}'
practiceQuestion:
  formats:
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Transforming Text With sed


---

## Content

The `sed` command (short for *stream editor*) is used to manipulate a stream of text one line at a time.  A common use-case is altering the contents of a file or output of another program one line at a time.

To use it to full effect you have to know a little bit about regular expressions, but rather than explaining that here we'll give a few useful examples.

We will pretend that there's a filename called `data.txt` whose contents we're interested in modifying in various ways.  `sed` will read the contents of the file, modify the contents according to the rules we specify, and print out the modified content to the console.  
If we want to save the output to a file we can use the `>` redirection operator.

### Simple Text Replacement

This will replace every instance of `apples` with `bananas`.

```shell
sed 's/apples/bananas/g' data.txt
```

The general format for "search and replace" is `s/stuff-to-find/stuff-to-replace/flags`.  The `flags` allow us to specify different modes for the search and replace command.

Here `/g` tells `sed` to replace every instance of `apples` on a given line with `bananas`.  Without `/g` `sed` would replace only the first instance.

### More Advanced Text Replacement

This will remove any trailing whitespace from each line, i.e., any extra spaces or tabs at the end of a line.

```shell
sed 's/[ \t]*$//' data.txt
```

We won't dive into the syntax here, but `[ \t]*$` is regular-expression-ese for "zero or more space or tab characters followed by the end of a line."

Likewise, this will remove any *leading* whitespace from each line, aligning all text flush left:

```shell
sed 's/^[ \t]*//' data.txt
```

Here `^[ \t]*` is regular-expression-ese for "the beginning of a line followed by zero or more space or tab characters".

As you can see, `sed` offers powerful tools for manipulating text.  It's one of the most common tools if you want to transform the output of one program or the contents of a file according to some rule.  We've only touched the surface here.


---

## Practice

Replace the first apparition of *apple* in each line by *orange*:

```bash
??? '??? ??? ???' fruits.txt
```

- `sed`
- `s/`
- `apple/`
- `orange/`


---

## Revision

What does `sed` stand for? 

???

- stream editor
- special editor
- stream edit
- special stream editor
