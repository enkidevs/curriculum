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

# Dot Notation

---
## Content

**Dot notation** is another way to add or remove values from a dictionary:
```lua
ages = {
  John = 28,
  Alice = 32,
  Bob = 45
}

-- add a new key-value pair using dot notation
ages.Jessica = 24

-- remove a key-value pair using dot notation
ages.Bob = nil
```

**Both dot and square bracket notations are valid** in Lua and can be used interchangeably. However, there are **some cases where one notation might be preferred** over the other. 

Keys containing *spaces or special characters* **require square bracket notation**.

Keys that are a *valid Lua identifier[1]* can be **accessed using dot notation**.


---
## Practice

Which of the following statements is true about using the dot notation in Lua to access keys in a dictionary?

???

- You can use the dot notation to access keys that start with a letter or underscore and contain only letters, digits, and underscores.
- You can only use the dot notation to access keys that contain letters and digits.
- You can use the dot notation to access any key in a dictionary.
- You can use the dot notation to access keys that start with a number.

---
## Revision

Using dot notation, remove the first key of the given dictionary and add a new key with the same name with a value of 17 (Hint: Use nil to remove the first key):
```lua
dogs = {
  Simba = 14,
  Bella = 13,
  Neo = 15
}

-- Remove the first key using dot notation
??? = ???

-- Add a new key with the same name and a value of 17
??? = ???
```

- `dogs.Simba`
- `nil`
- `dogs.Simba`
- `17`

---

## Footnotes

[1: Valid Lua Identifier]

An identifier that starts with a letter or underscore and contains only letters, digits, and underscores. The letters can be either upper or lower case.