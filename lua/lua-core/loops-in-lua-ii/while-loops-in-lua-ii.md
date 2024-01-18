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

# While Loops Example

---
## Content

Here's an example of a while loop in action:
```lua
-- print numbers from 1 to 5
local i = 1
while i <= 5 do
  print(i)
  i = i + 1
end
```

In this example, the loop will **execute as long as `i` is less than or equal to 5**. 

On each iteration, the **current value of `i` is printed** to the console, and then `i` is **incremented by 1**. When `i` reaches 6, the condition `i <= 5` becomes false, and the loop terminates.

The output would look like this:
```lua
-- 1
-- 2
-- 3
-- 4
-- 5
```


---

## Practice

What will the output of the following code be?

```lua
i = 1
while i <= 3 do
  print(i)
  i = i + 1
end

-- ???
```

- 1 2 3
- 3 2 1
- 1
- 1 2


---

## Revision

Finish the code to write a `while` loop that prints out numbers from 0 to 4:
```lua
i = 0
??? ??? ???
  print(i)
  i = i + 1
end
```

- `while`
- `i < 5`
- `do`
- `i <=5`
- `until`