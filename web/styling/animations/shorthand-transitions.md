---
author: nene

levels:

  - basic

  - medium

type: normal

category: feature

links:
  - '[MDN Docs on CSS-transitions](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Transitions){documentation}'

aspects:
  - workout
  - deep

---

# Shorthand Transitions

---
## Content

Declaring each transition property individually can be intensive, especially using `vendor prefixes`.

Instead, try the shorthand property `transition` that supports all the different values.

Using only this alone it is possible to set every transition value in order of `transition-property`, `transition-duration`, `transition-timing-function`, and lastly `transition-delay`.


```css
.box {
  background: #2db34a;
  border-radius: 6px;
  transition: background .2s linear;
}
.box:hover {
  background: #ff7b29;
  border-radius: 50%;
}
```

For setting many transitions at once, set every individual group of transition values, then use a comma to separate each group of additional ones.

[Codepen example](http://codepen.io/mihaiberq/pen/RGAjpK)

---
## Revision

Which of the following examples are using the CSS `transition` property with the transition values in the correct order? ???

```css
// Option A
transition: background .2s linear;

// Option B
transition: .2s linear background;

// Option C
transition: linear background .2s;
```


* Option A
* Option B
* Option C
