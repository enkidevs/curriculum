---
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

  - '[css-tricks.com](https://css-tricks.com/working-with-shapes-in-web-design/){website}'


---

# Manipulating shapes using CSS: `clip-path`

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

![clippathtriangle.svg](%3Csvg%20version%3D%221.2%22%20baseProfile%3D%22tiny%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20height%3D%22auto%22%20viewBox%3D%220%200%20612%20200%22%3E%0A%20%20%3Cpath%20fill%3D%22%23596294%22%20stroke%3D%22%23fff%22%20stroke-miterlimit%3D%225%22%20d%3D%22M0%200h612v200H0z%22%2F%3E%0A%20%20%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23fff%22%20d%3D%22M1%20199h610L1%201%22%2F%3E%0A%3C%2Fsvg%3E)


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

