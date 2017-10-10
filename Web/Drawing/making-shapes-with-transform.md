# Making shapes with `transform`
author: oj14henry

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - 'transform '

links:

  - >-
    [css-tricks.com](https://css-tricks.com/working-with-shapes-in-web-design/){website}

---
## Content

`Rotate` certain shapes using `transform` can be used to obtain other shapes. 

Applying the `transform` property on a regular square can create a diamond, for example:
```css
#diamond {
  transform: rotate(45deg);
}
```
The default rotation point is the center of the element. `transform-origin` can change that: it can take 2 (for 2D shapes) or 3 (for 3D shapes) values, as the `x` and `y` coordinates of the new rotation point.

The center of a 2D shape is:
```
transform-origin: 50% 50%;
/* or */
transform-origin: center center;
/* for known dimensions: 500px × 20em*/
transform-origin: 250px 10em;
```
Other values :
```
transform-origin: top left;
transform-origin: right bottom;
transform-origin: left center;
```
This is the default rotation around its center:

![diamondtransform.svg](%3C?xml%20version=%221.0%22%20encoding=%22utf-8%22?%3E%0D%0A%3C!--%20Generator:%20Adobe%20Illustrator%2016.0.0,%20SVG%20Export%20Plug-In%20.%20SVG%20Version:%206.00%20Build%200%29%20%20--%3E%0D%0A%3Csvg%20version=%221.2%22%20baseProfile=%22tiny%22%20id=%22Layer_1%22%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%0D%0A%09%20x=%220px%22%20y=%220px%22%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20612%20200%22%20xml:space=%22preserve%22%3E%0D%0A%3Crect%20fill=%22#596294%22%20stroke=%22#000000%22%20stroke-miterlimit=%225%22%20width=%22612%22%20height=%22200%22/%3E%0D%0A%3Crect%20x=%22150%22%20y=%2250%22%20fill=%22#ffffff%22%20stroke=%22#000000%22%20stroke-miterlimit=%222%22%20width=%22100%22%20height=%22100%22/%3E%0D%0A%3Crect%20x=%22462%22%20y=%2250%22%20fill=%22#ffffff%22%20stroke=%22#000000%22%20stroke-miterlimit=%222%22%20width=%22100%22%20height=%22100%22%20transform=%22rotate%2845%20470%200%29%22/%3E%0D%0A%3C/svg%3E%0D%0A)

---
## Revision

What are the missing values required to transform a diamond into a square? 

```css
#transform {
   transform: ???(???);
}
```
* `rotate`
* `-45deg`
* `translate`
* `45%`
* `-45%`
* `90deg`
* `center`
