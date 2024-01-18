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

# PropertyTable

---

## Content

The `PropertyTable` is a local variable and an array or a table. 

*Each element* in the array will **hold the data for a changed property**. Think of this as the properties for a moment in time for an object, and just like an animation with frames, you'll have multiple `PropertyTables` to represent different changes across time.

> Remember to put a semi-colon after every element in the table!

```lua
local PropertyTable = {
  Position = Vector3.new(30,0,30); --Vector3 is used since orientation isn't used here.
  Size = Vector3.new(30, 0, 30);
  Transparency= 0.7;
  Color = Color3.new(1, 0.596078, 0.243137) --Color3 is used due to its wider variety.
}
```
> PropertyTable is a changeable name. You can change it to whatever as long as it's used in the parameters of Create().

---

## Practice

```lua
local PropertyTable = {
  Size = Vector3.new(30, 0, 30);
}
```
In the code above, the property being changed is ???, and causes the part to increase/decrease in size in the X and Z axis.

- Size
- Transparency
- Color
- Vector3

---

## Revision

```lua
local PropertyTable = {
  Size = Vector3.new(30, 0, 30);
}
```
In the code above, the property being changed is size, and causes the part to... ???

- Increase/decrease in size in the X and Z axis
- Change orientation in the X and Z axis
- Increase/decrease in size in the X and Y axis
- Change orientation in the X and Y axis