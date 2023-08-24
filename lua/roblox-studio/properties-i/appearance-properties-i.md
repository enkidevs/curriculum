---
author: junoocha
type: normal
category: must-know
links:
  - >-
    [Colors in Roblox Studio](https://create.roblox.com/docs/reference/engine/datatypes/BrickColor/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Appearance Properties

---
## Content
To start, **all** properties can be called by putting a **period after the instance, followed by the property**. Let's look at `BrickColor` for example, which controls the color of the part. To call `BrickColor`, we will write:

```lua
--This is the variable from the last insight. It holds the connection to the part.
partVariable.BrickColor
```
However, the **syntax to change each property is different**. If we consider` BrickColor`, there are *3* ways to change it and they all work.

```lua
--Change BrickColor through a specific name.
partVariable.BrickColor = BrickColor.new("Bright Blue")

--Change BrickColor through a color's associated number.
partVariable.BrickColor = BrickColor.new(23)

--Change BrickColor through a color's rgb values. Must be from 0 to 1 however.
partVariable.BrickColor = BrickColor.new(0.1, 0.2, 172)
```
> The specific names and associated number of every color can be found in the Learn More section.

When you run the script, the part should change colors accordingly.
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
- new(23)

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
- new(23)

