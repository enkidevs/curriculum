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
  web.metadata.0: 10
  web.metadata.1: 10
  web.metadata.2: 10
  web.metadata.4: 10

links:
  - '[MDC docs for Metadata](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML)(website)'
  - '[MDN docs for head](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/head){website}'
  - '[StackOverflow CSS before JS explanationn](https://stackoverflow.com/questions/9271276/is-the-recommendation-to-include-css-before-javascript-invalid){website}'

---
# The `head` Element
---
## Content

The `<head>` element is a container for metadata (data about the web page's data) and is placed between the `<html>` tag and the `<body>` tag. The `<head>` elements content is never displayed on the page, unlike the content of the `<body>` element.

Example of metadata:
  - character set
  - document title
  - links to external files
  - CSS styles
  - JavaScript scripts
  - etc.

Simple example:
```
<html>
  <head>
    <meta charset="utf-8">
    <title>Enki</title>
  </head>
  <body>
    <p>Enki page</p>
  </body>
</html>
```

In the example above, we have a simple head element with character encoding and a title of the page.

The `<head>` element can also contain a page description for search engines or links to CSS and JS files. On the other hand, the `<head>` element should never contain the web page's logo, the primary heading of the page, nor the documents primary language.

Larger example:
```
<html>
  <head>
  
    <meta charset="UTF-8">
    <meta name="description"  
      content="Free Web tutorials">
    <title>Enki</title>
    
    <link rel="stylesheet"
    href="css/layout.css"
    type="text/css">
    
    <script type="text/javascript"
    src="script.js"></script>
    
  </head>
  <body>
    <p>Enki page</p>
  </body>
</html>
```

**Note:** When it comes to ordering CSS and JS, always add CSS first. And JS can be loaded in the `<head>` element, or more commonly before the closing `</body>` tag. For an explanation check the `learn more` links section of this insight.

---
## Practice

Which item should NOT be contained in the `<head>` element?

???

* Primary heading of a page
* Web page title
* Character encoding language
* Page descriptions for search engines
* Links to CSS and JS files

---
## Revision

The `<head>` of web pages can contain all but one of these, which one?

???

* Web page logo
* Web page title
* Character encoding language
* Page descriptions for search engines
* Links to CSS and JS files

---
## Quiz

### How much do you know about the `<head>` HTML element?

What order is recommended for adding CSS & JS in the `<head>` of an HTML page?

???

* CSS first, then JS
* JS first, then CSS
* CSS only, JS can't be.
* JS only, CSS can't be.
