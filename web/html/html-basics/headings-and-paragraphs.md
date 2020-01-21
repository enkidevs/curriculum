---
author: mihaiberq

levels:
  - beginner

type: normal

category: must-know

inAlgoPool: false

aspects:
  - introduction

links:
  - '[HTML <p> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/p){documentation}'
  - '[HTML Headings](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements){documentation}'

---

# Headings and Paragraphs

---
## Content

Even the simplest of web pages must contain at least one block of text. Usually, these fields are semantically delimited by the `<h>` and `<p>` tags.
```html
  <h1>Page title</h1>
  <h3>Subtitle</h3>
  <h6>The smallest of the headings</h6>
  <p>The first paragraph of the page</p>
  <p>The second paragraph</p>
```
In a browser, the above code looks like this:

![headings-and-paragraphs](https://img.enkipro.com/7ba149227f555d4e67102574bf37520c.png)

[View CodePen](https://codepen.io/enkidevs/pen/djNpBW)

The visual difference between *headings* and *paragraph* are:
* Headings are styled as bold text and paragraphs are not.
* Typically, `<h1>`,`<h2>`, & `<h3>` are all larger than paragraph text size.
* While a `<h4>` element has the same font size as `<p>`, search engines give it more importance when reviewing the content of the page.

Each of these elements occupy a whole line, and the spacing above and below them is constant, even when nested. This behavior is specific for **block elements**, which both headings and paragraphs display as. Here, you can see the whole line and spacing of nested paragraphs:

```html
 <p>Main paragraph.
   <p>Nested paragraph.</p>
   <p>A second nested paragraph.</p>
 </p>
 <p>Another main paragraph.</p>
```
This HTML will look like this in the browser:

![nested-paragraph](https://img.enkipro.com/58c08ea4dbf491ad5bc63886c502ff5f.png)

[View CodePen](https://codepen.io/enkidevs/pen/rrjMXV)

---
## Practice

The smallest sized heading is

???

* `<h6>`
* `<h1>`
* `<h2>`
* `<h3>`
* `<h4>`
* `<h5>`

---
## Revision

All headings are ??? by default.

* bold
* italic
* bigger than paragraphs
* smaller than paragraphs
