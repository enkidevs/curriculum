---
author: oj14henry

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - shape

  - outside


links:

  - '[css-tricks.com](https://css-tricks.com/working-with-shapes-in-web-design/){website}'


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

![shapeoutsidecircle.svg](%3Csvg%20version%3D%221.2%22%20baseProfile%3D%22tiny%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20height%3D%22auto%22%20viewBox%3D%220%200%20612%20200%22%3E%0A%20%20%3Cpath%20fill%3D%22%23596294%22%20stroke%3D%22%23000%22%20stroke-width%3D%22.25%22%20stroke-miterlimit%3D%2210%22%20d%3D%22M0%200h612v200H0z%22%2F%3E%0A%20%20%3Ccircle%20fill%3D%22%23FFF%22%20stroke%3D%22%23000%22%20stroke-width%3D%22.25%22%20stroke-miterlimit%3D%2210%22%20cx%3D%22100%22%20cy%3D%22100%22%20r%3D%22100%22%2F%3E%0A%20%20%3Ctext%20transform%3D%22translate%28162.581%2022.911%29%22%20fill%3D%22%23FFF%22%20font-family%3D%22'Roboto-Regular'%22%20font-size%3D%2222%22%3E%0A%20%20%20%20This%20is%20how%20the%20shape-outside%20property%20wraps%20text%0A%20%20%3C%2Ftext%3E%0A%20%20%3Ctext%20transform%3D%22translate%28186%2048.511%29%22%20fill%3D%22%23FFF%22%20font-family%3D%22'Roboto-Regular'%22%20font-size%3D%2222%22%3E%0A%20%20%20%20around%20the%20element.%20This%20is%20how%20the%20shape-%0A%20%20%3C%2Ftext%3E%0A%20%20%3Ctext%20transform%3D%22translate%28197%2074.111%29%22%20fill%3D%22%23FFF%22%20font-family%3D%22'Roboto-Regular'%22%20font-size%3D%2222%22%3E%0A%20%20%20%20outside%20property%20wraps%20text%20around%20the%0A%20%20%3C%2Ftext%3E%0A%20%20%3Ctext%20transform%3D%22translate%28201.844%2099.71%29%22%20fill%3D%22%23FFF%22%20font-family%3D%22'Roboto-Regular'%22%20font-size%3D%2222%22%3E%0A%20%20%20%20element.%20This%20is%20how%20the%20shape-outside%0A%20%20%3C%2Ftext%3E%0A%20%20%3Ctext%20transform%3D%22translate%28201.844%20125.311%29%22%20fill%3D%22%23FFF%22%20font-family%3D%22'Roboto-Regular'%22%20font-size%3D%2222%22%3E%0A%20%20%20%20property%20wraps%20text%20around%20the%20element.%20This%0A%20%20%3C%2Ftext%3E%0A%20%20%3Ctext%20transform%3D%22translate%28192%20150.911%29%22%20fill%3D%22%23FFF%22%20font-family%3D%22'Roboto-Regular'%22%20font-size%3D%2222%22%3E%0A%20%20%20%20is%20how%20the%20shape-outside%20property%20wraps%20text%0A%20%20%3C%2Ftext%3E%0A%20%20%3Ctext%20transform%3D%22translate%28175%20176.511%29%22%20fill%3D%22%23FFF%22%20font-family%3D%22'Roboto-Regular'%22%20font-size%3D%2222%22%3E%0A%20%20%20%20around%20the%20element.%0A%20%20%3C%2Ftext%3E%0A%3C%2Fsvg%3E%0A)

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

