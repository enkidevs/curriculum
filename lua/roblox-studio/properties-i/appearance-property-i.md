---
author: junoocha
type: normal
category: must-know
links:
  - >-
    [BrickColor](https://create.roblox.com/docs/reference/engine/datatypes/BrickColor){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Appearance Property: BrickColor
---

## Content
Brickcolor refers to the color of the part, and there are **3 ways to change** it for BrickColor. 

> Note that the **syntax to change each property is different**. 

```lua
--Change BrickColor through a specific name.
partVariable.BrickColor = BrickColor.new("Bright Blue")

--Change BrickColor through a color's associated number.
partVariable.BrickColor = BrickColor.new(23)

--Change BrickColor through a color's rgb values. Must be from 0 to 1 however.
partVariable.BrickColor = BrickColor.new(0.1, 0.2, 172)
```
> The specific names and associated number of every color can be found in the Learn More section.
---

## Practice
I want to change my part to "Bright Red". To do so, I'll write the following code:

```lua
partVariable.??? = BrickColor.???
```

- BrickColor
- new("Bright Red")
- Color
- new(Bright Red)

---

## Revision
I want to change my part to "Bright Blue". To do so, I'll write the following code:

```lua
partVariable.BrickColor = ???.???
```
- BrickColor
- new("Bright Blue")
- Color
- new(Bright Red)
