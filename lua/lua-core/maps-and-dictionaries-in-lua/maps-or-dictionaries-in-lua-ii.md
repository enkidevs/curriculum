---
author: Stefan-Stojanovic
category: must-know
type: normal
practiceQuestion:
  formats:
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - type-in-the-gap
  context: standalone

---

# Alternatative to Making Dictionaries

---
## Content

Another way of writing dictionaries involves **removing the brackets of the keys**:
```lua
ages = {
  John = 28,
  Alice = 32,
  Bob = 45
}
print(ages["Alice"]) -- prints 32
```

In this example, `ages` is a map where the **keys are strings representing names**, and the **values are integers representing ages**. The `print` statement accesses the value associated with the key `"Alice"` in the `ages` map and prints it to the console.

---
## Practice

Create a dictionary and output the value of the first key:
```lua
??? = {
  firstFloor = 'Furniture',
  secondFloor = 'Food',
  thirdFloor = 'Gardening'
}
print(storage["???"]) 
-- Furniture
```

- `storage`
- `firstFloor`
- `Furniture`
- `secondFloor`
- `thirdFloor`

---

## Revision

Create a dictionary and output the value of the first key:
```lua
??? = {
  Simba = 'Lion',
  Jasper = 'Giraffe',
  Cougar = 'Mountain Lion'
}
print(animals["???"]) 
-- Lion
```

- `animals`
- `Simba`
- `animal`
- `Lion`
