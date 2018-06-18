---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  web.syntax-html.0: 10
  web.layout-html.0: 10

aspects:
  - introduction

links:
  - '[MDN divisions](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/div){documentation}'
  - '[MDN spans](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/span){documentation}'


---

# Divisions and Spans

---
## Content

Divisions, or `<div>`s and `<span>`s are elements used for styling. They do not have any semantic value as they are generic containers.

When working with CSS, they will be probably your most targeted HTML elements. `<div>` is used to style elements that already have a meaning (think `<p>`, `<img>` or `<h2>`), whereas `<span>` is used to style parts of those elements (such as some important words in a paragraph).

Check out this code:
```html
<div>
  <p>A paragraph inside a div.</p>
  <p>An <span>important</span> paragraph
     inside the div. </p>
  <p> A div <div></div> inside a
     paragraph. </p>
</div>
```

Visually, the code above will be rendered this way:
```html
A paragraph inside a div.
An important paragraph inside the div.
A div
 <!-- new line here -->
inside a paragraph.
```
One difference between `<span>` and `<div>` elements is that you are able to stack multiple `<span>`s on the same line without breaking the layout of the page, while trying to stack `<div>`s will effectively be adding a new line (in the above case, between **div** and **inside**).

Knowing this, you are now one step closer to writing CSS: by giving `<div>`s and `<span>`s ids and classes, their content appearance can be altered.

---
## Revision

span`s are seen as ??? elements.


* stylistic
* structural
* not
