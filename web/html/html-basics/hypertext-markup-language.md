---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  web.syntax-html.0: 10
  web.syntax-html.4: 10

aspects:
  - introduction

links:

  - '[First web page](http://info.cern.ch/hypertext/WWW/TheProject.html){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Glossary/HTML){documentation}'


---

# HyperText Markup Language

---
## Content

HyperText Markup Language, more often just referred to as **HTML**, is the standard markup language used to create websites. HTML describes the structure of a web page semantically and uses elements that are made up of **tags**. Tags are easy to recognize as they use *less than* (<) and *greater than* (>) signs.

To denote the end of most HTML elements, a closing tag is used. It has an extra forward slash before the name of the element:
```html
<element>Content</element>
```

HTML *elements* are the foundation on which the page is built. To specify that the following code is HTML, an `<html>` tag should open and close the document:
```html
<html>
 <!-- more code here -->
</html>

```

Elements give content meaning based on their function. For example, a page heading becomes `<h_>`, ranging from `<h1>`, the most important (and typically largest), to `<h6>`, the least important (and typically visually smallest) heading.

Paragraphs: `<p>`, images: `<img>`, and hyperlinks: `<a>` are also important semantic building blocks.

To give them meaning, however, they must be enclosed in a `<body>` element, which establishes what part of the HTML document the browser has to represent:

```html
<body>
  <h1> Title </h1>
  <h3> Subtitle </h3>
  <p> This is a paragraph in
      the page with an
      <a href="mywebsite.com">
      external link</a>.</p>
</body>
```

The part of the HTML that is not *displayed* in the web page itself, but helps the browser decide *how* to display the content is called **head**. It usually contains information such as the title of the web page displayed in the browser's tab and links to the CSS document that contains the styles used in this page:

```html
<html>
<head>
  <title>Page Tab Title</title>
  <link rel="stylesheet"
        href="mystyle.css">
</head>
<body>
 ...
</body>
</html>
```

You can bookmark this insight to receive a link to the *first online web page*.

---
## Practice

The two main components of a HTML document are ???.


* `<head>` and `<body>`
* `<heading>` and `<body>`
* `<p>` and  `<a>`
* `<h>` and `<body>`

---
## Revision

The two main components of a HTML document are ???.


* `<head>` and `<body>`
* `<heading>` and `<body>`
* `<p>` and `<a>`
* `<h>` and `<body>`
