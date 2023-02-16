---
author: Stefan-Stojanovic
category: must-know
type: normal
---

# if-else Statements

---
## Content

You can also use the `if`, `else`, and `elseif` statements to create more complex conditional statements. The `elseif` statement is used when you want to check for multiple conditions, but only execute one block of code.

The basic syntax for an `if`, `elseif`, `else` statement is as follows:
```lua
if condition then
   -- code to execute if condition is true
elseif condition2 then
   -- code to execute if condition2 is true
else
   -- code to execute if neither conditions are true
end
```

Here's an example:
```lua
num = 10

if num > 10 then
  print("Number is greater than 10")
elseif num < 10 then
  print("Number is less than 10")
else
  print("Number is equal to 10")
end
```

In this example, if `num` is greater than 10, the program will print `"Number is greater than 10"`. If `num` is less than 10, the program will print `"Number is less than 10"`. If `num` is equal to 10, the program will print `"Number is equal to 10"`.

The `elseif` statement is useful when you need to check for more than one condition. In this example, we're checking if `num` is greater than 10 or less than 10, but not equal to 10. The `else` statement is used as a catch-all in case none of the previous conditions are true.

---
## Practice

What will the output of the following code be?
```lua
num = 33

if num > 10 then
  print("Number is greater than 10")
elseif num < 10 then
  print("Number is less than 10")
else
  print("Number is equal to 10")
end

-- ???
```

- Number is greater than 10
- Number is less than 10
- Number is equal to 10

---
## Revision

Finish the code to output "The number is positive" if the first condition is met, "The number is negative" if the second condition is met and "Number is equal to 0" for the `else`.
```lua
if ??? then
  print("Number is greater than 0")
??? ??? then
  print("Number is less than 0")
else
  print("???")
end
```

- `num > 0`
- `elseif`
- `num < 0`
- `Number is equal to 0`
