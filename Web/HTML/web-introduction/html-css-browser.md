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
# HTML/CSS in the Browser
---
## Content

**HTML** and **CSS** are languages used by browsers to present information to the users.

**Note: XHTML or XML can be used instead of HTML to produce the same result. The only difference between them is the syntax; some have looser syntax while other have stricter.**

A **HTML** web page without **CSS** will only show text, images, links, and containers. Whereas with **CSS** you can give each text, image, link, and container, either a different or same style; whether it's setting text to bold or italic, setting width, height, and position for an image or container.

As for using only **CSS** to create web pages, it is impossible since **CSS** is a `stylesheet` language used for styling. Also, if you try and load a `.css` file without a `.html` file, the browser would just display the **CSS** code exactly as it is written in a code editor.

Lets say we have 2 files:
```
HTML file
<p> 
  This is a paragraph
</p>

CSS file

p { color: green; }
```

Loading only the HTML file gives the paragraph mentioned above.

Loading both files gives the paragraph mentioned above and colors it green.

However, loading just the CSS file will only show the text `p { color: green; }`.

Combining **HTML** and **CSS** gives us texts, images, links, etc... with an appropriate styling for each element. 

Essentially, a page without **CSS** is just content with little to no styling, whereas a page without **HTML**, **XHTML** or **XML**(any of the three markup languages) cannot exist, since all known browsers only support markup languages for websites.


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
