---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction
---
# Elements
---
## Content

HTML elements consist of a start and end tag with content in-between.
Some elements:
- Paragraph:`<p></p>`
- Anchors: `<a></a>`
- Headers: `<h3></h3>`
- Path `href=""`

Example:
```
<h1> 
  Text in a header element 
</h1>
```

It is also very common for HTML elements to be nested. This is common even for the most simple websites.

Example:
```
<p>
  Check out this 
  <a href="http://www.enkipro.com">
  website.
</p>
```

In HTML we also have empty elements or **void** elements. These elements don't have to be closed because they cannot contain content and are also automatically closed by the parser.

The break `<br>` is one of those elements. 

**Note: Even though the closing tag is optional in HTML5, it is best practice to use the closing tag.**
**This is especially necessary if you want your document to be readable in either XML or XHTML.**

---
## Practice

What two elements are written in this code:
`<p>Check out this <a href="http://www.enkipro.com">website.</p>`

???
???

* Paragraphs `<p></p>`
* Anchors `<a>`
* Opening `<p>`
* Closing `</p>`
* Path `href=" "`

---
## Revision

Even fairly simple websites are built using various ways of nested HTML elements.

???

* True
* False

---
## Quiz

### How much do you know about HTML elements?

Is it important to prevent nesting HTML elements when creating web pages?

???

* No
* Yes
