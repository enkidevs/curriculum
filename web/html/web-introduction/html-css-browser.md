---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.syntax-html.4: 10

aspects:
  - introduction

---
# HTML/CSS in the Browser
---
## Content

**HTML** and **CSS** are languages used by browsers to present information to the users.

An **HTML** web page will display text, images, links, and containers, but has little control over how that content appears.

A **CSS** document will provide the rules for how the text, images, links, and containers should appear - whether it's setting text to bold or italic, setting width, height, and position for an image or container. If a `.css` file is opened in a browser, the browser would just display the **CSS** code exactly as it is written in a code editor.

Let's say we have 2 files:
```
HTML file:
<p>
  This is a paragraph
</p>

CSS file:

p { color: green; }
```

Loading only the **HTML** file gives the paragraph mentioned above.

Loading both files gives the paragraph mentioned above and colors it green.

However, loading just the **CSS** file will only show the text `p { color: green; }`.

**Note:** XHTML or XML can be used instead of **HTML** to produce the same result. The only difference between them is the syntax; some have looser syntax while other have stricter.

---
## Practice

An HTML page without CSS in a browser will appear as what?

???

* Only text, images, and links are displayed.
* HTML pages open, but no content is displayed.
* HTML pages are not viewable without CSS.
* A document error occurs and nothing displays properly.
* Web page opens without error, but only text is displayed.

---
## Revision

A `.css` page will appear as what when opened in a browser?

???

* Page appears exactly as it is written in a code editor.
* Page opens, but no content of any sort displayed.
* CSS pages are not viewable without HTML.
* A document error occurs and nothing displays properly.
* Page opens without error, but styles can't display without HTML.

---
## Quiz

### How well do you understand basic web pages?

How do `.css` files appear in a browser when viewed alone without a `.html` file?

???

* File appears exactly as it is written in a code editor.
* Only text, images, and links are displayed in a browser.
* A document error occurs and nothing displays properly.
* File opens, but no content of any sort displayed.
* The CSS file doesn't display anything without the HTML.
