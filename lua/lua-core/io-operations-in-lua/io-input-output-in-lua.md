---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# I/O Input & Output

---
## Content

The `io.input` function sets the default input file, which is used by functions like `io.read` to read data. Similarly, the `io.output` function sets the default output file, which is used by functions like `io.write` to write data.

By default, both functions are set to the standard input and output, which are the keyboard and the screen respectively.

When a file is opened with `io.open`, it becomes the current default **input/output** file. To reset the default **input/output** files to the standard **input/output**, one can simply call `io.input()` and `io.output()` without any arguments.