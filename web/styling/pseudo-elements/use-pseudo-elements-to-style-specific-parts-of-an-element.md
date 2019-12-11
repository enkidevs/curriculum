---
author: priyankinirmal

levels:

  - basic

type: normal

category: pattern

aspects:
  - introduction

tags:

  - css

  - pseudo-elements


links:

  - '[MDN Docs on Pseudo Elements](https://developer.mozilla.org/en-US/docs/Web/CSS/Pseudo-elements){documentation}'


---

# Use pseudo-elements to style specific parts of an element

---
## Content

To distinguish them from pseudo-classes, **pseudo-elements** should be preceded by two colons `::`. In some older browser versions the two colon notation might not be supported, so the single colon notation (`:`) must be used.

The syntax is as follows:
```css
selector::pseudo-element {
  property: value;
}
```
An example of a pseudo-element is `::before`. This will create and style a pseudo-element placed before the real element.

Some of the pseudo-elements are:
- `::before`: comes before the element's content.
- `::after`: comes after the element's content.
- `::first-letter`: targets the first letter of a paragraph.
- `::first-line`: targets the first line of a paragraph.
- `::selection`: targets a portion that is selected by the user.

It is worth noting that some browsers don't support `::before` and `::after` pseudo-elements for `img` and `input` fields.

---
## Practice

Which of the following is NOT a pseudo-element?

???


* `::first-paragraph`
* `::first-line`
* `::first-letter`
* `::before`

---
## Revision

Ideally, what should precede all pseudo-elements declaration?

???


* `::`
* `;;`
* `:`
* `-`
* `;`
