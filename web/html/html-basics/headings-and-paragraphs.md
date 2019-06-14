---
author: mihaiberq

levels:
  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  web.syntax-html.0: 10
  web.markup-text.0: 10
  web.markup-text.2: 10

aspects:
  - introduction

links:
  - '[CodePen: Headings and Paragraphs](https://codepen.io/enkidevs/pen/djNpBW){code}'
  - '[CodePen: Nested Paragraphs](https://codepen.io/enkidevs/pen/rrjMXV){code}'
  - '[MDN paragraphs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/p){documentation}'
  - '[MDN headings](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements){documentation}'

---

# Headings and Paragraphs

---
## Content

Even the simplest of web pages must contain at least one block of text. Usually, these fields are semantically delimited by the heading and paragraph tags. A page heading becomes `<h_>`, ranging from `<h1>`, the most important (and typically largest), to `<h6>`, the least important (and typically smallest) heading. Meanwhile, there is only one set of tags that represent paragraphs, `<p>`.

```html
  <h1>Page title</h1>
  <h3>Subtitle</h3>
  <h6>The smallest of the headings</h6>
  <p>The first paragraph of the page</p>
  <p>The second paragraph</p>
```
In a browser, the above code looks like this: 

![headings-and-paragraphs](https://img.enkipro.com/0696241d860886d65fa29bb742d5bd86.png)

You can go on [CodePen](https://codepen.io/enkidevs/pen/djNpBW) to test this example or write your own code.

The visual differences between *headings* and *paragraph* are:
* Headings are styled as bold text and paragraphs are not.
* Typically, `<h1>`,`<h2>`, & `<h3>` are all larger than paragraph text size. 
* `<h4>` element has the same font size as `<p>`

Each of these elements occupy a whole line, and the spacing above and below them is constant, even when nested. This behavior is specific for **block elements**, which both headings and paragraphs display as. Here, you can see the whole line and spacing of nested paragraphs: 

```html
 <p>Main paragraph.
   <p>Nested paragraph.</p>
   <p>A second nested paragraph.</p>
 </p>
 <p>Another main paragraph.</p>
```
This HTML will look like this in the browser:

![nested-paragraph](https://img.enkipro.com/0b187284e3dc92114e8ab15bc0d9d719.png)

If you want to play with this code you can visit this [CodePen](https://codepen.io/enkidevs/pen/rrjMXV) we have created for you.

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
 
