d---
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
The **PropertyTable** is a local variable and an array or a table. 

Each element in the array will hold the data for a changed property. 

```lua
local PropertyTable = {
	Position = Vector3.new(30,0,30); --Vector3 is used since orientation isn't used here
	Size = Vector3.new(30, 0, 30);
	Transparency= 0.7;
	Color = Color3.new(1, 0.596078, 0.243137) --Color3 is used due to its wider variety
}
```
> PropertyTable is a changeable name. You can change it to whatever as long as its used in the parameters.

---

## Practice

---

## Revision
