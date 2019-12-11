---
author: priyankinirmal

levels:

  - basic

type: normal

category: pattern

aspects:
  - introduction
  - workout

tags:
  - css
  - pseudo-class
  - links

links:
  - '[Article on Pseudo Classes](http://www.sitepoint.com/web-foundations/pseudo-classes/){article}'
  - '[MDN Docs on :hover](https://developer.mozilla.org/en-US/docs/Web/CSS/:hover){documentation}'

---

# Use pseudo-classes to describe a special state of an element

---
## Content

Unlike regular classes, pseudo-classes are not specified in the HTML. They are preceded by a colon, for example `a:hover`. This is a dynamic pseudo-class and its effects  are applied in response to  the user's actions.

The order of the declaration of dynamic pseudo-classes is important in order for it to be effective.

The following is a common order used for links (`<a>` elements):
```css
a:link {  /* unvisited link */
  color: black;
}
a:visited {   /* visited link */
  color: blue;
}
a:hover { /* user hovers over link */
  color: yellow;
}
a:active  { /* selected link */
  color: red;
}   
```
If defined in a different order (other than *LVHA*), there's a big chance they will override one another.

[Code example](http://codepen.io/mihaiberq/pen/wzGvWq)

---
## Practice

What symbol must a pseudo-class be preceded by?

???


* `:`
* `;`
* `+`
* `=`
* `::`

---
## Revision

What is the common order of pseudo-classes used for links?
??? ??? ??? ???

* ps:link {
* ps:visited {
* ps:hover {
* ps:active {
