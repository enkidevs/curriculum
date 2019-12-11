---
author: catalin

levels:

  - basic

type: normal

category: caveats

aspects:
  - introduction

links:

  - '[CSS Trick](https://gist.github.com/sodevious/b87dbedb721624338b04){website}'


---

# Debug with the `*` selector

---
## Content

These three lines of **CSS** will select every element on the page and give them a slightly darker background color with the help of the `*` selector.
```css
* {
  background-color: rgba(0,0,0,0.1);
}
```

Elements inside other elements will get darker and darker.

This approach is useful when dealing with box models and when wanting to see how `padding` and `margin` affect each other.

This is how 3 nested `div`s would look:

![HtmlToSvg.svg](https://img.enkipro.com/e9eea767972e54e013b9608f9e492803.png)

---
## Practice

Which selector is used to select every element of a page so styles can be applied?

???

* `*`
* `+`
* `=`
* `/\`
* `<>`

---
## Revision

What does the following CSS code do?
```css
div * {
   font-family: "Arial Narrow";
}
```
???


* Selects all elements inside div elements and sets their font family to Arial Narrow.
* Selects all elements and sets their font family to Arial Narrow.
* Selects all elements where the font family is Arial Narrow.
* Selects all elements inside div elements where the font family is Arial Narrow.

---
## Quiz
### which selector is used to select every element on the page?

```css
??? { background-color: rgba(0,255,0,0.1); }
```

* `*`
* `-`
* `<>`
* `html`
