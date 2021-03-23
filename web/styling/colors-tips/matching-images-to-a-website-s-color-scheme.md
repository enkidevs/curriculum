---
author: oj14henry
type: normal
category: how-to
tags:
  - matching
  - hue
  - image
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
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

- `hue-rotate`
- `hue`
- `hue-diff`
- `hue-change`
