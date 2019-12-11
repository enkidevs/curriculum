---
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

aspects:
  - introduction
  - workout

links:

  - '[MDN Docs on ::first-letter](https://developer.mozilla.org/en-US/docs/Web/CSS/::first-letter){documentation}'
  - '[47 CSS Tips & Tricks](http://www.instantshift.com/2010/03/15/47-css-tips-tricks-to-take-your-site-to-the-next-level/){website}'
  

---

# Drop caps with `::first-letter`

---
## Content

Using the `::first-line` and `::first-letter` pseudo elements that have been  introduced in CSS1, a nice typographic effect like a drop cap can be achieved.

```css
p::first-letter {
    font-size: 20px;
}
```
This will only work if the  first letter is not preceded by another pseudo-element  such as `::before`.

If there are multiple targeted elements in a row, each first letter will be affected. In order to avoid this `::first-child` or `::first-of-type` pseudo-elements can be used:
```css
p::first-child::first-letter {
    font-size: 20px;
}
```
The first line of a text can also be enhanced:
```css
p::first-line {
  font-size: 15px;
}
```
An usage example of the pseudo-elements:

![HtmlToSvg.svg](https://img.enkipro.com/1c1f257c27f513aac7ff7fa09cbd468a.png)

---
## Practice

Change the size of the first letter of a paragraph to `50px` :
```css
p.special ??? {
  ??? : 50px;
}
```

* `::first-letter`
* `font-size`
* `::first-child:first-line`
* `size`
* `font-height`

---
## Revision

The `::first-letter` pseudo-element won't have the expected result if the targeted element

???.


* has a `::before` pseudo-element set
* has an `::after` pseudo-element set
* is not a paragraph
