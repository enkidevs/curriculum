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

# Reading Input Example

---

## Content

Here's an example using `io.read()`.

```lua
-- read input from the user and print it back
io.write("Enter a message: ") -- This string gets printed, waits for user prompt
local message = io.read() -- Line that reads and user input in `message`
print("You entered: " .. message) -- Prints user input after a string.
```
> `io.read()` returns a string, so if you want to read other types of data (like numbers), you'll need to convert the input string to the appropriate type.

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