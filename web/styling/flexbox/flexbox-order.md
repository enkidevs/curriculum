---
author: Billiexu

levels:

  - advanced

type: normal

category: feature

aspects:
  - workout
  - deep

tags:

  - flexbox


links:

  - '[Article on Order](https://css-tricks.com/almanac/properties/o/order/){article}'
  - '[MDN Docs on Ordering Flex Items](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Ordering_Flex_Items){documentation}'


---

# Flexbox `order`

---
## Content

Flex items are displayed in the same order as they appear in the source document by default. The order property can be used to change this ordering.

HTML:
```html
<ul class="flex-container">
  <li class="flex-item">1</li>
  <li class="flex-item">2</li>
  <li class="flex-item">3</li>
  <li class="flex-item">4</li>
  <li class="flex-item">5</li>
</ul>

```

CSS:
```css
.flex-item:nth-of-type(1) {order: 3;}
.flex-item:nth-of-type(2) {order: 4;}
.flex-item:nth-of-type(3) {order: 1;}
.flex-item:nth-of-type(4) {order: 5;}
.flex-item:nth-of-type(5) {order: 2;}

```
Original order of the boxes: 1.2.3.4.5

Altered order: 3.5.1.2.4

---
## Practice

If `order` accepts negative values,  for the same 5 list items, with the following ordering, which one do you think will be the first displayed?
```css
.flex-item:nth-of-type(1) {order: 3;}
.flex-item:nth-of-type(2) {order: -1;}
.flex-item:nth-of-type(3) {order: 1;}
.flex-item:nth-of-type(4) {order: 4;}
.flex-item:nth-of-type(5) {order: 2;}
```
???

* Box 2
* Box 1
* Box 3
* Box 4
* Box 5

---
## Revision

Take 6 boxes originally ordered 1, 2, 3, 4, 5 and 6. What order are the boxes after the following piece of CSS code?

```css
.flex-item:nth-of-type(1) { order: 2; }
.flex-item:nth-of-type(2) { order: 4; }
.flex-item:nth-of-type(3) { order: 6; }
.flex-item:nth-of-type(4) { order: 3; }
.flex-item:nth-of-type(5) { order: 5; }
.flex-item:nth-of-type(6) { order: 1; )
```
???, ???, ???, ???, ???, ???

* 6
* 1
* 4
* 2
* 5
* 3
