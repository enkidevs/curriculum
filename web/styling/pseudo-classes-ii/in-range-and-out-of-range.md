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

  - '[MDN Docs on :in-range](https://developer.mozilla.org/en-US/docs/Web/CSS/:in-range){documentation}'
  - '[MDN Docs on :out-of-range](https://developer.mozilla.org/en-US/docs/Web/CSS/:out-of-range){documentation}'


---

# The `:in-range` and `:out-of-range` Pseudo-Classes

---
## Content

Another set of pseudo-classes that can be applied only to elements that have (and can take) a range limitation, such as `<input>`s, are `:in-range` and `:out-of-range`.

`:in-range` and `:out-of-range` match if values contained in the `<input>` field are inside the range limits (specified by the `min` and `max` attributes) and outside, respectively. They can be used to provide feedback to the user without the use of `JavaScript`:
```html
<form>
  <label>How old are you?</label>
  <input type="number" min="1" max="120">
</form>
```
And the CSS:
```css
input:in-range {
  background-color: green;
}

input:out-of-range {
  background-color: red;
  border: 2px solid red;
}
```

Would change the background color of the field depending on the value introduced.

---
## Practice

For either `:in-range` and `:out-of-range` pseudo-classes to match, the element has to have

???

* `min`, `max` or both attributes
* `range` attribute
* the type of input

---
## Revision

For either `:in-range` and `:out-of-range` pseudo-classes to match, the element has to have

???

* `min`, `max` or both attributes
* `range` attribute
* the type of input
