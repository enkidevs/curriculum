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

# Accessing Array Elements

---
## Content

You can **access the elements of an array using their index**, like this:

```lua
-- Accessing elements of an array
my_array = {1, 2, 3, 4, 5}
print(my_array[1]) -- prints 1
print(my_array[3]) -- prints 3
```

> Note that **Lua does not use zero indexing** (start at 0) like other coding languages.

Arrays in Lua can be useful for storing and manipulating data that is naturally indexed by integers, such as a sequence of user input or a collection of numerical data.

---

## Practice

What is the result of the following code in Lua?

```lua
my_array = {1, 4, 7, 14, 20}
print(my_array[2])
-- ???
```

- 4
- 1
- 7
- 14
- 20
- 2

---

## Revision

What is the result of the following code in Lua?

```lua
my_array = {[1] = 10, [2] = 20, [3] = 30}
print(my_array[2])
-- ???
```

- 20
- 10
- 30
- 2