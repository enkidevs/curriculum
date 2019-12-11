---
author: Billiexu

levels:

  - advanced

  - medium

type: normal

category: feature

aspects:
  - workout
  - deep

tags:

  - flexbox


links:

  - '[Flexbox Fundamentals](https://egghead.io/lessons/misc-flexbox-fundamentals){website}'


---

# `direction`: `column-reverse`

---
## Content

In Flexbox, `column-reverse` enables users to arrange elements vertically in reverse order.


```html
<div class="parent">
  <div class="child-1">Child 1</div>
  <div class="child-2">Child 2</div>
  <div class="child-3">Child 3</div>
  <div class="child-4">Child 4</div>
</div>

```
___


```css
.parent{
  width:100%;
  display:flex;
  flex-direction:column-reverse;
}

```
The four child boxes inside class parent will be displayed **vertically** on top of one another in reverse order, starting from the bottom of the parent element:

![566ed55387abab0c00bccab0.svg](https://img.enkipro.com/5cd4ebde7bebedb1168c64d4f3d8ee61.png)

---
## Practice

Where will the first child be displayed?

???

* Bottom-left of the parent.
* Top-left of the parent.
* Bottom-right of the parent.
* Top-right of the parent.

---
## Revision

When using Flexbox, how does `column-reverse` allow users to arrange elements?

 ???


* Vertically in reverse order.
* Vertically in normal order.
* Horizontally in reverse order.
* Horizontally in normal order.
