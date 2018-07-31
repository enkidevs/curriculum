---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.syntax-html.0: 10
  web.syntax-html.2: 10

aspects:
  - introduction
---
# Elements
---
## Content

Most HTML elements consist of a start and end tag with content in-between.

Some common elements:
- Paragraph:`<p>Paragraph text is written here.</p>`
- Anchors: `<a>Link text is written here.</a>`
- Headers: `<h3>Header text is written here</h3>`
- Script: `<script>JavaScript code is written here</script>`

Example:
```
<h1>
  Large heading is wrapped by h1 tags.
</h1>
```

It is also very common for HTML elements to be nested. This is common even for the most simple websites.

Example:
```
<p>
  Check out this
  <a href="http://www.enkipro.com">
    website.
  </a>
</p>
```

**Note:** Nested elements are very useful and every website or document has them.

In HTML we also have empty elements or **void** elements.  These elements don't have to be closed because they don't actually wrap around any content.

The break element `<br>` is one of those elements. It can be placed anywhere and forces a line break at that point. 

**Note:** Even though the closing tag is optional in HTML5, it is best practice to use the closing tag. This is especially necessary if you want your document to be readable in either XML or XHTML.

---
## Practice

What elements are used in this code?
```
<p>
  Check out this
    <a href="http://www.enkipro.com">
  website.
</p>
```

???

* Paragraphs and Anchors
* Anchors and Headings
* Headings and Paragraphs
* Images and Links
* Parameters and Anchors
* Anchors and Headings

---
## Revision

What is an HTML element called that does not have a closing tag?

???

* `self closing`
* `tag`
* `closed element`
* `opening tag`
* `< />`

---
## Quiz

### How much do you know about HTML elements?

Identify which element is not a valid HTML element?

* `<paragraph>`
* `<p>`
* `<a>`
* `<img>`
