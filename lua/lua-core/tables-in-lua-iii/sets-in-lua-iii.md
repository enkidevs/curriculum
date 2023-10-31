---
author: Stefan-Stojanovic
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Iterating Values in Sets

---
## Content

You can also use a `for` loop to iterate over the values in the set. Since the **values are not used as keys** in the table, you can use the `pairs` function to iterate over the table.

Here's an example of iterating over the set:

```lua
for key, _ in pairs(my_set) do
  print(key)
end
```

> Note that '_' after key indicates that only the keys matter in the code. Keys is usually in conjunction with `value` to get the value of the keys. E.g. `for key, value in pairs() do`

Sets can be useful for checking for duplicates or keeping track of a collection of unique values.

---
## Practice

We can check if a value is a member of a set by using the ??? within a `pairs` function. 

- `in` operator 
- `contains` function 
- `has` function 
- `find` function 

---

## Revision

Finish the code below such that the `pairs()` function will iterate over the set, "set", and print each key.

```lua
for key, _ in ???(???) do
  print(key)
end
```
- pairs
- set
- pair
- sets

