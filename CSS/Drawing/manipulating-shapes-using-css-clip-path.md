# Manipulating shapes using CSS: `clip-path`
author: oj14henry

levels:

  - advanced

  - medium

type: normal

category: feature

tags:

  - clip-path

  - shapes

links:

  - >-
    [css-tricks.com](https://css-tricks.com/working-with-shapes-in-web-design/){website}

---
## Content

You can use functions that are applied to `shape-outside` to `clip-path`, ie, `inset()`, `polygon()`, `ellipse()`.
Below is an example of `clip-path` in action:

```css
#element {
  width: 300px;
  height: 150px;
  clip-path:
    polygon(0% 0%, 100% 100%, 0% 100%);
}
```
The list separated by commas define the *(x,y)* coordinates for each point. Translated into *px*, its equivalent would be `polygon(0px 0px, 300px 150px, 0px 150px)`. Three points will determine a triangle.

![clippathtriangle.svg](%3C?xml%20version=%221.0%22%20encoding=%22utf-8%22?%3E%0D%0A%3C!--%20Generator:%20Adobe%20Illustrator%2016.0.0,%20SVG%20Export%20Plug-In%20.%20SVG%20Version:%206.00%20Build%200%29%20%20--%3E%0D%0A%3Csvg%20version=%221.2%22%20baseProfile=%22tiny%22%20id=%22Layer_1%22%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%0D%0A%09%20x=%220px%22%20y=%220px%22%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20612%20200%22%20xml:space=%22preserve%22%3E%0D%0A%3Crect%20fill=%22#596294%22%20stroke=%22#fff%22%20stroke-miterlimit=%225%22%20width=%22612%22%20height=%22200%22/%3E%0D%0A%3Cpolyline%20fill=%22#FFFFFF%22%20stroke=%22#fff%22%20points=%221%20199,%20611%20199,%201%201%22/%3E%0D%0A%3C/svg%3E%0D%0A)


If you want text to wrap around a shape, you have to combine `clip-path` with the `shape-outside` property.

**Note:** Top-left corner of the `element` is located at *(0%,0%)*, while the bottom-right one at *(100%, 100%)*.

---
## Practice

Which two properties have to be combined in order for you to be able to wrap text around a shape?

???

* clip-path and shape-outside
* clip-path and inset
* inset and shape-outside
* path-wrap and shape-wrap

---
## Revision

What shape does the following piece of code make? ???

```css
div {
  width: 200px;
  height: 200px;
  background-color: #66ff33;
  clip-path: polygon
             (0% 100%, 100% 100%, 0% 0%);
}
```

* A triangle.
* A hexagon.
* A square.
* An octagon.
