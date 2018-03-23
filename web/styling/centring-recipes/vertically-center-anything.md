---
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to


links:

  - '[github.com](https://github.com/AllThingsSmitty/css-protips){website}'


---

# Vertically-center anything

---
## Content

Use `flexbox` to center anything vertically:

```
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

You can verically-center elements inside a flex container with:
```
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

