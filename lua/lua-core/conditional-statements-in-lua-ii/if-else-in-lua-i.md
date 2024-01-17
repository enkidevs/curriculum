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

# if-else Statements

---
## Content

Previously, we've established that `if` statements execute code based on conditions. 

Now we introduce `if-else` statements, used to execute more than one code block based on certain conditions. In other words, we're providing code to be executed if a condition is not met!

The basic syntax for an `if-else` statement uses `if` and `else` as keywords.

The format is as follows:
```lua
if condition then
   -- code to execute if condition is true
else
   -- code to execute if condition is false
end
```
Here is a quick example: [1]

---

## Practice

Complete the format for an `if-else` statement in the code below:

```lua
??? condition ???
   -- Code to execute if condition is true
???
   -- Code to execute if condition is false
???
```
- if
- then
- else
- end

---

## Revision

In the code below, how many errors (Misplaced words) are there?: ???

```lua
if condition else
   -- code to execute if condition is true
then
   -- code to execute if condition is false
finish
```
- 3 (`else`, `then`, `finish`)
- 2 (`else`, `then`)
- 1 (`finish`)
- 0, it looks good

--- 

## Footnotes

[1: If Else Statement Example]

```lua
if x > 5 then
   print("x is greater than 5")
   -- code executes when variable `x` is greater than 5
else
   print("x is smaller than 5")
   -- code executes when variable `x` is less than 5
end
```