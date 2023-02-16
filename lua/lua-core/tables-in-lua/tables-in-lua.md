---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# Tables

---
## Content

A table is a data structure that can hold a collection of values. Tables in Lua are very versatile and can be used to represent arrays, dictionaries, and other data structures. You can create a table in Lua by enclosing a list of values in curly braces.

Here's an example of creating a table in Lua:
```lua
my_table = {1, 2, 3, 4, 5}
```

A table in the above form, can also be refered to as an **Array**. More on arrays in the next insight.

Tables can also be nested. Meaning you can create a table that holds other tables as its values:
```lua
my_nested_table = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
}
```

Each of these tables represents a row of values in a matrix.