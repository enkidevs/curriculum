---
author: kapnobatai136
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Fields


---

## Content

A field in Airtable represents a column. In this example, `Name`, `Notes` and `Attachments` are all fields:

![field-example](https://img.enkipro.com/49cfd9299b1c5e5466c583a4dda009d3.png)

Since you want to store data related to Mars in this table, let's update the fields. You need three fields: `Height`, `Pressure`, and `Temperature`.

To edit a field name, you can either right click it, or press on the arrow pointing down (on the RHS of the cell with the field name).

When renaming a field, you'll also be asked for its type. For this example, choose `Number` for all three fields. It should be a decimal with double precision (e.g. `1.00`), and it should allow negative numbers.

![gif-of-renaming-field](https://img.enkipro.com/3e8a80ad45952507c5176f2fed5acf98.gif)

A field type restricts the data that you can insert, and because we chose `Number` we can only insert numbers in our fields. Airtable gives you a heads up that changing the field type will erase previous data that does not fit, which happened in the example above.


---

## Practice

When changing the type of a field, what happens to the data that doesn't fit the new type?

???

- It's deleted.
- It's updated to the new type.
- You get an error.
