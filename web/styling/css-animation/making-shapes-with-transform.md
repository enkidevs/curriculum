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

  - transform


links:

  - '[Working With Shapes](https://css-tricks.com/working-with-shapes-in-web-design/){article}'


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
```css
transform-origin: 50% 50%;
/* or */
transform-origin: center center;
/* for known dimensions: 500px × 20em*/
transform-origin: 250px 10em;
```
Other values :
```css
transform-origin: top left;
transform-origin: right bottom;
transform-origin: left center;
```
This is the default rotation around its center:

![diamondtransform.svg](https://img.enkipro.com/afacbc50fedc953093d5d1aba5b4d385.png)

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
