---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# The IO Library

---
## Content

The **IO** library in Lua provides a set of functions for dealing with input and output operations. These functions allow you to perform operations like reading and writing files, opening and closing streams, and working with the file system.

The **IO** library provides a number of built-in functions, including:

- `io.open(filename, mode)`: opens a file in the specified mode ("r" for reading, "w" for writing, "a" for appending, and "b" for binary mode).

- `io.read(...)`: reads input from the user or from a file. You can pass in a number of different arguments to specify the format of the input.

- `io.write(...)`: writes output to the console or to a file. You can pass in a number of different arguments to specify the format of the output.

- `io.close(file)`: closes a file that has been opened with io.open.

- `io.type(object)`: returns the type of the object passed in (e.g., "file" for a file object).

- `io.input` and `io.output` set the default input and output streams

- `io.lines` reads a file, line by line.


These functions allow you to perform a wide range of input/output operations, making the IO library an important part of many Lua programs.
