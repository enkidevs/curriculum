---
author: kapnobatai136
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Linking Tables 1


---

## Content

Linking two tables is as easy as creating a new field. Going back to the previous example, before the tables were linked they looked something like this:

![movies-table-before-linking](https://img.enkipro.com/2884bdf4823e64b335dad7a5e3b7527b.png)

![directors-table-before-linking](https://img.enkipro.com/1a0a65a1c575c0b6d6423ef33c347e64.png)

To link these tables, you have to create a new field, and when choosing the type you'll have three options related to linking:

- Link to another record
- Link to Directors
- Link to Movies

Suppose we're in the `Movies` table. To link both tables (and all the records inside), create a new field named `Director` (or anything else you want) and as a type choose the `Link to Directors` option. 

![gif-of-creating-linked-field](https://img.enkipro.com/2e7a9eac1f56f6414a7f542169866849.gif)

That's it! You've now linked both tables. Notice how a new field named `Movies` appears in the `Directors` table. This is due to the dual nature of linking.

Adding data to the linked fields is done by clicking on the `+` sign found in the linked field, and selecting the record you want.

![selecting-data-in-linked-fields](https://img.enkipro.com/9d304af19f846ad4767aae26f36e5f5d.gif)


---

## Practice

To link two already existing tables you have to ???.

- `create a new field and select the Link <name of table to be linked>`
- create a new base and link it using base linking
- delete the table and create a new table from scratch

