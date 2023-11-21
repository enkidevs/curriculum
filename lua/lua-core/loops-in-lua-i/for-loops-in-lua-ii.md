---
author: nemanjaenki
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

# For Loops Example

---
## Content

Here's an example of a `for` loop that prints the numbers from 1 to 5:
```lua
for i = 1, 5 do
  print(i)
end
-- 1 2 3 4 5
```

The loop variable `i` is **initialized to 1** and the loop body prints the value of `i`.

The loop restarts and **increments** variable `i` by 1 for the next iteration. 

This continues until `i` reaches 5, at which point the loop terminates.


---

## Practice

What will be the output of the following Lua code?
```lua
for i=1, 5 do
  print(i)
end
```

???

- `1 2 3 4 5`
- `5 4 3 2 1`
- `1 1 1 1 1`
- `2 4 6 8 10`

---

## Revision

Finish the code to output 1-10 using a `for` loop:
```lua
??? i=1, ??? ???
  print(i)
end
```

- `for`
- `10`
- `do`
