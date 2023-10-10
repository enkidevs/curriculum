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

# Iteration with a Pairs Function

---
## Content

In this example, we're using the `pairs` function to iterate over all key-value pairs in `ages` and print them to the console.

```lua
ages = {
  Alice = 32,
  Bobbie = 45,
  Margaret = 55,
  John = 25
}

for key, value in pairs(ages) do
    print(key, value)
end

-- Alice 32
-- Bobbie	45
-- Margaret 55
-- John	28
```

**Note**: The order at which we get the key-value pairs will not be the same every time. 

This is because the `pairs` function in Lua **iterates over the key-value pairs** in a table in an **arbitrary order**. This means that the order in which the `for` loop iterates over the key-value pairs **may vary each time you run** the program.

---
## Practice

Finish the code to iterate over a dictionary called `people` and print out each key-value pair.
```lua
??? = {
  Bob = "Electrician", 
  Lisa = "Programmer", 
  John = "Lawyer"
}

??? ???, value in pairs(???) do
    print(key, ???)
end
```

- people
- for
- key
- people
- value

---
## Revision

Finish the code to iterate over a dictionary called `fruits` and print out each key-value pair.
```lua
??? = {
  Apple = 4.99, 
  Pear = 3.99, 
  Banana = 3.49
}

??? ???, value in pairs(???) do
    print(key, ???)
end
```

- fruits
- for
- key
- fruits
- value
