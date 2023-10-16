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

# Number of Length Operator II

---

## Content

In Lua, you can also use the `#` operator to find the number of elements in a table.

For example, to find the number of elements in `my_table`, you would use:
```lua
my_table = {1, 2, 3, 4, 5}
print(#my_table) --> 5
```

Note that the `#` operator **only works with sequential tables**, meaning tables that have *integer keys starting at 1 and with no gaps*. 

If the table is **not sequential**, the **result may not be accurate**.

---

## Practice

Fill in the gaps to find the number of elements in the `my_table` table:
```lua
my_table = {
  1, 2, 3, 4, 5
}
print(???my_table) --> 5
```

- `#`
- `$`
- `&`
- `!`
- `~`


---

## Revision

Fill in the gaps to find the number of elements in the `your_table` table:
```lua
??? = {
  1, 2, 3, 4, 5
}
print(???your_table) --> 5
```

- `your_table`
- `#`
- `table`
- `$`
- `&`
