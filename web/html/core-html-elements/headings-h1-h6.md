---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.syntax-html.0: 10
  web.markup-text.0: 10
  web.markup-text.2: 10

aspects:
  - introduction

links:
  - '[CodePen: Headings: h1-h6](https://codepen.io/enkidevs/pen/KBMMBb){code}'
  - '[Elements on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements){documentation}'

---
# Headings (h1-h6)

---
## Content

The HTML heading elements are very important when determining the style and structure of text within web pages.

There are 6 headings in HTML5 ranging from `<h1>` to `<h6>`. `<h1>` being the largest in size by default and most important by search engines. `<h6>` being the smallest and least important of the text headings within a web page.

Example:
```html
<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6</h6>
```
Headings appear like this:

![heading-sizes](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20style%3D%22width%3A100%25%22%20viewBox%3D%220%200%20320%20282%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22282%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2216%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%22183%22%3EHeading%204%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2213.28%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%22221%22%3EHeading%205%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%22259%22%3EHeading%206%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2218.72%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%22143%22%3EHeading%203%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2224%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%22101%22%3EHeading%202%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2232%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2251%22%3EHeading%201%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/KBMMBb)-->

Search engines interpret headings as part of your page and use the hierarchy to help understand the importance of the content of the web page. It is important that regardless of how much content the web page has, each web page has at least one `<h1>` highlighting the most important topic of the page. 

An `h1` should describe the topic of the entire page. `h2`'s typically describe primary blocks of content within the page, and `h3`'s describe less important blocks of content, etc. 

Headings are also useful for readability since users typically skim through pages primarily scanning the headings first. Thus, the size of the headings can help provide visual cues to the importance of different sections of the web pages.

*Additional Tips:*

Search engines will not penalize multiple uses of `h1`, but one use of an `h1` per page is often preferred. Multiple uses of all the other headings are common and encouraged.

By default, the `<h4>` heading is the same size as `<p>`, which is 16px.

Don't skip heading sequences, like using `h1` and then an `h3`. You'll only want to use `h3` if you have both `h1` & `h2` on the page.

---
## Practice

Which of these is not true about headings:

???

* Headings are more important for page style than search engine ranking.  
* There are 6 heading sizes ranging from `<h1>` to `<h6>`
* By default, `<h4>` is the same size as a paragraph `<p>`.
* Every web page should have at least one `<h1>`.

---
## Revision

Which is the largest text heading?

???

* h1
* h6
* h10
* heading
* head

---
## Quiz

### How much do you know about HTML headings?

Which text heading is the same size as a paragraph by default?

???

* h4
* h6
* h5
* h3
* h2
* h1
* none
