# Flexbox `justify-content`
author: Billiexu

levels:

  - advanced

type: normal

category: feature

tags:

  - css

  - flexbox

links:

  - '[egghead.io](https://egghead.io/lessons/misc-flexbox-fundamentals){website}'

---
## Content

In Flexbox, there are many useful values for `justify-content` property. `space-between` and `space-around` are the most helpful two to distribute elements along the `flex-direction` _(x-axis by default)_:

HTML:

```
<div class="parent">
  <div class="child-1">Child 1</div>
  <div class="child-2">Child 2</div>
  <div class="child-3">Child 3</div>
</div>

```

`space-between` distributes child elements across the width of the parent container with the starting and ending elements *fixed to the sides of the parent container*. 

```
.parent{
  width:100%;
  display:flex;
  justify-content: space-between
}

```
![spacebetween-01.svg](%3C?xml%20version=%221.0%22%20encoding=%22utf-8%22?%3E%0D%0A%3C!--%20Generator:%20Adobe%20Illustrator%2016.0.0,%20SVG%20Export%20Plug-In%20.%20SVG%20Version:%206.00%20Build%200%29%20%20--%3E%0D%0A%3Csvg%20version=%221.2%22%20baseProfile=%22tiny%22%20id=%22Layer_1%22%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%0D%0A%09%20x=%220px%22%20y=%220px%22%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20612%20200%22%20xml:space=%22preserve%22%3E%0D%0A%3Crect%20fill=%22#596193%22%20stroke=%22#596193%22%20stroke-miterlimit=%2210%22%20width=%22612%22%20height=%22200%22/%3E%0D%0A%3Crect%20x=%22495%22%20y=%2250%22%20fill=%22#FFFFFF%22%20stroke=%22#596193%22%20stroke-miterlimit=%2210%22%20width=%22100%22%20height=%22100%22/%3E%0D%0A%3Crect%20x=%2215%22%20y=%2250%22%20fill=%22#FFFFFF%22%20stroke=%22#596193%22%20stroke-miterlimit=%2210%22%20width=%22100%22%20height=%22100%22/%3E%0D%0A%3Crect%20x=%22264%22%20y=%2250%22%20fill=%22#FFFFFF%22%20stroke=%22#596193%22%20stroke-miterlimit=%2210%22%20width=%22100%22%20height=%22100%22/%3E%0D%0A%3Cline%20fill=%22#FFFFFF%22%20stroke=%22#000000%22%20stroke-miterlimit=%2210%22%20x1=%220%22%20y1=%22199.674%22%20x2=%220%22%20y2=%22199.674%22/%3E%0D%0A%3C/svg%3E%0D%0A)

---

`space-around` gives each element the same amount of space on its left and right across the width of the container, and the starting and ending elements are not necessarily fixed to the sides of the parent container. 

```
.parent{
  justify-content: space-around
}

```

![spacearound-01.svg](%3C?xml%20version=%221.0%22%20encoding=%22utf-8%22?%3E%0D%0A%3C!--%20Generator:%20Adobe%20Illustrator%2016.0.0,%20SVG%20Export%20Plug-In%20.%20SVG%20Version:%206.00%20Build%200%29%20%20--%3E%0D%0A%3Csvg%20version=%221.2%22%20baseProfile=%22tiny%22%20id=%22Layer_1%22%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%0D%0A%09%20x=%220px%22%20y=%220px%22%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20612%20200%22%20xml:space=%22preserve%22%3E%0D%0A%3Crect%20fill=%22#596193%22%20stroke=%22#596193%22%20stroke-miterlimit=%2210%22%20width=%22612%22%20height=%22200%22/%3E%0D%0A%3Crect%20x=%22460%22%20y=%2250%22%20fill=%22#FFFFFF%22%20stroke=%22#596193%22%20stroke-miterlimit=%2210%22%20width=%22100%22%20height=%22100%22/%3E%0D%0A%3Crect%20x=%2250%22%20y=%2250%22%20fill=%22#FFFFFF%22%20stroke=%22#596193%22%20stroke-miterlimit=%2210%22%20width=%22100%22%20height=%22100%22/%3E%0D%0A%3Crect%20x=%22250%22%20y=%2250%22%20fill=%22#FFFFFF%22%20stroke=%22#596193%22%20stroke-miterlimit=%2210%22%20width=%22100%22%20height=%22100%22/%3E%0D%0A%3Cline%20fill=%22#FFFFFF%22%20stroke=%22#000000%22%20stroke-miterlimit=%2210%22%20x1=%220%22%20y1=%22199.674%22%20x2=%220%22%20y2=%22199.674%22/%3E%0D%0A%3C/svg%3E%0D%0A)

---
## Practice

Which of the following `justify-content` values will display items evenly distributed, with the first item positioned near margin of the container?
```
.flex-container{
  justify-content: 
            ???;
}
```
*`space-between` 
*`space-around` 
*`center` 
*`flex-start`

---
## Revision

To give elements the same amount of space between them, as well as the container, `justify-content` values should be 

???
*space-around
*space-between
*flex-start
*center