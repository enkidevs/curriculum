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

# Number of Length of Operator

---
## Content

In Lua, you can use the `#` operator to find the length of a string or the number of elements in a table.

For example, to find the length of a string `my_string`, you would use:
```lua
my_string = "hello world"
print(#my_string) --> 11
```

When checking the length of a string, it is determined by the number of characters.

To find the number of elements in a table `my_table`, you would use:
```lua
my_table = {1, 2, 3, 4, 5}
print(#my_table) --> 5
```

Note that the `#` operator only works with sequential tables, meaning tables that have integer keys starting at 1 and with no gaps. If the table is not sequential, the result may not be accurate.

---
## Practice

Fill in the gaps to find the length of the `str` string:
```lua
??? = "hello world"
print(???) --> 11
```

- `str`
- `#str`
- `string`
- `$string`


---
## Revision

Fill in the gaps to find the number of elements in the `my_table` table:
```lua
??? = {
  1, 2, 3, 4, 5
}
print(???my_table) --> 5
```

- `my_table`
- `#`
- `table`
- `$`
- `&`
