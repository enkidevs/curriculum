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

![shapeoutsidecircle.svg](%3C?xml%20version=%221.0%22%20encoding=%22utf-8%22?%3E%0D%0A%3C!--%20Generator:%20Adobe%20Illustrator%2016.0.0,%20SVG%20Export%20Plug-In%20.%20SVG%20Version:%206.00%20Build%200%29%20%20--%3E%0D%0A%3Csvg%20version=%221.2%22%20baseProfile=%22tiny%22%20id=%22Layer_1%22%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%0D%0A%09%20x=%220px%22%20y=%220px%22%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20612%20200%22%20xml:space=%22preserve%22%3E%0D%0A%3Crect%20fill=%22#596294%22%20stroke=%22#000000%22%20stroke-width=%220.25%22%20stroke-miterlimit=%2210%22%20width=%22612%22%20height=%22200%22/%3E%0D%0A%3Ccircle%20fill=%22#FFFFFF%22%20stroke=%22#000000%22%20stroke-width=%220.25%22%20stroke-miterlimit=%2210%22%20cx=%22100%22%20cy=%22100%22%20r=%22100%22/%3E%0D%0A%3Ctext%20transform=%22matrix%281%200%200%201%20162.5811%2022.9111%29%22%20fill=%22#FFFFFF%22%20font-family=%22'Roboto-Regular'%22%20font-size=%2222%22%3EThis%20is%20how%20the%20shape-outside%20property%20wraps%20text%3C/text%3E%0D%0A%3Ctext%20transform=%22matrix%281%200%200%201%20186%2048.5112%29%22%20fill=%22#FFFFFF%22%20font-family=%22'Roboto-Regular'%22%20font-size=%2222%22%3Earound%20the%20element.%20This%20is%20how%20the%20shape-%3C/text%3E%0D%0A%3Ctext%20transform=%22matrix%281%200%200%201%20197%2074.1113%29%22%20fill=%22#FFFFFF%22%20font-family=%22'Roboto-Regular'%22%20font-size=%2222%22%3Eoutside%20property%20wraps%20text%20around%20the%3C/text%3E%0D%0A%3Ctext%20transform=%22matrix%281%200%200%201%20201.8438%2099.7109%29%22%20fill=%22#FFFFFF%22%20font-family=%22'Roboto-Regular'%22%20font-size=%2222%22%3Eelement.%20This%20is%20how%20the%20shape-outside%3C/text%3E%0D%0A%3Ctext%20transform=%22matrix%281%200%200%201%20201.8438%20125.3115%29%22%20fill=%22#FFFFFF%22%20font-family=%22'Roboto-Regular'%22%20font-size=%2222%22%3Eproperty%20wraps%20text%20around%20the%20element.%20This%3C/text%3E%0D%0A%3Ctext%20transform=%22matrix%281%200%200%201%20192%20150.9111%29%22%20fill=%22#FFFFFF%22%20font-family=%22'Roboto-Regular'%22%20font-size=%2222%22%3Eis%20how%20the%20shape-outside%20property%20wraps%20text%3C/text%3E%0D%0A%3Ctext%20transform=%22matrix%281%200%200%201%20175%20176.5112%29%22%20fill=%22#FFFFFF%22%20font-family=%22'Roboto-Regular'%22%20font-size=%2222%22%3Earound%20the%20element.%3C/text%3E%0D%0A%3C/svg%3E%0D%0A)

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
