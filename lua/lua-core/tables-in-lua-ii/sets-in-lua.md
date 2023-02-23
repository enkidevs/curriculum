---
author: Stefan-Stojanovic
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Sets

---
## Content

A set is a collection of values that contains no duplicates. A set is not a built-in data structure in Lua, but it can be implemented using tables.

To create a set in Lua, you can create a table and use the values you want to add to the set as keys in the table. The values of the keys do not matter and can be set to `true` for example.

Here's an example of creating a set in Lua:
```lua
my_set = {
  ["apple"] = true,
  ["banana"] = true,
  ["orange"] = true
}
```

You can then check if a value is in the set by checking if the value exists as a key in the table. For example:
```lua
if my_set["apple"] then
  print("The set contains apple")
else
  print("The set does not contain apple")
end
```

You can also use a `for` loop to iterate over the values in the set. Since the values are not used as keys in the table, you can use the `ipairs` function to iterate over the table.

Here's an example of iterating over the set:

```lua
for key, _ in ipairs(my_set) do
  print(key)
end
```

Sets can be useful for checking for duplicates or keeping track of a collection of unique values.

---
## Practice

We can check if a value is a member of a set by using the ???. 

- `in` operator 
- `contains` function 
- `has` function 
- `find` function 
