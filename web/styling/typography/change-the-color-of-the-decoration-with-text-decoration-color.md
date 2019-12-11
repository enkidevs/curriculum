---
author: Mathieu

levels:

  - basic

  - beginner

type: normal

category: how to

aspects:
  - introduction

links:

  - '[MDN Docs on Text Decoration](https://developer.mozilla.org/fr/docs/Web/CSS/text-decoration){documentation}'
  - '[More Control Over Text Decoration](https://css-tricks.com/more-control-over-text-decoration/){website}'

parent: underline-feature-on-html-elements

---

# Change the color of the decoration with `text-decoration-color`

---
## Content

The default for the color of the decoration lines is the same as the `color` of the text. But you can change that:

```css
a {
  text-decoration: underline;
  text-decoration-color: #c0ffee;
}
```
The only browser that currently supports this property is `Firefox`.

---
## Revision

What is the default text decoration colour? And with what property can this be changed? ???

* Default colour is the text colour. Changed with `text-decoration-color:`.
* Default colour is black. Changed with `text-decoration-colour:`.
* Default colour is white. Cannot be changed.
