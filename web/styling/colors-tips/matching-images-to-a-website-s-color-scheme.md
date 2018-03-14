---
author: oj14henry

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - matching

  - hue

  - image


links:

  - '[carlosmartinezt.com](http://carlosmartinezt.com/2014/04/css-tricks-for-2014/){website}'


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

![HtmlToSvgmin.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20800%20300%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cpath%20fill=%22#596193%22%20stroke=%22#fff%22%20d=%22M0%200h800v300H0z%22/%3E%3Cfilter%20id=%22a%22%3E%3CfeColorMatrix%20in=%22SourceGraphic%22%20type=%22hueRotate%22%20values=%22120%22/%3E%3C/filter%3E%3Ccircle%20cx=%22170%22%20cy=%22150%22%20r=%22100%22%20fill=%22#ff4500%22/%3E%3Ccircle%20cx=%22170%22%20cy=%22150%22%20r=%2275%22%20fill=%22#8FCC67%22/%3E%3Ctext%20x=%22120%22%20y=%22160%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2230%22%3ENo%20Hue%3C/text%3E%3Cg%20filter=%22url%28#a%29%22%3E%3Ccircle%20cx=%22390%22%20cy=%22150%22%20r=%22100%22%20fill=%22#ff4500%22/%3E%3Ccircle%20cx=%22390%22%20cy=%22150%22%20r=%2275%22%20fill=%22#8FCC67%22/%3E%3C/g%3E%3Ctext%20x=%22330%22%20y=%22160%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2230%22%3EHue=120%3C/text%3E%3Cg%20filter=%22url%28#b%29%22%3E%3Ccircle%20cx=%22610%22%20cy=%22150%22%20r=%22100%22%20fill=%22#ff4500%22/%3E%3Ccircle%20cx=%22610%22%20cy=%22150%22%20r=%2275%22%20fill=%22#8FCC67%22/%3E%3C/g%3E%3Cg%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2230%22%3E%3Ctext%20x=%22560%22%20y=%22140%22%3ENo%20Hue%3C/text%3E%3Ctext%20x=%22543%22%20y=%22180%22%3ESepia=1.0%3C/text%3E%3C/g%3E%3Cfilter%20id=%22b%22%3E%3CfeColorMatrix%20in=%22SourceGraphic%22%20values=%220.64%200.55%200.15%200%200%200.52%200.49%200.14%200%200%200.18%200.38%200.13%200%200%200%200%200%201%200%22/%3E%3C/filter%3E%3C/svg%3E)

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

