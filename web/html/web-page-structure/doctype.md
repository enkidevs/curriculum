---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction

standards:
  web.syntax-html.3: 10
  web.syntax-html.4: 10
  web.syntax-html.5: 10
  web.metadata.4: 10

links:
  - '[MDN docs for Doctype](https://developer.mozilla.org/en-US/docs/Glossary/Doctype){website}'
  - '[List of all Doctype declarations](https://www.w3.org/QA/2002/04/valid-dtd-list.html){website}'
  
---
# Doctype
---
## Content

In HTML, every page, no matter the version of HTML it is written in, requires a doctype declaration telling the browser how to render the document properly.

Technically, the doctype declaration isn't an HTML element, but a specific direction for browsers to understand they type of web page being delivered.

The doctype declaration for HTML5 is:
```
<!DOCTYPE html>
```

Although the doctype declaration can be written both in lower and uppercase letters, it tends to be most widely accepted for `DOCTYPE` to be written in uppercase and `html` to be written in lowercase letters. 

This is only one doctype declaration for HTML5 compared to the three doctype declarations used for HTML 4.01 making this much similar for developers. 

---
## Practice

Which DOCTYPE is needed for viewing HTML5 webpages?

???

* `<!DOCTYPE html>`
* `<!DOCTYPE html5>`
* `<!DOCTYPE HTML5>`
* `<!DOCTYPE "html">`
* `<!DOCTYPE html en>`

---
## Revision

Which of these statements is not correct about the `<!DOCTYPE html>`?

???

* It is an HTML element.
* It is written as the very first line of the file.
* It tells the browser what version the code is written in.
* It is required for every web page.
* It can be written in both uppercase or lowercase.

---
## Quiz

### How much do you know about HTML Versioning?

What is required on the first line of every HTML5 document?

* The doctype
* Link to the CSS document
* Opening `<html>` element
* Opening `<head>` element
