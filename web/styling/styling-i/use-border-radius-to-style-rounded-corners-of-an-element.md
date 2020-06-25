---
author: priyankinirmal

levels:

  - basic

type: normal

category: feature

aspects:
  - introduction

tags:

  - css

  - border-radius

  - rounded-corners

  - borders


links:

  - '[Rounded Border](http://www.css3.info/preview/rounded-border/){website}'


---

# Use `border-radius` to style rounded corners of an element

---
## Content

Use two length or percentage values to define the horizontal and vertical radii of a quarter ellipse separately.
```css
div {
  border: 3px solid red;
  border-radius: 15px 10px;
}
```
Using one value will determine the horizontal and vertical radii equally.

To style the `border-radius` for each individual border, use `border-top-right-radius`, `border-top-left-radius` etc.

From left to right, the values of `border-radius` are: `10% 30%` , `20% 50%` and `50% 20%`.

![HtmlToSvgmin.svg](https://img.enkipro.com/5c9095310f0c5d1472cf1cbaae57b55c.png)

The first value targets `top-left` and `bottom-right` corners, while the remaining corners are targeted by the second value.

To obtain a circle, use `border-radius: 50%`.

---
## Revision

Consider the snippet:
```css
#element {
   border-radius: 22px 15px;
}
```
The first number in the two-values syntax of the `border-radius` will shape

???

* top-left and bottom-right corners
* top-left and bottom-left corners
* top-right and bottom-left corners
* top-right and bottom-right corners
