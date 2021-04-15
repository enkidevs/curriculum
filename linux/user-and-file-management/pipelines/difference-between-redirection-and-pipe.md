---
author: tuwidc
type: normal
category: must-know
tags:
  - linux
  - pipe
  - redirect
  - bash
  - terminal
  - files
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Difference between `redirection` and `pipe`


---

## Content

**Pipe** and **redirect** are two similar concepts, yet the distinction between them is made in the following way:

- `redirect` refers to passing the *output* to a **file** or a **stream**
- `pipe` refers to passing the *output* to another **program** or **utility**

Let `p1` be a program that when ran will give a certain output.

To put all the *output* inside a file (say `myFile`), **redirection** is necessary[1]:

```bash
p1 > myFile
```

However, to use the *output* as *input* of another program (say `p2`) things are different. An auxiliary file can be used (say `tmp_file`)[2]:

```bash
p1 > tmp_file && p2 < tmp_file
```

Because this approach is quite clunky, **pipes** have been invented to make things easier. You can achieve the exact same thing with the syntax:

```bash
p1 | p2
```


---

## Practice

Complete the following snippet to redirect or pipe `script.sh` :

```bash
script.sh ??? cat -n
script.sh ??? file.txt
```

- `|`
- `>`
- `>>`
- `&&`


---

## Revision

*Piping* refers to passing the output to another program or utility, while *redirecting* to

???

- passing the output to a stream or file
- passing the output to a script
- passing the output to cat
- passing the output to an utility


---

## Quiz

### which of the following is not a valid command?


Pick the option that would throw an error.

???

- cat enki.txt > grep "enki"
- cat enki.txt | grep "enki"
- ls -l > enki.txt && cat < enki.txt
- grep "enki" < enki.txt


---

## Footnotes

[1:explanation]
What happens when running the following line:

```bash
p1 > myFile
```

1. `p1` is executed
2. *output* of `p1` is put in a file called `myFile`.

If `myFile` already exists, it will be overriden.

[2:explanation]
What happens when running the line:

```bash
p1 > tmp_file && p2 < tmp_file
```

1. `p1` is executed
2. *output* of `p1` is saved in the file called `tmp_file`
3. `p2` is executed having as *input* the contents of `tmp_file`
