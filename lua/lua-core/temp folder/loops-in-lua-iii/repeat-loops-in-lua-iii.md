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

# repeat Loops Syntax

---
## Content

To create a `repeat` loop in Lua, you use the `repeat` keyword followed by the code block you want to `repeat`, and then the `until` keyword followed by the condition that will end the loop. 

For example:
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