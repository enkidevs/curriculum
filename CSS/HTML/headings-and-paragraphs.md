# Headings and Paragraphs
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

Even the simplest of web pages must contain at least one block of text. Usually, these fields are semantically delimited by the `<h>` and `<p>` tags.
```html
<head>
  ...
<head>
<body>
  <h1>Page title </h1>
  <h3>Subtitle </h3>
  <h6>The smallest of the headings </h6>
  <p>The first paragraph of the page </p>
  <p>The second paragraph </p>
</body>
```
In a browser, the above code looks like this:

![basichtmlmin.svg](%3Csvg%20height%3D%22auto%22%20width%3D%22100%25%22%20viewBox%3D%220%200%20810%20310%22%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20version%3D%221.2%22%20baseProfile%3D%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill%3D%22none%22%20stroke%3D%22%23000%22%20fill-rule%3D%22evenodd%22%20stroke-linecap%3D%22square%22%20stroke-linejoin%3D%22bevel%22%3E%3Cpath%20fill%3D%22%23fff%22%20stroke%3D%22%23fff%22%20d%3D%22M0%200h810v310H0z%22/%3E%3Ctext%20stroke%3D%22none%22%20x%3D%228%22%20y%3D%2265%22%20font-family%3D%22%27Roboto%27%2Csans-serif%22%20font-size%3D%2255%22%20font-weight%3D%22700%22%20fill%3D%22%23000%22%3EPage%20title%3C/text%3E%3Ctext%20stroke%3D%22none%22%20x%3D%228%22%20y%3D%22118%22%20font-family%3D%22%27Roboto%27%2Csans-serif%22%20font-size%3D%2238%22%20font-weight%3D%22700%22%20fill%3D%22%23000%22%3ESubtitle%3C/text%3E%3Ctext%20stroke%3D%22none%22%20x%3D%228%22%20y%3D%22165%22%20font-family%3D%22%27Roboto%27%2Csans-serif%22%20font-size%3D%2222%22%20font-weight%3D%22700%22%20fill%3D%22%23000%22%3EThe%20smallest%20of%20headings.%3C/text%3E%3Ctext%20stroke%3D%22none%22%20x%3D%228%22%20y%3D%22220%22%20font-family%3D%22%27Roboto%27%2Csans-serif%22%20font-size%3D%2232%22%20font-weight%3D%22400%22%20fill%3D%22%23000%22%3EThe%20first%20paragraph%20of%20the%20page.%3C/text%3E%3Ctext%20stroke%3D%22none%22%20x%3D%228%22%20y%3D%22265%22%20font-family%3D%22%27Roboto%27%2Csans-serif%22%20font-size%3D%2232%22%20font-weight%3D%22400%22%20fill%3D%22%23000%22%3EThe%20second%20paragraph.%3C/text%3E%3C/g%3E%3C/svg%3E)

The difference between *headings* and *paragraph* is that the former are inherently bold. While a `<h4>` element has the same font size as `<p>`, `<h6>` is almost one third smaller.

Each of these elements occupy a whole line, and the spacing between them is constant, even when nested:
```html
<body>
 <p>Main paragraph.
   <p>Nested paragraph.</p>
   <p>A second nested paragraph.</p>
 </p>
 <p>Another main paragraph.</p>
</body>
```
Which looks like this:

![nestedparagraphsmin.svg](%3Csvg%20height%3D%22auto%22%20width%3D%22100%25%22%20viewBox%3D%220%200%20810%20310%22%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20version%3D%221.2%22%20baseProfile%3D%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill%3D%22none%22%20stroke%3D%22none%22%20fill-rule%3D%22evenodd%22%20stroke-linecap%3D%22square%22%20stroke-linejoin%3D%22bevel%22%3E%3Cpath%20fill%3D%22%23fff%22%20d%3D%22M0%200h810v250H0z%22/%3E%3Ctext%20x%3D%2220%22%20y%3D%2235%22%20font-family%3D%22%27Roboto%27%2C%20sans-serif%22%20font-size%3D%2232%22%20font-weight%3D%22400%22%20fill%3D%22%23000%22%3EMain%20paragraph.%3C/text%3E%3Ctext%20x%3D%2220%22%20y%3D%2283%22%20font-family%3D%22%27Roboto%27%2C%20sans-serif%22%20font-size%3D%2232%22%20font-weight%3D%22400%22%20fill%3D%22%23000%22%3ENested%20paragraph.%3C/text%3E%3Ctext%20x%3D%2220%22%20y%3D%22133%22%20font-family%3D%22%27Roboto%27%2C%20sans-serif%22%20font-size%3D%2232%22%20font-weight%3D%22400%22%20fill%3D%22%23000%22%3EA%20second%20nested%20paragraph.%3C/text%3E%3Ctext%20x%3D%2220%22%20y%3D%22179%22%20font-family%3D%22%27Roboto%27%2C%20sans-serif%22%20font-size%3D%2232%22%20font-weight%3D%22400%22%20fill%3D%22%23000%22%3EAnother%20main%20paragraph.%3C/text%3E%3C/g%3E%3C/svg%3E)
This behavior is specific to **block elements**.

---
## Practice

The smallest sized heading is

???
* h6
* h1
* h2
* h3
* h4
* h5

---
## Revision

All headings are ??? by default.

* bold
* italic
* bigger than paragraphs
* smaller than paragraphs
