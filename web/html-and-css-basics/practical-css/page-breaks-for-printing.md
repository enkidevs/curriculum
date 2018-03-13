---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to


links:

  - '[davidwalsh.name](https://davidwalsh.name/css-page-breaks){website}'


---

# Page breaks for printing

---
## Content

**CSS** provide with a set of properties in order to define how a document is printed:
- `page-break-before` : will break the page before the element on which is applied
- `page-break-after` : will break the page after the element on which is applied
- `page-break-inside` : will add a page break inside the element

These properties also have values to specify how the formatting is done. Apart from `auto` and `avoid`, the `before` and `after` properties have the `right`, `left` and `always` values which will refer to a spread layout like a book.

Syntax:
```css
<style type="text/css">
@media print
table {page-break-inside: avoid}
</style>
```

This will prevent the table to be broken into multiple pages while printing.

Do not forget that the ruling must be preceded by `@media print`.

---
## Revision

Which of the following is not a CSS page break? ???


* `page-break-prior`
* `page-break-before`
* `page-break-after`
* `page-break-inside`

