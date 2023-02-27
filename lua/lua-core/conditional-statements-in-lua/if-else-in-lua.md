---
author: Stefan-Stojanovic
category: must-know
type: normal
---

# if-else Statements

---
## Content

`if-else` statements are used to execute code blocks based on certain conditions. In Lua, `if-else` statements can be implemented using the `if` and `else` keywords.

The basic syntax for an `if-else` statement is as follows:
```lua
if condition then
   -- code to execute if condition is true
else
   -- code to execute if condition is false
end
```

Here's an example of an `if-else` statement:
```lua
age = 18

if age >= 18 then
  print("You are an adult")
else
  print("You are not an adult")
end

```

In this example, we have an `age` variable set to 18. The `if` statement checks whether the value of `age` is greater than or equal to 18. If the condition is true, the code inside the if block is executed, which prints "You are an adult". If the condition is false, the code inside the `else` block is executed, which prints "You are not an adult".

In this way, we can use `if-else` statements in Lua to execute different blocks of code based on different conditions.

---
## Practice

Finish the code to output "The number is positive" if the condition is met and "The number is negative" otherwise.
```lua
num = 18
??? num > 0 ???
  print("The number is positive")
???
  print("The number is negative")
end

```

- `if`
- `then`
- `else`
- `do`

---
## Revision

What will happen when we execute the following piece of code?
```lua
age = 17

if age >= 18 then
  print("You are an adult")
else
  print("You are not an adult")
end
```

It will ???.

- output "You are not an adult"
- output "You are an adult"
- do nothing
