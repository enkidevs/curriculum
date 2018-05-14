---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

links:
  - '[w3 documents on all Optional Elements](https://www.w3.org/TR/html5/syntax.html#optional-tags){website}'
  - '[Google docs for Optional Elements](https://google.github.io/styleguide/htmlcssguide.html#Optional_Tags){website}'
  
---
# Optional Elements
---
## Content

In HTML, a lot of elements are called **Optional** elements. They are called **Optional** because either their starting, ending or both tags can be omitted.

**Note: Just because an element's tag is omitted, either one or both, it doesn't mean the element itself is not present at all. It means that it is implied and there no matter if the markup code doesn't contain its tag.**

For instance, the `<html>` element is the root element of every HTML page. So, if you omit its starting, ending or both tags, the element would still be implied by the browser, since all HTML documents have to have an `<html>` element. On the other hand, to omit the `<html>`, or any other optional element's tag, there are certain conditions to be met.

To omit the `<html>` starting tag, the first thing within the `<html>` element cannot be a comment. Whereas to omit the `<html>` ending tag, the first thing after the `<html>` element cannot be a comment.

Some optional elements:
  - `<head>`
  - `<body>`
  - `<p>`
  - `<option>`

Their conditions:

The `<head>` elements starting tag can be omitted if the element is either empty or the first thing within it is another element. Whereas the ending tag can be omitted if the `<head>` element is not followed by a comment or a space character.

The `<body>` elements starting tag can be omitted if the element is either empty or the first thing inside the element is not a comment or a space character. Whereas the ending tag can be omitted if the element is not followed by a comment. On the other hand, this element has an exception; if the first thing inside the `<body>` element is a `<link>`, `<meta>`, `<script>`, `<style>` or a `<template>` element, then the starting tag is not omissible.

The `<p>` element starting tag cannot be omitted. Whereas the ending tag can be omitted if the element is immediately followed by an `<address>`, `<article>`, `<aside>`, `<blockquote>`, `<details>`, `<dl>`, `<fieldset>`, `<figcaption>`, `<figure>`, `<footer>`, `<form>`, any heading element `<h1>-<h6>`, `<header>`, `<hr>`, `<main>`, `<nav>`, `<ol>`, `<p>`, `<pre>`, `<section>`, `<table>` or an `<ul>` element. Also, the elements tag may be omitted if there is no more content in the parent HTML element, and that HTML element is not a `<a>`,  `<audio>`, `<del>`, `<ins>`, `<map>`, `<noscript>`, or a `<video>`.

The `<option>` elements starting tag cannot be omitted. Whereas the ending tag can be omitted if the first thing after the `<option>` element is either another `<option>` or an `<optgroup>` element, or if there is no more content in the `<option>` element's parent element.

For more elements and their condition check the learn more links section of this insight.

Furthermore, as for the benefits of omitting tags, they are not high. You can save a little time on building the page and a little on bandwidth. On the other hand, not omitting tags is a very good practice because it makes the HTML code more consistent, easier to read, and also, the code becomes easier to convert to another Markup Languages like XHTML.

---
## Practice

Select the only code required for valid HTML5 web pages today: 

???

* `<!DOCTYPE html>`
* `<html>`
* `<head>`
* `<body>`
* `<main>`
* `<p>`

---
## Revision 

What is the only HTML5 tag required for valid web pages today? 

???

* `<!DOCTYPE html>`
* `<html>`
* `<head>`
* `<body>`
* `<main>`
* `<p>`


---
## Quiz

Which page structure is recommended by Google for HTML5 pages today?

```
<!DOCTYPE html>
<html>
  <head>
    <title>Option #1</title>
  </head>
  <body>
    <p>Hello.</p>
  </body>
</html>
```

```
<!DOCTYPE html>
<title>Option #2</title>
<p>Hello.
```

???

* Option #1
* Option #2

