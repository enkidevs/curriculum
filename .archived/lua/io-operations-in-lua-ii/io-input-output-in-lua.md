---
author: Stefan-Stojanovic
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# I/O Input & Output

---
## Content

The `io.input` function sets the default input file, which is used by functions like `io.read` to read data from an input file.

Similarly, the `io.output` function sets the default output file, which is used by functions like `io.write` to write data to the output file.

By default, **both functions are set to the standard input and output**, which are the **keyboard and the screen respectively**.

When a file is opened with `io.open`, it becomes the current default **input/output** file. To reset the default **input/output** files to the standard **input/output**, one can simply call `io.input()` and `io.output()` without any arguments.

--- 

## Practice

`io.input` function is used by functions like ???, whereas `io.output` function is used by functions such as ??? ?

- `io.read`
- `io.write`
- `io.input`
- `io.output`

---

## Revision

After a file is opened with `io.open`, how does one reset the default input/output files to the standard? ???

- Call `io.input()` and `io.output()` without any arguments
- Call `io.input()` and `io.output()` with the argument: `standard`
- Reset the terminal
- Reset the console panel