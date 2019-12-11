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
  - '[Scrimba CSS Selectors, Properties & Values](https://scrimba.com/p/pWvwCg/cpKbvTV){website}'
  - '[Combining Selectors](http://learn.shayhowe.com/html-css/getting-to-know-css/#combining-selectors){website}'
  - '[MDN Docs on CSS Selectors](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Selectors){documentation}'


---

# Type Selectors

---
## Content

As stated in the second insight, selectors are a way of targeting particular HTML elements styling. we should explain what a **selector** is.

*Selectors* range from the simplest:
```css
/* type selector */
p {}
/* class selector */
a.outer-links {}
/* ID selector */
#my-div {}
```
To the most complex:
```css
div p.main:first-line span.my-span {}
```

These selectors behave as patterns used to target specific **HTML elements**. Styling attributes (e.g. `color: white`) added within selectors will then be applied to the **HTML elements**.

### Type Selectors

They are the most generic selectors, which target elements by their type: to select all `<div>` elements in the HTML document, `div` selector is needed:
```css
div {}
p {}
body{}
```
And the HTML:
```html
<body>
  <div></div>
  <p></p>
</body>
```
The type selector doesn't require HTML elements to have any attributes, unlike the next two.

Consider the following stylesheet:
```css
p { font-size: 20px; }
```
When applied to an HTML page such as:
```html
<body>
  <p>Hello, Enki</p>
</body>
```
Will set the `font-size` of all `<p>` elements to `20px`. Therefore, the `Hello, Enki` paragraph will also have a size of `20px`.

---
## Revision

The `div` selector targets

???


* all `div` elements
* all `div` elements within a class
* all elements with class `div`
