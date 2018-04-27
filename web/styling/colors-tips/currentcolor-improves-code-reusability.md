---
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice


links:

  - '[caniuse.com](http://caniuse.com/#feat=currentcolor){website}'
  - '[osvaldas.info](http://osvaldas.info/keeping-css-short-with-currentcolor){website}'

notes: ''

---

# `currentColor` improves code reusability 

---
## Content

`currentColor` will reuse the calculated value of the element’s `color` property.

Given:
```css
a {
  color: green;
}
a.office {
  color: blue;
}
```

Instead of:
```css
a:hover {
  border: 1px solid green;
}
a.office:hover {
  border: 1px solid blue;
}
```
Use:
```css
a:hover {
  border: 1px solid currentColor;
}
```

---
## Revision

What does the `currentColor` property in CSS do? ???

* Reuse's the calculated value of the element's colour property.
* Sets colour equal to the most used colour in the stylesheet.
* Sets colour equal to the least used colour in the stylesheet.

