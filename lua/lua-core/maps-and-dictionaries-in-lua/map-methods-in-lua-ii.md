---
author: Stefan-Stojanovic
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - type-in-the-gap
  context: standalone

---

# More Map/Dictionary Methods

---
## Content

Using the same Map from the previous insight:
```lua
ages = {
  John = 28,
  Alice = 32,
  Bob = 45
}
```

Let's use the **dot notation** to add or remove values from a dictionary:
```lua
-- add a new key-value pair using dot notation
ages.Jessica = 24

-- remove a key-value pair using dot notation
ages.Bob = nil
```

Then we print the new dictionary:
```lua
for key, value in pairs(ages) do
    print(key, value)
end

-- Jessica	24
-- John	28
-- Alice	32
```

Both notations are valid in Lua and can be used interchangeably. However, there are some cases where one notation might be preferred over the other. 

For example, if you have a key that contains spaces or special characters, you'll need to use the square bracket notation to access it. 

Conversely, if you have a key that is a valid Lua identifier (i.e., it starts with a letter or underscore and contains only letters, digits, and underscores), you can use the dot notation to access it.


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

Using dot notation, remove the first key of the given dicitonary and add a new key with the same name with a value of 17:
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

- dogs.Simba
- nil
- dogs.Simba
- 17