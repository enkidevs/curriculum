---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

standards:
  web.layout-html.0: 10

links:
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'

---
# Intro span
---
## Content

The HTML `<span>` element is used group inline HTML elements. By itself, the element does not represent any visual change by itself, but it can be used to group and style inline elements or group elements with similar attribute values.

**Notes:**  
  - Only use `<span>` if you don't have a more appropriate semantic element.
  - `<div>` and `<span>` are very similar, except `<div>` is a block element, whereas `<span>` is an inline element.

The `<span>` element supports global attributes. To learn more about global attributes visit the `more info` section at the bottom of this insight.

Example:
```
<p>
  <span>
    Simple Paragraph
  </span>
</p>
```

The above example does pretty much nothing, whereas this example:
```
<p>
 <span style="color:green">
  This Is Green
 </span>
</p>
```

Styles the text green.


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
