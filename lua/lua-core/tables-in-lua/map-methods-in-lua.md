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

# Map/Dictionary Methods

---
## Content

Given a Map:
```lua
ages = {
  John = 28,
  Alice = 32,
  Bob = 45
}
```
Let's use some methods to manipulate it.

### Removing or adding values

```lua
print(ages["Bob"])
-- 45

ages["Bob"] = nil
print(ages["Bob"])
-- nil

ages["Bobbie"] = 33
print(ages["Bobbie"])
-- 33

ages["Margaret"] = 55
print(ages["Margaret"])
-- 55
```

The above way of adding is refered to as the **square bracket notation**.

### Iterating over a table using the `pairs` function

```lua
for key, value in pairs(ages) do
    print(key, value)
end

-- Alice	32
-- Bobbie	45
-- Margaret 55
-- John	28
```

In this example, we're using the `pairs` function to iterate over all key-value pairs in `ages` and print them to the console.

**Note**: The order at which we get the key-value pairs will not be the same every time. 

This is because the `pairs` function in Lua iterates over the key-value pairs in a table in an arbitrary order. This means that the order in which the `for` loop iterates over the key-value pairs may vary each time you run the program.

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

Finish the code to insert 2 key-value pairs into the `ages` dictionary. First key should be called `"Alex"` and have a value of `32` while the second should be called `"Jill"` and have a value of `27`.

```lua
ages = {
  Simba = 21,
  Jasper = 31,
  Bella = 33
}

???["???"] = ???
???["???"] = ???
```

- ages
- Alex
- 32
- ages
- Jill
- 27
