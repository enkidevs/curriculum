---
author: mihaiberq

levels:

  - beginner

type: normal

aspects:
  - introduction

category: must-know

inAlgoPool: false


links:
  - '[Scrimba CSS Documents & Cascade](https://scrimba.com/p/pWvwCg/c3vE7cg){website}'

---

# Internal CSS

---
## Content

The next two ways of writing CSS code do not require an external `.css` file - both structure (HTML) and style (CSS) can live inside the same HTML file.

### Internal CSS

CSS code can be written inside a `<style>` tag, in the `head` part of the HTML document:
```html
<head>
  <style>
    p{
      color: red;
    }
    #my-div{
      background: purple;
    }
   </style>
</head>
<body>
 <p></p>
 <div id="my-div"></div>
</body>
```
As you can see, it abides by the same declaration rules as they would normally appear inside a `.css` file - selectors, curly brackets etc.

### Inline CSS

Every HTML element can accept a `style` attribute. As the styling is specific to the element, *no selector* is needed. Therefore, the code would be the one *inside* the curly brackets in a `.css` file:
```html
<div style="background: green;
      font-size:30px;"></div>
```
However, this is bad practice as it cannot be overridden by an external CSS file and may cause unexpected problems. This is because inline CSS has the highest priority when rendering.

**Note:** Even though there are multiple ways in which you can style an HTML page, the recommended one is using external files, as it splits the resources into *structure* and *style*.

---
## Revision

The CSS code with the highest rendering priority is

???


* inline CSS
* internal CSS
* external CSS
