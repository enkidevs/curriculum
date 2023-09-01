---
author: junoocha
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Data Property: Locked

---

## Content

**Locked** is a **boolean property** that determines if **in-game tools can edit the part**. True if un-editable, false otherwise.

```lua
partVariable.Locked = false
--As soon as this line runs, the part becomes editable using in-game tools
--Useful in building games where players can build only in a set amount of time
```

## Practice

Louie is building a game where players must build their own base to protect them from enemies. Based on Louie's idea, finish the code below.
```lua
buildBase(Wood)
fortifyBase(Steel)
if editMode then 
    editedBlock.Locked = ???
end
```
- false
- true
- build
- edit

---

## Revision

Louie is building a game where players must build their own base to protect them from enemies. Based on Louie's idea, finish the code below.
```lua
buildBase(Wood)
fortifyBase(Steel)
if editMode then 
    editedBlock.Locked = ???
end
```
- false
- true
- build
- edit

---