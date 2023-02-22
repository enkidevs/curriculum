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

# Functions in Lua

---
## Content

Functions are one of the most important concepts in Lua programming. A function is a block of code that performs a specific task and can be called from other parts of the program. Functions are used to organize and reuse code, making your programs more modular and easier to maintain.

In Lua, functions are created using the `function` keyword, followed by the name of the function with a set of parentheses and ending with the `end` keyword.

```lua
function greetings()
  print("Hello, world!")
end
```

This function is called `greetings`, and when it is executed, it prints the string `"Hello, world!"` to the console using the `print` function. To call this function from other parts of your code, you can use its name followed by a set of parentheses, like this:
```lua
greetings()
```

---
## Practice

Given this function:
```lua
function say_hello()
  print("Hello, world!")
end
```

How would you call it?
```lua
???
```

- `say_hello()`
- `call say_hello`
- `say_hello`


---
## Revision

Finish the code to create a function called `greetings` that outputs "Hi!" to the console:
```lua
??? ???()
  print("Hi!")
???
```

- `function`
- `greetings`
- `end`
- `endFunction`
- `define`