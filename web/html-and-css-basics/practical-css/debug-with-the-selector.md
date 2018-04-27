---
author: catalin

levels:

  - basic

type: normal

category: caveats

tags:

  -


links:

  - '[gist.github.com](https://gist.github.com/sodevious/b87dbedb721624338b04){website}'


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

![HtmlToSvg.svg](%3C?xml%20version=%221.0%22%20encoding=%22UTF-8%22%20standalone=%22no%22?%3E%0A%3Csvg%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20800%20300%22%0A%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20%20version=%221.2%22%20baseProfile=%22tiny%22%3E%0A%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%0A%3Cdefs%3E%0A%3C/defs%3E%0A%3Cg%20fill=%22none%22%20stroke=%22black%22%20stroke-width=%221%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%220.0980392%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M0,0%20L808,0%20L808,300%20L0,300%20L0,0%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M8,8%20L808,8%20L808,308%20L8,308%20L8,8%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%220.0980392%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M308,58%20L508,58%20L508,258%20L308,258%20L308,58%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%220.0980392%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M333,83%20L483,83%20L483,233%20L333,233%20L333,83%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%220.0980392%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M358,108%20L458,108%20L458,208%20L358,208%20L358,108%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%3C/g%3E%0A%3C/svg%3E%0A)

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

 ???

* *
* -
* <>
* html
