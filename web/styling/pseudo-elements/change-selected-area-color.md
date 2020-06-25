---
author: catalin

levels:

  - basic

  - beginner

type: normal

category: feature

aspects:
  - introduction

links:

  - '[MDN Docs on ::selection](https://developer.mozilla.org/en-US/docs/Web/CSS/%3A%3Aselection){documentation}'


---

# Change selected area color

---
## Content

Highlighted text area colors can be easily change with the `::selection` pseudo element.

Apply `::selection` on a paragraph:
```css
p::selection {
  background: black;
  color: white;
}
```

Gecko is the only engine requiring the prefix, so adding an other rule is required to support all browsers :
```css
p::-moz-selection {
  background: black;
  color: white;
}
```

---
## Practice

What rule must be added in order for the selection pseudo-element to be supported on all browsers?

???


* `::-moz-selection`
* `::-support-selection`
* `::-sup-selection`
* `::-gecko-selection`

---
## Revision

Which pseudo element is used to select a text area, for example if you wanted to change its background colour? ???

* `::selection`
* `:selection`
* `::select`
* `:select`
* `::selector`
* `:selector`
