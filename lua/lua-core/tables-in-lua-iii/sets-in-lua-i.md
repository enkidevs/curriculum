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

# Creating Sets

---

## Content

A **set** is a **collection of values that contains no duplicates**. 

A set is not a built-in data structure in Lua, but it can be implemented using tables.

To create a set in Lua, you can **create a table** and **use the values you want to add to the set as keys** in the table. The values of the keys do not matter and can be set to `true` for example.

Here's an example of creating a set in Lua:
```lua
my_set = {
  ["apple"] = true,
  ["banana"] = true,
  ["orange"] = true
}
```

---

## Practice

True or false: The values of the keys DO matter when creating a set, and must be set to a specific value. 

???

- False
- True

---

## Revision


Finish the code below such that a set called `elements` is created with the following keys with the given order: `earth`, `wind`, `fire`.

```lua
??? = {
  [???] = true, -- earth
  [???] = true, -- wind
  [???] = true -- fire
}
```

- "elements"
- "earth"
- "wind"
- "fire"
- earth
- wind
- fire

