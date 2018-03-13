---
author: Billiexu

levels:

  - advanced

  - medium

type: normal

category: feature

tags:

  - flexbox

  - 


links:

  - '[egghead.io](https://egghead.io/lessons/misc-flexbox-fundamentals){website}'


---

# `direction`: `column-reverse`

---
## Content

In Flexbox, `column-reverse` enables users to arrange elements vertically in reverse order.


```
<div class="parent">
  <div class="child-1">Child 1</div>
  <div class="child-2">Child 2</div>
  <div class="child-3">Child 3</div>
  <div class="child-4">Child 4</div>
</div>

```
___



```
.parent{
  width:100%;
  display:flex;
  flex-direction:column-reverse;
}

```
The four child boxes inside class parent will be displayed **vertically** on top of one another in reverse order, starting from the bottom of the parent element:

![566ed55387abab0c00bccab0.svg](%3Csvg%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20810%20310%22%20fill=%22#fff%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2240px%22%0D%0A%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20%20version=%221.2%22%20baseProfile=%22tiny%22%3E%0D%0A%3Cg%3E%0D%0A%09%3Crect%20x=%220%22%20y=%220%22%20width=%22800%22%20height=%22302%22%20fill=%22#596193%22/%3E%0D%0A%3C/g%3E%0D%0A%0D%0A%3Cg%3E%0D%0A%09%3Crect%20x=%2215%22%20y=%2260.5%22%20width=%22400%22%20height=%2259%22%20fill=%22transparent%22%20stroke=%22#fff%22%20stroke-width=%222%22/%3E%0D%0A%09%3Ctext%20x=%22160%22%20y=%22105.5%22%3EChild%204%3C/text%3E%0D%0A%3C/g%3E%0D%0A%3Cg%3E%0D%0A%09%3Crect%20x=%2215%22%20y=%22121%22%20width=%22400%22%20height=%2259%22%20fill=%22transparent%22%20stroke=%22#fff%22%20stroke-width=%222%22/%3E%0D%0A%09%3Ctext%20x=%22160%22%20y=%22166%22%3EChild%203%3C/text%3E%0D%0A%3C/g%3E%0D%0A%3Cg%3E%0D%0A%09%3Crect%20x=%2215%22%20y=%22181.5%22%20width=%22400%22%20height=%2259%22%20fill=%22transparent%22%20stroke=%22#fff%22%20stroke-width=%222%22/%3E%0D%0A%09%3Ctext%20x=%22160%22%20y=%22226.5%22%3EChild%202%3C/text%3E%0D%0A%3C/g%3E%0D%0A%3Cg%3E%0D%0A%09%3Crect%20x=%2215%22%20y=%22242%22%20width=%22400%22%20height=%2259%22%20fill=%22transparent%22%20stroke=%22#fff%22%20stroke-width=%222%22/%3E%0D%0A%09%3Ctext%20x=%22160%22%20y=%22287%22%3EChild%201%3C/text%3E%0D%0A%3C/g%3E%0D%0A%3C/svg%3E)

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

