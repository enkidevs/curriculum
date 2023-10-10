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

# Checking for a Set's Value

---
## Content

You can check if a value is in the set **by checking if the value exists as a key** in the table. For example:
```lua
if my_set["apple"] then
  print("The set contains apple")
else
  print("The set does not contain apple")
end
```
If `my_set["apple"]` does exist, it will **return true** and print the line below. If not, it will **return false** and print the alternate line.

---
## Practice

In the code below, when will the output be "The set does not contain apple"? ??? 

```lua
if my_set["apple"] then
  print("The set contains apple")
else
  print("The set does not contain apple")
end
```

- When `apple` is not a key in my_set
- When `apple` is a key in my_set
- It will always be printed
- It will only be printed when the first print statement executes

---

## Revision

In the code below, when will the output be "The set contains apple"? ??? 

```lua
if my_set["apple"] then
  print("The set contains apple")
else
  print("The set does not contain apple")
end
```
- When `apple` is a key in my_set
- When `apple` is not a key in my_set
- It will always be printed
- It will only be printed when the first print statement executes
