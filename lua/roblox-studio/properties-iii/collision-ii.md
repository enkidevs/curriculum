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

# Collision Property: CanTouch

---

## Content

**CanTouch** is a **boolean property** that will **send signals whenever another part touches it**. If true, it will fire signals when touched, otherwise, if false, there will be no signals.

```lua
partVariable.CanTouch = true
--This part will start sending signals the moment another part touches it.
```

> While we won't touch upon this topic for now, you should start thinking about why and how we can use these signals to our advantage.

---

## Practice
Joe is creating a game that involves teleporting through several rooms using teleporters, with each room holding secret buttons. The following items should involve the CanTouch property: ???, secret buttons

- Teleporters
- Other players
- Floor
- Bed

---

## Revision
Joe is creating a game that involves teleporting through several rooms using teleporters, with each room holding secret buttons. The following items should involve the CanTouch property: teleporters, ???

- Secret buttons
- Floor
- Bed
- Other players