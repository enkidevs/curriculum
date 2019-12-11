---
author: mihaiberq

levels:
  - beginner

type: normal

category: must-know

aspects:
  - introduction

inAlgoPool: false

links:
  - '[MDN Docs on CSS](https://developer.mozilla.org/en-US/docs/Learn/CSS/Introduction_to_CSS){documentation}'
  - '[Scrimba CSS Documents & Cascade](https://scrimba.com/p/pWvwCg/c3vE7cg){website}'

---

# Applying CSS

---
## Content

We talked about CSS and what it can do, but we didn't mention how to actually make the browser use it alongside the HTML file.

There are 3 ways of doing so. In terms of specificity, the external CSS file is the weakest.

### External CSS file

To create an external CSS document, all you have to do is create new text file with a `.css` extension, in any text editor. Saving the file in the same enclosing folder as the HTML document will prevent path incompatibilities.

Within the `<head>` element of the HTML document, add a new `<link>` element pointing to the CSS file, like so:
```html
<head>
  <link rel="stylesheet" href="main.css">
</head>
```
The `href` attribute contains the path to the `.css` file, much like it would work for the `a` element. The above snippet refers to a style sheet located in the same directory as the HTML document. To link a CSS file inside a subdirectory:
```html
<link rel="stylesheet"
   href="subdir/main.css">
```

---
## Practice

Complete the HTML snippet to import an external CSS file:
```html
<head>
  <??? ???="stylesheet"
           ???="index.css" >
</head>
```


* `link`
* `rel`
* `href`
* `import`
* `name`

---
## Revision

What is the recommended way of applying CSS?

???

* External file.
* Internal CSS.
* Inline CSS.
