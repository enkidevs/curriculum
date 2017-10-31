# Manipulating shapes using CSS: `shape-outside`
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

  - >-
    [css-tricks.com](https://css-tricks.com/working-with-shapes-in-web-design/){website}

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

![shapeoutsidecircle.svg](%0D%0A%3Csvg+version%3D%221.2%22+baseProfile%3D%22tiny%22+xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22+height%3D%22auto%22+viewBox%3D%220+0+612+200%22%3E%0D%0A++%3Cpath+fill%3D%22%23596294%22+stroke%3D%22%23000%22+stroke-width%3D%22.25%22+stroke-miterlimit%3D%2210%22+d%3D%22M0+0h612v200H0z%22%2F%3E%0D%0A++%3Ccircle+fill%3D%22%23FFF%22+stroke%3D%22%23000%22+stroke-width%3D%22.25%22+stroke-miterlimit%3D%2210%22+cx%3D%22100%22+cy%3D%22100%22+r%3D%22100%22%2F%3E%0D%0A++%3Ctext+transform%3D%22translate%28162.581+22.911%29%22+fill%3D%22%23FFF%22+font-family%3D%22%27Roboto-Regular%27%22+font-size%3D%2222%22%3E%0D%0A++++This+is+how+the+shape-outside+property+wraps+text%0D%0A++%3C%2Ftext%3E%0D%0A++%3Ctext+transform%3D%22translate%28186+48.511%29%22+fill%3D%22%23FFF%22+font-family%3D%22%27Roboto-Regular%27%22+font-size%3D%2222%22%3E%0D%0A++++around+the+element.+This+is+how+the+shape-%0D%0A++%3C%2Ftext%3E%0D%0A++%3Ctext+transform%3D%22translate%28197+74.111%29%22+fill%3D%22%23FFF%22+font-family%3D%22%27Roboto-Regular%27%22+font-size%3D%2222%22%3E%0D%0A++++outside+property+wraps+text+around+the%0D%0A++%3C%2Ftext%3E%0D%0A++%3Ctext+transform%3D%22translate%28201.844+99.71%29%22+fill%3D%22%23FFF%22+font-family%3D%22%27Roboto-Regular%27%22+font-size%3D%2222%22%3E%0D%0A++++element.+This+is+how+the+shape-outside%0D%0A++%3C%2Ftext%3E%0D%0A++%3Ctext+transform%3D%22translate%28201.844+125.311%29%22+fill%3D%22%23FFF%22+font-family%3D%22%27Roboto-Regular%27%22+font-size%3D%2222%22%3E%0D%0A++++property+wraps+text+around+the+element.+This%0D%0A++%3C%2Ftext%3E%0D%0A++%3Ctext+transform%3D%22translate%28192+150.911%29%22+fill%3D%22%23FFF%22+font-family%3D%22%27Roboto-Regular%27%22+font-size%3D%2222%22%3E%0D%0A++++is+how+the+shape-outside+property+wraps+text%0D%0A++%3C%2Ftext%3E%0D%0A++%3Ctext+transform%3D%22translate%28175+176.511%29%22+fill%3D%22%23FFF%22+font-family%3D%22%27Roboto-Regular%27%22+font-size%3D%2222%22%3E%0D%0A++++around+the+element.%0D%0A++%3C%2Ftext%3E%0D%0A%3C%2Fsvg%3E%0D%0A)

Other functions instead of `circle()` include: `ellipse()`, `polygon()`, `inset()`.

However, this property is not supported by IE or Firefox and does not change the actual shape of the element.

---
## Practice

The `shape-outside` property only works on elements with the property of ??? applied onto it.

*float
*clear
*fixed
*shape
*alter

---
## Revision

For the `shape-outside` property to work, which property must have been applied to it? ???
* `float`
* `hover`
* `sticky`
* `absolute`
* `relative`
