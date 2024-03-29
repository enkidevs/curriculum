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

# elseif Statements

---

## Content

You can also use the `if`, `else`, and `elseif` statements to create more complex conditional statements. The `elseif` statement is used when you want to **check for multiple conditions**, but **only execute one block of code**.

The basic syntax for an `if`, `elseif`, `else` statement is as follows:
```lua
if condition then
   -- code to execute if condition is true
elseif condition2 then
   -- code to execute if condition2 is true
else
   -- code to execute if neither conditions is true
end
```

Here is an example: [1]

---

## Practice

Finish the else-if format code below.
```lua
??? condition then
   
??? condition2 then
   
???
   
end
```

- `if`
- `elseif`
- `else`
- `ifelse`

---

## Revision

In the else-if code below, how many errors (Misplaced words) are there? ???

```lua
if condition then

else condition2 then

elseif

end
```

- 2 (the `else` and `elseif`)
- 1 (only the `else`)
- 3 (the `if`, `else`, and `elseif`)
- 4 (the `if`, `else`, `elseif`, and `end`)

---

## Footnotes

[1: elseif Statement Example]

```lua
if discount == true then
   print("Discount applied!")
   -- code to execute if there is a discount
elseif discount == false then
   print("No discount applied!")
   -- code to execute if there isn't a discount
else
   -- code to execute if an error occurs (discount is neither true nor false)
end
```