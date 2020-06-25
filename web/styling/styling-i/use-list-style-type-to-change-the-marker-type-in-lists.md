---
author: priyankinirmal

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:
  - introduction
  - workout

tags:

  - lists

  - ordered-list

  - unordered-list

  - css

  - list-style


links:

  - '[The list-style Property](https://css-tricks.com/almanac/properties/l/list-style/){website}'


---

# Use ```list-style-type``` to change the marker type in lists

---
## Content

This property will allow you to change the marker of items in an unordered list to different shapes.
```css
ul.a {
  list-style-type: square;
}
```
Use ```list-style-image``` to change the marker to an image of your choice.
```css
ul.b {
  list-style-image: url('image.jpg');
}
```

For ordered lists, the marker can be changed to different formats of numbering.
```css
ol.c {
  list-style-type: lower-roman;
}

```
This is how the lists would look:


![HtmlToSvg.svg](https://img.enkipro.com/a2cae99148fd6cd156e0ad04bf5d01ca.png)

---
## Practice

Complete the following snippet to change the default list marker:
```
ul.specialList {
 ???:
          url('img.jpg');
}
```

* `list-style-image`
* `list-style-type`
* `list-style-font`
* `list-style`

---
## Revision

What does the following CSS code snippet do?

```css
ul.a {
   list-style-image: url("list-pic.jpg");
}

ol.b {
   list-style-type: lower-roman;
}
```
???

* Sets the unordered list marker to an image and the ordered list marker to roman numerals.
* Sets the unordered list marker to roman numerals and the ordered list to an image.
* This does nothing...
* Sets the first element of the unordered lists marker to an image and the first element of the ordered lists marker to roman numerals.
