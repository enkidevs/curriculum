---
author: priyankinirmal

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

aspects:
  - introduction
  - workout
  - deep

tags:

  - css

  - z-index

  - overlap

  - position


links:

  - '[Article on z-index](https://css-tricks.com/almanac/properties/z/z-index/){article}'
  - '[MDN Docs on z-index](https://developer.mozilla.org/en-US/docs/Web/CSS/z-index){documentation}'


---

# Use `z-index` to specify the stack order of elements that overlap

---
## Content

This property can only be used for elements which aren't in the normal stack. For example, those with a `position` value which is not `static` (default).

Elements with a higher `z-index` value will appear on top of elements with a lower `z-index` value.

```css
img {
  position: absolute;
  z-index: -1;
  /* negative values are accepted */
}

div.a {
  position: absolute;
  z-index: 1;
}
```

In the above example, the image will appear to be under the `div` element if they overlap.

---
## Practice

Which of the following elements will be displayed on top?
```css
#A {
 position: absolute;
 z-index: 10;
}
#B{
 position: absolute;  
 z-index: -10;
}
#C {
 position: absolute;
 z-index: 0;
}
```
???

* `A`
* `B`
* `C`
* They are all on the same level.

---
## Revision

To use the `z-index` to specify the stack order of overlapping elements, which of the following position values must an element not have?

???


* `position: static;`
* `position: absolute;`
* `position: fixed;`
* `position: relative`
