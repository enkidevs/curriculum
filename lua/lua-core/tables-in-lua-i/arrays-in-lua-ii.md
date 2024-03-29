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

# Creating Arrays

---

## Content

To create an `array` in Lua, you can **either create a `table` and assign values** to it using integer indices, or you can **use the `array` constructor**. Here's an example of creating an `array` using both methods:
```lua
-- Creating an array using a table with integer indices
my_array = {1, 2, 3, 4, 5}

-- Creating an array using the array constructor
my_other_array = {[1] = 10, [2] = 20, [3] = 30}

-- the first element will be 10, the second will be 20, etc..
```

---

## Practice

Which of the following is the correct way to create an array in Lua?

```lua
a = (1, 2, 3, 4, 5)

b = {1, 2, 3, 4, 5}

c = {1; 2; 3; 4; 5}
```

???

- b
- a
- c

---
## Revision

Which of the following is the correct way to create an array in Lua?

```lua
a = {1. 2. 3. 4. 5}
b = {1, 2, 3, 4, 5}
c = {1; 2; 3; 4; 5}
d = [1, 2, 3, 4, 5]
```

???

- b
- a
- c
- d