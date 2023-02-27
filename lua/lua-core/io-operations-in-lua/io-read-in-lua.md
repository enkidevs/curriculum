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

In Lua, `io.read()` is a function used for reading input from the user through the command line interface. It reads a line of input from the user, and returns that line as a string. By default, it reads from the standard input stream, which is typically the console or terminal window.

You can also pass a file handle as an argument to `io.read()` to read from a file instead of the standard input stream. The function reads input until it encounters a newline character or the end of the file.

It's worth noting that `io.read()` returns a string, so if you want to read in other types of data (like numbers), you'll need to convert the input string to the appropriate type.

```lua
-- read input from the user and print it back
io.write("Enter a message: ")
local message = io.read()
print("You entered: " .. message)
```

When you run this code, it will print the message `"Enter a message: "` in the console, and wait for you to enter a message. After you enter a message and press `"Enter"`, the code will read your message using `io.read()` and store it in the `message` variable. It will then print your message back to the console, with the prefix `"You entered: "`.

---
## Practice

Finish the code to make it correct:
```lua
-- read input from the user and print it back
print("Enter a message: ")
local ??? = ???
print("You entered: " .. message)
```

- `message`
- `io.read()`
- `print`
- `input.read()`

---
## Revision

Finish the sentence:

`io.read()` is a ??? used for ??? input from the ???.

- function
- reading
- user
- cloud
- writing
- variable