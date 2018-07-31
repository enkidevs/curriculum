---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.layout-html.0: 1000
  web.layout-html.2: 1000

aspects:
  - introduction
  - workout
links:
  - '[CodePen: Span Element](https://codepen.io/enkidevs/pen/JZwPQO){code}'
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'

---
# Intro span
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

![span-element](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2272%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2272%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2232%22%20fill%3D%22%23000%22%3ENormal%20text%20here.%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22146.86719%22%20y%3D%2232%22%20fill%3D%22green%22%3EText%20within%20span%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2249%22%20fill%3D%22green%22%3Ehere.%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2256.46875%22%20y%3D%2249%22%20fill%3D%22%23000%22%3E%20Normal%20text%20here.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/JZwPQO)-->

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
