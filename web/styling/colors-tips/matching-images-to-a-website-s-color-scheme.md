---
author: oj14henry

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

aspects:
  - workout
  - introduction
  - deep

tags:

  - matching

  - hue

  - image


links:

  - '[CSS Tricks](http://carlosmartinezt.com/2014/04/css-tricks-for-2014/){website}'


---

# Matching images to a website's color scheme

---
## Content

It's possible to add filters to an image to match the color theme of a website.

Some of the possible filters are:
- `blur()`
- `brightness()`
- `contrast()`
- `hue-rotate()`
- `opacity()`


```css
filter: sepia(1.0)
        hue-rotate(120deg);
```

![HtmlToSvgmin.svg](https://img.enkipro.com/d84b643231804184f2e404868dc126fb.png)

The attribute `sepia(1.0)` represents a full sepia transformation.

The value of 0 degrees for `hue-rotate` will leave the image color unchanged. Increasing the value increases the amount of degrees around the color circle.

---
## Revision

Complete the following code snippet to change an images hue to match a websites color theme:

```css
filter: sepia(1.0)
        ???(250deg);
```


* `hue-rotate`
* `hue`
* `hue-diff`
* `hue-change`
