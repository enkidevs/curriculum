# Hyperlinks
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

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

![hyperlinkmin.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20810%20310%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20fill=%22#fff%22%20stroke=%22none%22%20d=%22M0%200h810v310H0z%22/%3E%3Ctext%20stroke=%22none%22%20x=%228%22%20y=%2240%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2235%22%20font-weight=%22700%22%20fill=%22#000%22%3EA%20h3%20heading.%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%228%22%20y=%22111%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#000%22%3EA%20paragraph.%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%228%22%20y=%22176%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#00e%22%3EA%20hyperlink.%3C/text%3E%3Cpath%20fill=%22none%22%20d=%22M8%20177.5h157%22%20stroke=%22#00e%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3C/g%3E%3C/svg%3E)

The default placeholder for the `href` attribute is `#`. In this case, after clicking the hyperlink, nothing will happen, which is better than the error thrown if the path is not valid.
```html
<a href="#">Empty href</a>
```