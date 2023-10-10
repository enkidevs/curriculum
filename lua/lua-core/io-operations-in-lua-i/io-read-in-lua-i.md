---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Reading Input

---
## Content

In Lua, `io.read()` is a function used for reading input from the user through the command line interface. It **reads a line of input** from the user, and **returns that line as a string**. 

By default, it **reads from the standard input stream** ( usuallyconsole or terminal window), but you **can also pass a file handle** as an argument to `io.read()` to read from a file instead. 

The function reads input **until it encounters a newline** character **or the end of the file**.

> An example of `io.read()` will be show in the next insight.

