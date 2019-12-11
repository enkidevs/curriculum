---
author: oj14henry

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

aspects:
  - introduction
  - workout
  - deep

tags:

  - shape

  - outside


links:

  - '[Working With Shapes](https://css-tricks.com/working-with-shapes-in-web-design/){article}'


---

# Manipulating shapes using CSS: `shape-outside`

---
## Content

You can wrap pieces of text around shapes using `shape-outside`. As of `CSS3`, this property only works on elements that have the property of `float` applied upon it.

Example:
```css
#element {
  float: left;
  shape-outside: circle(50%);
  width: 100px;
  height: 100px;
}
```
This is the visual equivalent of the above snippet:

![shapeoutsidecircle.svg](https://img.enkipro.com/bf10605b36534f1e04e0fd2e3d2972a7.png)

Other functions instead of `circle()` include: `ellipse()`, `polygon()`, `inset()`.

However, this property is not supported by IE or Firefox and does not change the actual shape of the element.

---
## Practice

The `shape-outside` property only works on elements with the property of ??? applied onto it.

* float
* clear
* fixed
* shape
* alter

---
## Revision

For the `shape-outside` property to work, which property must have been applied to it? ???

* `float`
* `hover`
* `sticky`
* `absolute`
* `relative`
