---
author: jordanfish

levels:

  - advanced

  - medium

type: normal

category: best practice

aspects:
  - workout
  - deep

links:

  - '[CSS Pro Tips](https://github.com/AllThingsSmitty/css-protips){website}'
  - '[MDN Docs on Box Sizing](https://developer.mozilla.org/en-US/docs/Web/CSS/box-sizing){documentation}'

parent: use-box-sizing-to-define-an-element-s-width-and-height-properties

---

# Inherit `box-sizing`

---
## Content

Say you want to set `box-sizing` `border-box` to every element in the page:

```css
* {
  box-sizing: border-box;
}
```
However, you have some `div`s with `img`s inside them you are not looking to resize because of `border-box`.

One way around it would be to change the property value for those images:
```css
.customdiv, .customdiv::before,
.customdiv::after,.customdiv *,
.customdiv *::before,
.customdiv *::after {
  box-sizing: content-box;
}
```
However, this is an example bad practice because the `box-sizing` is set by yourself and can be confusing.

A better way of doing it is by letting  `box-sizing` be inherited from the parent component:
```css
html {
  box-sizing: border-box;
}
*, *::before, *::after {
  box-sizing: inherit;
}
```
This makes it easier to change `box-sizing` for components that leverage other behavior.

---
## Revision

Complete the following code snippet to let `box-sizing` be inherited from `html`:

```css
html {
   box-sizing: border-box;
}

p {
   box-sizing: ???;
}
```


* `inherit`
* `inherits`
* `extend`
* `extends`
