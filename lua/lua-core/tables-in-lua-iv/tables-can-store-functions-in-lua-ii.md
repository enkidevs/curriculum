---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Calling Methods from Tables

---
## Content

To call the method `increment` in table, `my_table`, we will use colon notation:

```lua
-- call the method
my_table:increment()
print(my_table.value) -- prints 1
```
We then call the method using the colon notation, which automatically passes the table object as the first parameter. Finally, we print the value of the `value` key, which should be 1 after calling the `increment` method.

