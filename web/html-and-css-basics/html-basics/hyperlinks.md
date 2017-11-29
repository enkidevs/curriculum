# Hyperlinks
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

---
## Content

**Hyperlinks** represent a way to tell the browser to move up or down the page (think of content summaries) or to load other HTML documents.

They are semantically separated by the `<a>` tag. Because of how they work, every hyperlink must have the `href` attribute, which takes a path of where to go next as an argument which is represented as a string:
```html
<a href="contact.html">
    Contact
</a>
```
The main difference between `<p>` and `<a>` elements is that you can click on hyperlinks. To visually represent that ability, their default color is *blue* and they are *underlined*.

![hyperlinkmin.svg](%3Csvg%20height%3D%22auto%22%20width%3D%22100%25%22%20viewBox%3D%220%200%20810%20310%22%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20version%3D%221.2%22%20baseProfile%3D%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill%3D%22none%22%20stroke%3D%22%23000%22%20fill-rule%3D%22evenodd%22%20stroke-linecap%3D%22square%22%20stroke-linejoin%3D%22bevel%22%3E%3Cpath%20fill%3D%22%23fff%22%20d%3D%22M0%200h810v310H0z%22%20stroke%3D%22none%22/%3E%3Ctext%20stroke%3D%22none%22%20x%3D%228%22%20y%3D%2240%22%20font-family%3D%22%27Roboto%27%2Csans-serif%22%20font-size%3D%2235%22%20font-weight%3D%22700%22%20fill%3D%22%23000%22%3EA%20h3%20heading.%3C/text%3E%3Ctext%20stroke%3D%22none%22%20x%3D%228%22%20y%3D%22111%22%20font-family%3D%22%27Roboto%27%2Csans-serif%22%20font-size%3D%2230%22%20font-weight%3D%22400%22%20fill%3D%22%23000%22%3EA%20paragraph.%3C/text%3E%3Ctext%20stroke%3D%22none%22%20x%3D%228%22%20y%3D%22176%22%20font-family%3D%22%27Roboto%27%2Csans-serif%22%20font-size%3D%2230%22%20font-weight%3D%22400%22%20fill%3D%22%2300e%22%3EA%20hyperlink.%3C/text%3E%3Cpath%20d%3D%22M8%20177.5h157%22%20stroke%3D%22%2300e%22%20stroke-linejoin%3D%22miter%22%20stroke-miterlimit%3D%222%22/%3E%3C/g%3E%3C/svg%3E)

The default placeholder for the `href` attribute is `#`. In this case, after clicking the hyperlink, nothing will happen.
```html
<a href="#">Empty href</a>
```

---
## Practice

Complete the following snippet in order for it to be valid:
```html
<??? ???="www.mywebsite.com">
  My website
</a>
```
* `a`
* `href`
* `style`
* `p`
* `link`
---
## Revision

The tag denoting a hyperlink is ???.

* <a>
* <p>
* <body>
* <div>
