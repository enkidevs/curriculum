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

---
# Doctype
---
## Content

In HTML, every page, no matter the version of HTML it is written in, requires a doctype declaration. The purpose of the doctype declaration is to tell the browser how to render the document and to prevent it from rendering it in a way that may either produce errors or not display the content correctly.

Furthermore, the doctype declaration always has to be the very first thing in your HTML document and is used to tell the browser in which version the page/document is written on because each HTML version has a different doctype declaration.

The doctype declaration for HTML5 is:
```
<!DOCTYPE html>
```

The doctype declaration can be written both in lower and uppercase letters, like so:
```
<!doctype html>
<!DOCTYPE html>
<!DOCTYPE HTML>
<!DoCtYpE hTmL>
```

Nevertheless, if you want to convert your code to any other markup language like XHTML or XML which have stricter rules, you should write the doctype declaration in uppercase like `<!DOCTYPE html>`.

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
