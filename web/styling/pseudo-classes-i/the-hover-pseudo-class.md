---
author: mihaiberq

levels:
  - basic
  - medium

type: normal

category: feature

aspects:
  - introduction
  - workout

links:
  - '[Tutorial on Pseudo Classes & Elements](https://scrimba.com/p/pWvwCg/cbmMJSb){article}'
  - '[MDN Docs on :hover](https://developer.mozilla.org/en-US/docs/Web/CSS/@media/hover){documentation}'

---

# The `hover` Pseudo-Class

---
## Content

One of the most versatile and used pseudo-classes is `:hover`. Whenever an element on a website reacts to the mouse pointer being on top of it, usually it is because of the `:hover` pseudo-class matching.

In the previous insight, the example was:
```css
a:hover {
  color: yellow;
}
```
Unlike other pseudo-classes that are link-related (e.g. `:visited`) , you can use `:hover` for almost any element. *Buttons* are usually styled using this property to inform the user that by performing a click action, the webpage will respond in some way.

The drawback of this pseudo-class is that it doesn't work on most mobile devices, as the screen can't recognize a *hovering* state. Depending on the browser, the `:hover` pseudo-class might never match, match only for a very short time after touching the element or even continue lasting the user stopped touching the element.

---
## Practice

Is the following statement true?

The `:hover` pseudo-class can only be applied to `<a>` (link) elements.

???


* False
* True
* Partially true, applicable to some browsers

---
## Revision

In which of the following cases, will the `:hover` pseudo-class most likely work as expected?

1. When the browser is running on a touch-screen device.
2. When it is randomly mixed with other link-specific pseudo-classes.
3. When it is applied on a button, in a browser running on a PC.
4. When it is not used.

???


* 3
* 1
* 2
* 4
* None
