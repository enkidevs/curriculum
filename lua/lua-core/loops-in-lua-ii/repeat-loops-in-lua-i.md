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

# Repeat Loops

---
## Content

A `repeat` loop, similarly to a `while` loop, allows you to **execute a block of code repeatedly as long as a certain condition is true**. The only difference is that the **condition is checked at the end of every loop**.

> The **code inside a `repeat` loop is executed at least once. no matter the initial condition**. 

Here is a visual example:
![repeat-loop-visual](https://img.enkipro.com/eba7f63fe0bb3d6fafb53408808df31d.png)

In Lua, the syntax for a `repeat` loop is as follows:

```lua
repeat
  -- code to repeat
until condition
```

--- 

## Practice

Which of the following is the correct syntax for a repeat loop in Lua?

```lua
-- A)
repeat (condition) do 
  -- ... 
end

-- B)
repeat 
  -- ... 
until (condition)

-- C)
do 
  -- ... 
until (condition) repeat

-- D)
while (condition) repeat 
  -- ... 
end
```

Answer: ???

- B
- A
- C
- D 


---

## Revision

Finish the code to use a `repeat` loop to print the numbers 1-5:

```lua
i = 1
???
  print(i)
  i = i + 1
??? ??? > ???
```

- `repeat`
- `until`
- `i` 
- `5`