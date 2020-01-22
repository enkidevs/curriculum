---
author: kapnobatai136

category: must-know

aspects:
  - introduction

type: normal

---

# Fields

---
## Content

A field in Airtable represents a column. In this example, `'Name'`, `'Notes'` and `'Attachments'` are all fields:

![field-example](https://img.enkipro.com/49cfd9299b1c5e5466c583a4dda009d3.png)

Seeing as you want to store data related to Mars in this table, it would be a good idea to update the fields. You need three fields, named `'Height'`, `'Pressure'`, `'Temperature'`.

To edit a field name, you can either right click it, or press on the arrow pointing down (found in the right-side of the cell containing the field name).

When renaming a field, you will also be asked what type you would want it. For this example, choose `'Number'` for all three fields. It should be a decimal with double precision (e.g. `1.00`), and it should allow negative numbers.

![gif-of-renaming-field](https://img.enkipro.com/3e8a80ad45952507c5176f2fed5acf98.gif)

A field type restricts the data that you can insert, and because we have chosen `'Number'` we can only insert numbers in our fields. Airtable warns you that changing the field type will erase previous data that does not fit, which has happened in the example above.

---
## Practice

When changing the type of a field, what happens to the data that does not fit the new type?

???

* It's deleted.
* It's updated to the new type.
* Nothing, Airtable throws an error and doesn't let you change the type.