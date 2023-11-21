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

As mentioned previously, `repeat` loops **allow code to be repeated until a specific condition is met**. What makes repeat loops special is that this **special condition is checked at the end of every loop**.

> This means that the **code inside a `repeat` loop is executed at least once. no matter the initial condition**. 

Here is a visual example:
![repeat-loop-visual](https://img.enkipro.com/8ba4eb0a6ecc6971033a64e2936b48c8.png)

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

Answer: ???)

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

- repeat
- until
- i 
- 5