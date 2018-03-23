---
author: priyankinirmal

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

tags:

  - css

  - box-shadow

  - shadows

  - drop-shadow

  - inset-shadow


links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/CSS/box-shadow){website}'


---

# Use the `box-shadow` property to create shadow effects on an element

---
## Content

The required values are the sizes of offset-x and offset-y of the shadow. You can also add `color`, `blur-radius` and `spread-radius`.

For example:
```css
div {
  box-shadow: 5px 5px 3px lightblue;
}
```
This `div` element will have shadow offset by 5px and a `blur-radius` of 3px.

Use the keyword `inset` to make the shadow appear inside the frame instead of as a drop shadow (which is default).
```css
div.inset {
  box-shadow: inset 5px 5px lightblue;
}
```
You can see below the difference. The second square has `inset` shadowing:

![HtmlToSvgmin.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20612%20200%22%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h612v200H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M146%2056h114v114H146V56%22%20fill=%22#9aa8ff%22%20stroke=%22none%22/%3E%3Cg%20fill=%22#9aa8ff%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%3E%3Cimage%20x=%22146%22%20y=%2250%22%20width=%22114%22%20height=%226%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAAGCAYAAAACEPQxAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAAJklEQVQImQXBAQ0AIAwDsGYewA6YwB4C8PicFrivR6qsNCdiR5sfdPgHScVmbmMAAAAASUVORK5CYII=%22/%3E%3Cimage%20x=%22146%22%20y=%22170%22%20width=%22114%22%20height=%226%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAAGCAYAAAACEPQxAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAAJ0lEQVQImWOYteL/fyYGRoZXTAz/GA4wMTIwrGZiZmY4yMDAwMAAAJaMB2XPSWPXAAAAAElFTkSuQmCC%22/%3E%3Cimage%20x=%22140%22%20y=%2256%22%20width=%226%22%20height=%22114%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAAABCAYAAAD9yd/wAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAAIklEQVQImWNkYGBgmLfqv+jfvwz2/xkYQhmYGBwY/jOIAQBhowdC3rey3gAAAABJRU5ErkJggg==%22/%3E%3Cimage%20x=%22260%22%20y=%2256%22%20width=%226%22%20height=%22114%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAAABCAYAAAD9yd/wAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAAIklEQVQImWOcteL/fwZGhlcM/xgOMDIwrGZmZjiYFMb4GgB+RgkCSTfT3AAAAABJRU5ErkJggg==%22/%3E%3Cimage%20x=%22140%22%20y=%2250%22%20width=%226%22%20height=%226%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAAAGCAYAAADgzO9IAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAAY0lEQVQImXXBsRGCMBQA0JdcIEqhDVgxgS7guaZjMIBb2Vh4p5DvBL7HHwkiIt0fek81D7phlQssi27/MSnm9DVtTS3wqqpmxjXCJTgUeG/6XTK15iy5ycYMwypHU3GUjMLpB/cfGm/UpjnpAAAAAElFTkSuQmCC%22/%3E%3Cimage%20x=%22260%22%20y=%2250%22%20width=%226%22%20height=%226%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAAAGCAYAAADgzO9IAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAAbElEQVQImXXBwQ0BQRQA0DeTiRUXiYR2uCpAGVpSgG1EA45uTogEycouu18F3uOPtNvHvCmGofEx027XupRSlL63HIc2iqu7c127oCvBRnjiqDi8Kg90RbaKcBMiZ6d3bwRFWEgI0xhUk68MPy4eK0WX46ahAAAAAElFTkSuQmCC%22/%3E%3Cimage%20x=%22260%22%20y=%22170%22%20width=%226%22%20height=%226%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAAAGCAYAAADgzO9IAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAAZ0lEQVQImX3BsQ3CMBAAwPvYDQUNW7EAAyCmYgKkLJEswQRUCQ0UlkyQzQbcxfXWu7BopmBMyXw+xToIi+6JVwxqyRpkzRThLdx7t+6SD+RgjFB7t/p67KsKOSVzyVorNgf1crT55wfLqCgTZ79ZCgAAAABJRU5ErkJggg==%22/%3E%3Cimage%20x=%22140%22%20y=%22170%22%20width=%226%22%20height=%226%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAAAGCAYAAADgzO9IAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAAaElEQVQImXXBwQ3BYBgA0PfVT2nCjXVYwmTuBrCAFUzg5uZGJL1I2rT9TOC9gPMlt+NonxxVDtKuwLeYlqnLSSu9BQVWM/3Ue0W4I3KyKbDudO3gqbhFeEh1QGbG6Wrho64a82ZQ+ecH5d4ky+b100cAAAAASUVORK5CYII=%22/%3E%3C/g%3E%3Cpath%20d=%22M138%2048h120v120H138V48M358%2048h120v120H358V48%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M358%2048h120v120H358V48m5%205h115v115H363V53%22%20fill=%22#9aa8ff%22%20stroke=%22none%22/%3E%3C/g%3E%3C/svg%3E)

---
## Practice

The first two parameters in the following code snippet are the ??? of the shadow.

```
div {
  box-shadow: 4px 4px 2px red;
}
```


* offset
* size
* area
* shade

---
## Revision

What `box-shadow` properties does the following CSS code give to the p element? ???

```css
p {
   box-shadow: 5px 2px 4px blue;
}
```

* A blue shadow with offset-x = 5px, offset-y = 2px and a blur radius of 4px.
* A blue shadow with offset-y = 2px, offset-y = 4px and a blue radius of 5px.
* A blue shadow with offset-x = 2px, offset-y = 5px and a blur radius of 4px.

