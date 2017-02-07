# Divisions and Spans
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

Divisions, or `<div>`s and `<span>`s are elements used for styling. They do not have any semantic value as they are generic containers.

When working with CSS, they will be probably the most targeted HTML elements. `<div>` is used to style elements that already have a meaning (think `<p>`, `<img>` or `<h2>`), whereas `<span>` is used to style parts of those elements (such as some important words in a paragraph).

Check out this code:
```html
<div>
  <p>A paragraph inside a div.</p>
  <p>An <span>important</span> paragraph
 inside the div. </p>
</div>
```

Visually, the code above will be rendered in the same way as:
```html
<p>A paragraph inside a div.</p>
<p>An important paragraph inside the div.
                            </p>
```
This is the moment when you can include CSS: by giving `<div>`s and `<span>`s ids and classes, their content appearance can be altered.

---
## Revision

span`s are seen as ??? elements.

* stylistic
* structural
* not
