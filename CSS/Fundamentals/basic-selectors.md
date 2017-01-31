# Type Selectors
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-
    [learn.shayhowe.com](http://learn.shayhowe.com/html-css/getting-to-know-css/#combining-selectors){website}

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

---
## Revision

The `div` selector targets

???

* all `div` elements
* all `div` elements within a class
* all elements with class `div`
