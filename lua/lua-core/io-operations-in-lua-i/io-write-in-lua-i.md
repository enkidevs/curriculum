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

# IO Write

---
## Content

In Lua, the `io.write()` function is used to **write to a file or the standard output**. It takes one or more arguments and writes them to the output stream. The function returns `nil` on success or an error message on failure.

Here's an example that uses `io.write()` to write to the standard output:
```lua
-- Write a string to the standard output
io.write("Hello, world!\n")

-- Write multiple values to the standard output
io.write("The answer is: ", 42, "\n")
```

---
## Practice

Output "Hello, world!" using the appropriate `io` function. Also, add a new line after the message using the escape sequence.
```lua
io.???("Hello, world!???")
```

- write
- \n
- print
- newLine

---
## Revision

What is the correct way to print the answer` "42"` and a new line using `io.write()`?

```lua
-- A)
io.write("The answer is: ", tostring(42), "\n")
-- B)
io.write("The answer is: " .. 42 .. "\n")
-- C)
io.write("The answer is: ", 42, "\n")
-- D)
io.write("The answer is: " .. tostring(42) .. "\n")
```

???)

- C
- A
- B
- D