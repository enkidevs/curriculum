---
author: oj14henry

levels:

  - medium

type: normal

category: tip

tags:

  - initial

  - inherit


links:
  - '[MDN initial](https://developer.mozilla.org/en-US/docs/Web/CSS/initial){documentation}'
  - '[MDN inherit](https://developer.mozilla.org/en-US/docs/Web/CSS/inherit){documentation}'
  - '[www.quirksmode.org](http://www.quirksmode.org/css/cascading/values.html){website}'


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

![svgcode.svg](%3C?xml%20version=%221.0%22%20encoding=%22UTF-8%22%20standalone=%22no%22?%3E%0D%0A%3Csvg%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20800%20300%22%20%20preserveAspectRatio=%22xMidYMid%20meet%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%0D%0A%3Cg%3E%0D%0A%09%3Crect%20x=%220%22%20y=%220%22%20width=%22800px%22%20height=%22300px%22%20fill=%22#596193%22%20/%3E%0D%0A%3C/g%3E%0D%0A%3Cg%3E%0D%0A%09%3Crect%20x=%22100px%22%20y=%2275px%22%20width=%22250px%22%20height=%22150px%22%20fill=%22#fff%22%20/%3E%0D%0A%09%3Ctext%20x=%22120px%22%20y=%22163px%22%20style=%22font-size:40px;font-family:'Roboto',sans-serif%22%3Ecolor:%20initial%3C/text%3E%0D%0A%3C/g%3E%0D%0A%3Cg%3E%09%0D%0A%09%3Crect%20x=%22450px%22%20y=%2275px%22%20width=%22250px%22%20height=%22150px%22%20fill=%22#fff%22%20/%3E%0D%0A%09%3Ctext%20x=%22465px%22%20y=%22163px%22%20fill=%22olive%22%20style=%22font-size:40px;font-family:'Roboto',sans-serif%22%3Ecolor:%20inherit%3C/text%3E%0D%0A%3C/g%3E%0D%0A%3C/svg%3E)

*Note*: `:root` is a pseudo-class that refers to the highest-level ancestor in the DOM. For webpages, using `:root` is the same as using `html`. However, because CSS can be used for styling `SVG` and `XML` as well, it might have a different meaning sometimes.

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

* <html> element
* <body> element
* <root> element
* highest-level <div> element
