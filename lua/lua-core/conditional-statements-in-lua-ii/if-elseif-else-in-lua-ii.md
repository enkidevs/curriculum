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

# elseif Statement Example

---

## Content

Here's another example of an else-if statement:
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

In this example:

- if `num` is **greater than** 10, the program will print `"Number is greater than 10"`. 
- If `num` is **less** than 10, the program will print `"Number is less than 10"`. 
- If `num` is **equal** to 10, the program will print `"Number is equal to 10"`.

We're checking if `num` is greater than 10 or less than 10 using the `if` and `elseif` statements. The `else` statement is used as a catch-all in case none of the previous conditions are true.

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
