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

---

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

Sharon is building a game where players are given a topic and they must build it within a time frame. Once time is up, they can no longer build and must judge the other buildings. Based on her idea, finish the code below. (Hint. Look at the condition before making your choice)

```lua
intermission(30)
endTime(300)
if judgingPeriod then 
    editedBlock.Locked = ???
end
```

- true
- build
- edit
- false
