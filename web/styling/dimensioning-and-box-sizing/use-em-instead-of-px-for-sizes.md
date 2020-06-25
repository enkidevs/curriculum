---
author: nene

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

aspects:
  - introduction
  - workout

tags:

  - fonts

  - formatting


links:
- '[MDN Docs on Length](https://developer.mozilla.org/en-US/docs/Web/CSS/length){documentation}'


---

# Use `em` instead of `px` for sizes

---
## Content

`em` is directly proportional to the font size currently in use. This makes it easier to keep the proportions intact for future changes and responsive design.

With `px` :

```css
.bodytext p {
    font-size:14px;
}
.image {
    width:80px;
}
```

Or, using `em` :
```css
.bodytext p {
    font-size:0.875em; /* 16x.875=14 */
}
.sidenote {
    font-size:5em; /* 16x5=80 */
}
```

Another advantage of `em` relates to a browser's support for custom font sizes (which can override your CSS). These custom sizes could break a layout if the font sizes are in `px`.

---
## Practice

You have the following code snippet:
```css
body{
  font-size: 16px;
}
```
Set the font-size of `.smallparagraph`  to 8px in a responsive way:
```css
.smallparagraph{
  font-size: ???;
}
```

* `0.5em`
* `0.8em`
* `8px`
* `1em`

---
## Revision

`em` is directly ??? to the current ??? . This makes it simpler for future changes and ??? design.


* proportional
* font size
* responsive
* related
* correlated
* style
* look
* different
* changing
