---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout

links:

---
# Intro `<span>`
---
## Content

The HTML `<span>` element is used to style inline HTML elements, meaning that it can style elements that are already on a line with other elements. By itself, the element does not represent any visual change by itself and CSS is required to style it.

**Notes:**
  - Only use `<span>` if you don't have a more appropriate semantic element.
  - `<div>` and `<span>` are very similar, except `<div>` is a block element, whereas `<span>` is an inline element.

Example:
```html
<p>Normal text here.
  <span>
    Text within span here.
  </span>
  Normal text here.
</p>
```

The above example with HTML alone does pretty much nothing, whereas this example styles the text green based on the properties assigned to the class brand:
```html
<p>Normal text here.
  <span class="brand-color">
  Text within span here.
 </span>
 Normal text here.
</p>
```

Span Result:

![span-element](https://img.enkipro.com/f9ebbbd713a8ec7a463a5bd9da60110a.png)

[View CodePen](https://codepen.io/enkidevs/pen/JZwPQO)

---
## Practice

Which of these options is not correct about spans?

???

* Is used to group HTML block elements.
* Is used to group HTML inline elements.
* Provides no visual change to the content by itself.
* Provides the ability where CSS styles can be assigned to change the selection.

---
## Revision

Which best describes what these elements group for styling:

`<div>` groups ???
`<span>` groups ???

* block elements
* inline elements
* text elements
* semantic elements
* non-semantic elements
* class attributes
* id attributes

---
## Quiz

### How much do you know about styling grouped elements?

What is the best HTML element to use to group elements for styling purposes?

???

* span
* div
* inline
* inline-block
* li
* p
