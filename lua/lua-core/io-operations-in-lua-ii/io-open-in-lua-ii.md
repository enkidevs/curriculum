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

# I/O Open & Close II

---
## Content

Once a file has been opened, we can perform various operations such as reading or writing data. 

> It's important to **remember to close the file** once you're done with it to free up system resources. This can be done using the `file:close()` method, where `file` is the file handle.

Here's an example:
```lua
-- Open a file for writing
local file = io.open("output.txt", "w") -- open file `output.txt`

-- Write a line to the file
io.write(file, "Hello, world!\n") -- writes `Hello, world!\n` to file using io.write

-- Close the file
file:close() -- closes `output.txt`
```

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
