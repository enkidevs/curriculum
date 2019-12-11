---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

aspects:
  - workout
  - deep

links:

  - '[Referencing Parent Selectors](http://thesassway.com/intermediate/referencing-parent-selectors-using-ampersand){website}'


---

# Referencing Parent Selectors

---
## Content

It can often be useful to use a nested rule's parent selector in more ways than just the default.

For example, using special styles when the selector is hovered over. To implement this, you can specify the location the parent selector should be inserted using `&`.

The `&` is replaced by the parent selector as it appears in the CSS.

```css
p {
  font-weight: bold;
  &:hover { text-decoration: underline; }
  body.firefox & { font-weight: normal; }
}
```
The above sass code example would generate the following CSS code:
```css
p {
  font-weight: bold;
}
p:hover {
  text-decoration: underline;
}
body.firefox p {
    font-weight: normal;
}
```

---
## Revision

When referencing parent selectors, what symbol is used and what happens to this symbol upon compilation from Sass to CSS? ???


* &, it's replaced by the referenced parent selector.
* &, nothing, it remains there alongside the parent selector.
* +, it's replaced by the referenced parent selector.
* +, nothing, it remains there alongside the parent selector.
* !, it's replaced by the referenced parent selector.
* !, nothing, it remains there alongside the parent selector.
