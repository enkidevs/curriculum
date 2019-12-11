---
author: Billiexu

levels:

  - advanced

type: normal

category: must-know

aspects:
  - workout
  - deep

tags:

  - flexbox


links:

  - '[Article on flex-wrap](https://css-tricks.com/almanac/properties/f/flex-wrap/){website}'
  - '[MDN Docs on flex-wrap](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-wrap){documentation}'


---

# Flexbox `flex-wrap`

---
## Content

`flex-wrap` defines whether the flex items are forced in a **single line** or can be **flowed into multiple lines**. If set to multiple lines, it also defines the cross-axis which determines the direction new lines are stacked in.


`nowrap` (default): single-line which may cause the container to overflow.

![nowrapmin.svg](https://img.enkipro.com/560556c253352a2467f9496ec78b02d9.png)


`wrap`: multi-lines, direction is defined by flex-direction.

```css
.flex-container {
  flex-wrap: wrap;
}

```

![wrapmin.svg](https://img.enkipro.com/bd265fff3d61633533932226ac0fd4c3.png)


`wrap-reverse`: multi-lines, opposite to direction defined by flex-direction.


```css
.flex-container {
  flex-wrap: wrap-reverse;
}

```

![wrap-reversemin.svg](https://img.enkipro.com/c44442bc99e2a6530feec5287b49128b.png)

---
## Practice

Which of the following values will potentially overflow the container?
```css
.flex-container{
 flex-wrap: ???;
}
```

* `nowrap`
* `wrap`
* `wrap-reverse`
* `unset`

---
## Revision

Which of the following Flexbox definitions is the definition for *wrap*?

???


* Multi-lines where the direction is defined by flex-direction.
* Multi-lines, opposite to the direction defined by flex-direction.
* Single-line which could cause the container to overflow.
