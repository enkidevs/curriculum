---
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: normal

category: hack

aspects:
  - introduction
  - workout

links:

  - '[CSS Pro Tips](https://github.com/AllThingsSmitty/css-protips){website}'


---

# Comma-separated lists

---
## Content

To make list items look like a real, comma-separated list:
```css
ul > li:not(:last-child)::after {
  content: ",";
}
```
The `:not()` pseudo-class specifies that no comma is added to the last item in the list.

---
## Practice

Complete the snippet to target every list item’s after element, but the last one:
```css
ul > ??? :not(???)
           ::after{
  /* code */
}
```

* `li`
* `:last-child`
* `:nth-child(last)`
* `:li`
* `:not(:first-child)`

---
## Revision

What does the following CSS code do?
```css
ul > li:not(:last-child)::after {
   content: "//";
}
```
???

* Adds // after each item in the list except for after the final item.
* Changes the list so it's just a list of forward slashes.
* Changes the content of the last child to //.
