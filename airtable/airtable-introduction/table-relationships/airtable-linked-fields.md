---
author: kapnobatai136
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Linked Fields


---

## Content

The most important rule for linking two tables in Airtable is that they **must belong to the same base** (otherwise it won't work).

Airtable handles sharing data between tables through linked fields. This link (between tables) goes both ways. Consider the following tables (found in the same base):

![movies-table](https://img.enkipro.com/0d707df74e01fec8450f978a9d50bc3d.png)

![directors-table](https://img.enkipro.com/99a67e510e1be7ce1579d5a038e84bc8.png)

Both tables are linked, and the relation between them means that `The Irishman` was directed by `Scorsese`, and that `Scorsese` has directed `The Irishman`.

In this example, both tables are linked, so all the records can be accessed. There is another option which requires the creation of a new table from a linked field.

To re-iterate, linked fields are the bridge between tables, and there are two methods of linking tables:

- Directly linking two existing tables
- Creating a new linked table from an existing field


---

## Practice

Which of the following is not a method of linking tables?

???

- Creating a new linked base from an existing field.
- Directly linking two existing table.
- Creating a new linked table from an existing field.
