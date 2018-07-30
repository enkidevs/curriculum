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

Even the simplest of web pages must contain at least one block of text. Usually, these fields are semantically delimited by the `<h>` and `<p>` tags.
```html
  <h1>Page title</h1>
  <h3>Subtitle</h3>
  <h6>The smallest of the headings</h6>
  <p>The first paragraph of the page</p>
  <p>The second paragraph</p>
```
In a browser, the above code looks like this:

![headings-and-paragraphs](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22224%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22224%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%22169%22%3EThe%20first%20paragraph%20of%20the%20page%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2219%22%20y%3D%22203%22%3EThe%20second%20paragraph%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%22128%22%3EThe%20smallest%20of%20the%20headings%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2232%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2245%22%3EPage%20title%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2220%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2289%22%3ESubtitle%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/djNpBW)-->

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

![nested-paragraph](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22157%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22157%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2233%22%3EMain%20paragraph.%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2219%22%20y%3D%2267%22%3ENested%20paragraph.%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2219%22%20y%3D%22101%22%3EA%20second%20nested%20paragraph.%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2219%22%20y%3D%22135%22%3EAnother%20main%20paragraph.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/rrjMXV)-->

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
