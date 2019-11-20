---
author: oj14henry

levels:

  - basic

  - advanced

  - medium

type: normal

category: hack

aspects:
  - introduction
  - workout
  - deep

tags:

  - border

  - shapes


links:

  - '[Working With Shapes](https://css-tricks.com/working-with-shapes-in-web-design/){website}'


---

# Manipulating shapes using CSS: `border`

---
## Content

You can make shapes by defining the properties of the `border`, as seen below:

```css
#triangle {
  width: 0;
  height: 0;
  border-left: 80px solid white;
  border-right: 80px solid transparent;
  border-top: 80px solid transparent;
  border-bottom: 80px solid transparent;
}
```

By setting the `background` of three `borders` to be `transparent`, the shape of a triangle is mimicked.

For the following image, these are the borders that are not transparent:
- **A** : *border-left* (code snippet above)
- **B** : *border-right*
- **C** : *border-top*
- **D** : *border-bottom*

![HtmlToSvg.svg](https://img.enkipro.com/34ca2aafa9de4ed519daa02ad9052127.png)

---
## Revision

What shape would the following CSS produce? ???

```css
#shape {
   width: 0;
   height: 0;
   border-left: 80px solid transparent;
   border-right: 80px solid transparent;
   border-top: 80px solid red;
   border-bottom: 80px solid transparent;
}
```


* A triangle.
* A square.
* A circle.
* A rectangle.
