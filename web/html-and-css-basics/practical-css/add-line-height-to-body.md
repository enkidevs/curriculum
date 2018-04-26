---
author: jordanfish

levels:

  - basic

  - beginner

type: normal

category: how to


links:

  - '[github.com](https://github.com/AllThingsSmitty/css-protips){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/line-height){documentation}'


---

# Add `line-height` to `body`

---
## Content

Rather than adding `line-height` to each element:

```
p {
  line-height: 1;
}

h1 {
  line-height: 1;
}

h2 {
  line-height: 1;
}



```


Add it to `body` directly:
```
body {
  line-height: 1;
}
```

---
## Revision

What does the following piece of code do?
```css
body {
   font-family: "Arial Narrow";
}
```

???


* Sets the font family to Arial Narrow for all elements in the body.
* Sets the font family to Arial Narrow for all elements outside the body.
* Sets the font family to Arial Narrow for the first element in the body,
* It does nothing.

