---
author: Billiexu

levels:

  - advanced

  - medium

type: normal

category: must-know

aspects:
  - workout
  - deep

links:

  - '[Article on CSS Selectors](http://www.sitepoint.com/future-generation-css-selectors-level-4/){website}'
  - '[MDN Docs on :empty](https://developer.mozilla.org/en-US/docs/Web/CSS/:empty)[documentation}'

---

# `:empty` and `:blank`

---
## Content

With `:empty` you can select an element based on there being no children in it, whether that be elements, text nodes, or even white space nodes. So with `:empty`, even if the element contains a single space and nothing else, it will not be considered “empty”.

The `:blank` pseudo-class, however, will select an element as long as it has no text and no other child elements, regardless of white space. So it could contain white space, line breaks, etc., and it would still qualify.

Example:

HTML:
```html
<p></p>
<p> </p>

```
CSS:

```css
p:blank {
  outline: solid 1px red;
}

p:empty {
  border: solid 1px green;
}

```
The `:empty` pseudo-class will select only the first element, because it’s completely empty. But the `:blank` pseudo-class will apply to both, because they are both “blank” with respects to text and elements.

---
## Practice

Which pseudo-class would select the following element?
```html
<p> </p>
```
???

* `:blank`
* `:empty`
* `neither...`

---
## Revision

Which lines of HTML code would a *:blank* pseudo class apply to?
```html
1 <p>Pseudo classes!</p>
2 <p></p>
3 <p>:empty and :blank</p>
4 <p> </p>
5 <p>.</p>
```
???

* 2nd and 4th
* 2nd, 4th, 5th
* 1st, 3rd, 5th
* 4th and 5th
* 2nd and 5th
* 1st and 3rd
