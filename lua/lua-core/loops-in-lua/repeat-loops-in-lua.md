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

# repeat Loops

---
## Content

In Lua, `repeat` loops are another type of loop that allows code to be repeated until a specific condition is met. The difference between a `repeat` loop and other types of loops, such as `while` and `for` loops, is that the code inside a `repeat` loop is executed at least once before checking the loop condition. This means that the code in a `repeat` loop will always run at least once, no matter what the initial condition is.

Repeat loops are useful for situations where you want to ensure that a certain code block is executed at least once, regardless of the condition. They can be used in situations where a loop should be executed at least once, but you may not know the initial state of the loop condition.

To create a `repeat` loop in Lua, you use the `repeat` keyword followed by the code block you want to `repeat`, and then the `until` keyword followed by the condition that will end the loop. For example:
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