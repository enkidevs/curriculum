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
    - type-in-the-gap
  context: standalone

---

# Maps/Dictionaries

---
## Content

In Lua, a map is a **table that associates keys with values**. A map is also known as an **associative array** or **dictionary**. 

A table can be used as a map in Lua, where the **keys can be any data type** and the **values can be any data type** including other tables. 

You can **use the square bracket notation to access the values** associated with a key in a map.

Here's an example of a map that associates names with ages:
```lua
ages = {
  ["John"] = 28,
  ["Alice"] = 32,
  ["Bob"] = 45
}

print(ages["Alice"]) -- prints 32
```
---

## Practice

Finish the code to create a dictionary called `people` with 2 key-value pairs, then print the value for the second key:
```lua
??? = {
  ["John"] = 30,
  ["Alice"] = 25,
}

print(???["???"]) 
-- 25
```

- `people`
- `people`
- `Alice`
- `John`


---
## Revision

Finish the code to create a dictionary called `people` with 2 key-value pairs, then print the value for the first key:
```lua
??? = {
  ["John"] = 30,
  ["Alice"] = 25,
}

print(???["???"]) 
-- 25
```

- `people`
- `people`
- `John`
- `Alice`