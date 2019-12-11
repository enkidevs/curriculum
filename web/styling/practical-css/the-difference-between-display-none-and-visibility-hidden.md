---
author: tommarshall

levels:

  - basic

  - medium

  - advanced

type: normal

category: must-know

aspects:
  - introduction
  - workout

links:

  - '[MDN Docs on Display](https://developer.mozilla.org/en-US/docs/Web/CSS/display){documentation}'


---

# The difference between display:none and visibility:hidden

---
## Content

`visibility:hidden` defines that an element is rendered on the page but not visible. Space on the page will be allocated for this element.

```css
#foo {
  visibility:hidden;
}
```

`display:none` defines that an element is not rendered on the page and thus does not appear. Unlike `visibility:hidden`, page space is not allocated for the element, allowing other elements to fill in.

```css
#foo {
  display:none;
}
```

Keep in mind that `display:none` will trigger a DOM reflow, while `visibility:hidden` will not.

A reflow is a recomputation of the page's layout, calculating positions and dimensions, being an expensive process.

---
## Practice

Which of those properties won’t preserve the space allocated for the element?

???

* `display: none`
* `visibility: hidden`
* `neither`

---
## Revision

Which of the following is the definition for `display:none`?

???

* The element is not rendered on the page so consequently does not appear, page space is not allocated.
* The element is rendered on the page but does not appear, page space is allocated.
* The element is not rendered on the page so consequently does not appear, page space is allocated.
* The element is rendered on the page but does not appear, page space is not allocated.
