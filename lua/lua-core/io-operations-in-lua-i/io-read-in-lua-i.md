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

# Reading Input

---
## Content

In Lua, `io.read()` is a function used for reading input from the user through the command line interface. It **reads a line of input** from the user, and **returns that line as a string**. 

By default, it **reads from the standard input stream** (usually console or terminal window), but you **can also pass a file handle** as an argument to `io.read()` to read from a file instead. 

The function reads input **until it encounters a newline** character **or the end of the file**.

> An example of `io.read()` will be show in the next insight.

--- 

## Practice

In Lua, the function `io.read()` **by default** is used to ???

- Read input from the user
- Writes to a file
- Reads a file given by the user
- Writes to a folder

--- 

## Revision

When does `io.read()` stop reading input?

- Both when a newline character or the end of the file is encountered.
- Until a newline character is encountered
- Until the function reaches the file