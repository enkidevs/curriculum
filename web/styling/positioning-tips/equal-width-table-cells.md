---
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: normal

aspects:
  - introduction
  - workout

category: hack


links:

  - '[CSS Pro Tips](https://github.com/AllThingsSmitty/css-protips){website}'


---

# Equal width table cells

---
## Content

Use `table-layout: fixed` to keep a table's cells at equal width:
```css
#second-table {
  table-layout: fixed;
}
```
This is how the table would look without the property:

![NOtablelayout.svg](https://img.enkipro.com/f59b772c26e3a1435b15c9bbb88f2c19.png)

And with it:

![WITHtablelayout.svg](https://img.enkipro.com/5edbddd3060680b17da3cd3a20f2d25f.png)

---
## Revision

What does the following CSS property do? ???
```css
table-layout: fixed;
```

* Maintains table cells at an equal width.
* Stops the table size from being altered.
* Stops the table layout from being altered.
