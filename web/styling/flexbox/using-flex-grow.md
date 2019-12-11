---
author: Billiexu

levels:

  - advanced

  - medium

type: normal

category: how to

aspects:
  - workout
  - deep

tags:

  - flexbox


links:

  - '[Article on flex-grow](https://css-tricks.com/almanac/properties/f/flex-grow/){article}'
  - '[MDN Docs on flex-grow](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-grow){documentation}'

---

# Using `flex-grow`

---
## Content

`flex-grow` defines the ability for a flex item to grow if necessary. **It accepts a unitless value that serves as a proportion**. It dictates what amount of the available space inside the flex container the item should take up.

For example, if all items have flex-grow set to 1, every child will set to an equal size inside the container. If you were to give one of the children a value of 2, that child would take up twice as much space as the others.


```html
<ul class="flex-container">
  <li class="flex-item">1</li>
  <li class="flex-item">2</li>
  <li class="flex-item">3</li>
  <li class="flex-item">4</li>
</ul>

```
___

```css
.flex-item:nth-of-type(1) { flex-grow: 1; }
.flex-item:nth-of-type(2) { flex-grow: 1; }
.flex-item:nth-of-type(3) { flex-grow: 2; }
.flex-item:nth-of-type(4) { flex-grow: 1; }

```
Box 3 will take up twice as much space as the others:

![HtmlToSvg.svg](https://img.enkipro.com/67180b8d7914f3f62f6db71d66cd21e9.png)

---
## Practice

Complete the snippet to make `.grow` elements to take three times as much space as the other elements in the flex container:
```css
.flexGrow{
  ??? : ???;
}
```

* `flex-grow`
* `3`
* `flex-shrink`
* `2`
* `1`
* `grow-basis`

---
## Revision

What does `flex-grow` accept and what does it serve as?

???


* A unitless value, which serves as a proportion.
* A value, which serves as a factor.
* A string, which serves as a description.
* A unit, which serves as a multiple.
