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

# Appearance Property: Color 
---

## Content
Why are there two color properties you may ask? Well, BrickColor is for people that like naming stuff, Colors is primarily what you would use, as it follows RGB! 

But doesn't BrickColor also do RGB? Well you're not wrong, but Color has a nifty extension where you can use a color tool. This is not only convenient, but it automatically converts the 255 RGB values into values from 0 to 1.

```lua
partVariable.Color = Color3.new()
--Declare Color3 when using the Color property
```
To access the color palette, either type or click on the new() parameters, and you'll see both the current color and a color wheel. Pressing on the wheel opens up a color palette.

![color3-palette](https://img.enkipro.com/6bf24e7b3b7269e619e0afdc2ad0e662.png)

---

## Practice
When choosing between BrickColor and Color, one should choose ??? for its option to open up a color palette.

- Color
- BrickColor
- Colors
- Color3
---

## Revision

The ??? property may not proide a color palette, but it can provide specific color names that may be easier to memorize.

- BrickColor
- Color
- Colors
- Color3