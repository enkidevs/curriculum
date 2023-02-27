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

# I/O Open & Close

---
## Content

The `io.open` function is used for opening a file in various modes. It returns a file handle that can be used to perform various operations on the file. 

It takes two arguments: the file name and the mode in which to open the file. 

The mode can be either `"r"` for reading, `"w"` for writing, or `"a"` for appending to an existing file. If the mode is not specified, `"r"` is used by default.

Once a file has been opened, we can perform various operations on the it, such as reading or writing data. 

It's important to remember to close the file once you're done with it, to free up system resources. This can be done using the `file:close()` method, where `file` is the file handle.

Here's an example:
```lua
-- Open a file for writing
local file = io.open("output.txt", "w")

-- Write a line to the file
io.write(file, "Hello, world!\n")

-- Close the file
file:close()
```


This code will open a file called `output.txt` for writing using `io.open`, write the string `"Hello, world!\n"` to the file using `io.write`, and then close the file using` file:close`.

This will create a file called `output.txt` in the same directory as the Lua script, if it doesn't already exist, and write the specified string to it.

---
## Practice

Read the comments then fill in the gaps to make the code correct:

```lua
-- Open a file for writing
local file = io.???("output.txt", "???")

-- Write a line to the file
io.???(???, "Hello, world!\n")

-- Close the file
file:???
```

- open
- r
- write
- file
- close()


---
## Revision

Read the comments then fill in the gaps to make the code correct:

```lua
-- Open a file for writing
local file = io.???("output.txt", "???")

-- Write a line to the file
io.???(???, "Hello, world!\n")

-- Close the file
file:???
```

- open
- r
- write
- file
- close()
