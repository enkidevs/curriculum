---
author: oj14henry

levels:

  - medium

type: normal

category: tip

aspects:
  - workout
  - deep

tags:

  - initial

  - inherit


links:
  - '[MDN Docs on Initial](https://developer.mozilla.org/en-US/docs/Web/CSS/initial){documentation}'
  - '[MDN Docs on Inherit](https://developer.mozilla.org/en-US/docs/Web/CSS/inherit){documentation}'
  - '[Inherit and Initial Values](http://www.quirksmode.org/css/cascading/values.html){website}'

---

# Difference between `initial` and `inherit`

---
## Content

`inherit` takes an extra step in checking whether there are other properties it can use in the cascade before using the `initial` value that has been set.

For example:

```css
h1 {
  color: /* initial or inherit */; }
body {
  color: olive; }
:root {
  color: black; }
```
With `initial`, `h1` is required to use `initial` value, so it bypasses the `body` element and goes to the `root`.

With `inherit`, `h1` is required to `inherit` a color which it takes from `body`, giving it a color of `olive`.

![svgcode.svg](https://img.enkipro.com/0d81cd27685cc754054dbf596bc3618f.png)

**Note**: `:root` is a pseudo-class that refers to the highest-level ancestor in the DOM. For webpages, using `:root` is the same as using `html`. However, because CSS can be used for styling `SVG` and `XML` as well, it might have a different meaning sometimes.

---
## Revision

??? takes an extra step to check if there are other properties which can be used in the cascade before using the ??? value which was set.

* `inherit`
* `initial`
* `extend`
* `primary`
* `preliminary`
* `use`

---
## Quiz
### what does the pseudo-class :root refer to?

In a HTML document, what does the pseudo-class `:root` refer to?

 ???

* `<html> element`
* `<body> element`
* `<root> element`
* `highest-level <div> element`
