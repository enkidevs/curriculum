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

# Adding/Removing Values

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

---
## Practice

Given the map below, finish the code such that the key, `Samuel`, is added with a string, `Doctor`. 
```lua
profession = {
  Bob = "Electrician", 
  Lisa = "Programmer", 
  John = "Lawyer"
}

???["???"] = ???

```

- profession
- Samuel
- "Doctor"
- key
- Doctor

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
