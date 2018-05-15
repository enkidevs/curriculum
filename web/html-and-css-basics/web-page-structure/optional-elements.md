---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.syntax-html.3: 10
  web.syntax-html.4: 10
  web.syntax-html.5: 10

aspects:
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


Example where no tag is omitted:
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

Example with same output where tags are omitted:
```
<!DOCTYPE html>
<title>Option #2</title>
<p>Hello.
```

Even though both examples produce the same output on most browsers, some old ones may not interpret the second example properly. Also, the first example is what Google recommends for HTML5 pages today.  Because of this and for consistency, you should always structure your HTML like it is in the first example.

---
## Practice

Which one of these elements is implied even if the string is not located in the markup?

???

* `<html>`
* `<audio>`
* `<link>`
* `<mainelement>`

---
## Revision

Which page structure is recommended by Google for HTML5 pages today?

```
---------Option 1--------------
<!DOCTYPE html>
<html>
  <head>
    <title>Option #1</title>
  </head>
  <body>
    <p>Hello.</p>
  </body>
</html>

---------Option 2--------------
<!DOCTYPE html>
<title>Option #2</title>
<p>Hello.
```

???

* Option 1
* Option 2

---
## Quiz

### How much do you know about optional elements?

What are optional elements?

???

* Elements where either the starting, ending or both tags may be omitted.
* Elements that are always there, even if the code for them isn't.
* Elements that have different options within them.
* Optional elements is just a name for HTML elements.
