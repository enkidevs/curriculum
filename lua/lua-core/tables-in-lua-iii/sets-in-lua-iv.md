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

You can also use a `for` loop to iterate over the values in the set. Since the **values are not used as keys** in the table, you can use the `ipairs` function to iterate over the table.

Here's an example of iterating over the set:

```lua
for key, _ in ipairs(my_set) do
  print(key)
end
```

Sets can be useful for checking for duplicates or keeping track of a collection of unique values.

---
## Practice

We can check if a value is a member of a set by using the ??? within an ipairs function. 

- `in` operator 
- `contains` function 
- `has` function 
- `find` function 
