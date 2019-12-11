---
author: priyankinirmal

levels:

  - basic

  - beginner

type: normal

category: how to

aspects:
  - introduction

tags:

  - css

  - background-repeat

  - background

  - background-image


links:

  - '[MDN Docs on Background Repeat](https://developer.mozilla.org/en-US/docs/Web/CSS/background-repeat){documentation}'


---

# Use `background-repeat` to repeat a background image horizontally or vertically

---
## Content

The background image will repeat in both directions by default. Use `repeat-x`  to repeat the image horizontally and `repeat-y` to repeat it vertically.

```css
body {
  background-image: url('image.jpg');
  background-repeat: repeat-x;
}
```
Use `no-repeat` to prevent any background repetition.

---
## Practice

Complete the code snippet to repeat an image vertically:

```css
body {
  background-image: url(
      'image.jpg');
  background-repeat: ???;
}
```

* `repeat-y`
* `y-repeat`
* `repeat-x`
* `x-repeat`
* `vertical`
* `horizontal`

---
## Revision

What will the following CSS code do?
```css
body {
   background-image: url('picture.jpg');
   background-repeat: repeat-y;
}
```

???

* Repeats the background image vertically.
* Repeats the background image both horizontally and vertically.
* Stops the background image from repeating.
