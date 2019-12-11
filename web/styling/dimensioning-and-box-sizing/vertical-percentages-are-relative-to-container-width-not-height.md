---
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: normal

aspects:
  - introduction
  - workout

category: caveats

links:

  - '[Vertical Percentage CSS](http://www.impressivewebs.com/vertical-percentages-css/){website}'
  - '[MDN Docs on Percentage](https://developer.mozilla.org/en-US/docs/Web/CSS/percentage){documentation}'

---

# Vertical percentages are relative to container width, not height

---
## Content

Width percentage is intuitively calculated based on the width of the container.

However, percentages on properties like `padding-top` and `margin-top` are also calculated based on the *width* of the container, rather than the height.

```css
div {
  height: 100px;
  width:  400px;
  padding-left: 10%; /* = 40px */
  padding-top: 50%;  /* = 200px */
}
```
Another example:

![HtmlToSvg.svg](https://img.enkipro.com/13c768bdb4f0d2d17f7b46dbe4bfc84a.png)

---
## Practice

What is the `margin-top` value in pixels?
```css
div {
   width: 300px;
   height: 100px;
   margin-top: 10%;
   /* margin-top: ??? px */
```

* `30`
* `10`
* `100`
* `40`

---
## Revision

Percentages on properties such as *padding-top* and *margin-top* are calculated based on the

???

* width of the container.
* height of the container.
* perimeter of the container.
* area of the container.
