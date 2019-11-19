---
author: jordanfish

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
  - new

links:

  - '[CSS Pro Tips](https://github.com/AllThingsSmitty/css-protips){website}'


---

# Vertically-center anything

---
## Content

Use `flexbox` to center anything vertically:

```css
html, body {
  height: 100%;
  margin: 0;
}

body {
  align-items: center;
  display: flex;
}
```

There may be some unwanted behaviour in IE11.

---
## Revision

You can vertically-center elements inside a flex container with:
```css
.container{
 display: flex;
 ??? : ???;
}
```

* `align-items`
* `center`
* `justify-content`
* `vertical-center`
* `flex-center`
