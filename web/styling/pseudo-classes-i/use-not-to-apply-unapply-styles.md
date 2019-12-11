---
author: jordanfish

levels:

  - medium

type: normal

category: how to

aspects:
  - workout
  - deep

links:

  - '[CSS Pro Tips](https://github.com/AllThingsSmitty/css-protips){website}'
  - '[MDN Docs on :not](https://developer.mozilla.org/en-US/docs/Web/CSS/:not){documentation}'


---

# Use `:not()` to apply/unapply styles

---
## Content

Rather than adding a border to a navigation bar, and then removing it for the last element:

```css
/* add border */
.nav li {
  border-right: 2px solid #FFF;
}

/* last element */
.nav li:last-child {
  border-right: none;
}
```
Use the `:not()` pseudo-class to only apply to the elements you want:

```css
.nav li:not(:last-child) {
  border-right: 2px solid #FFF;
}
```

---
## Practice

Complete the code snippet:

```css
.nav li???(:last-child) {
  border-left: 5px dashed #FFF;
}
```

* `:not`
* `.not`
* `::not`
* `not`

---
## Revision

What does the following CSS code do?
```css
.div li:not(:last-child) {

}
```
???

* Allows styles to be applied to all elements except for the final element.
* Allows styles to be applied specifically to the final element.
* Allows styles to be applied to every other element.
