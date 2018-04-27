---
author: oj14henry

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - transform 


links:

  - '[css-tricks.com](https://css-tricks.com/working-with-shapes-in-web-design/){website}'


---

# Making shapes with `transform`

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

![diamondtransform.svg](%3Csvg%20version%3D%221.2%22%20baseProfile%3D%22tiny%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20height%3D%22auto%22%20viewBox%3D%220%200%20612%20200%22%3E%0A%20%20%3Cpath%20fill%3D%22%23596294%22%20stroke%3D%22%23000%22%20stroke-miterlimit%3D%225%22%20d%3D%22M0%200h612v200H0z%22%2F%3E%0A%20%20%3Cpath%20fill%3D%22%23fff%22%20stroke%3D%22%23000%22%20stroke-miterlimit%3D%222%22%20d%3D%22M150%2050h100v100H150zM428.9878%2029.6985l70.7107%2070.7107-70.7107%2070.7106-70.7107-70.7106z%22%2F%3E%0A%3C%2Fsvg%3E%0A)

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

