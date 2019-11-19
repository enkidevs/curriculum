---
author: Mathieu

levels:

  - basic

  - beginner

type: normal

category: pattern

aspects:
  - introduction
  - workout

links:

  - '[MDN Docs On line-height](https://developer.mozilla.org/en-US/docs/Web/CSS/line-height){website}'
  - '[47 CSS Tips & Tricks](http://www.instantshift.com/2010/03/15/47-css-tips-tricks-to-take-your-site-to-the-next-level/){website}'
  
---

# Vertically center text

---
## Content

To vertically center a single line of text within a containing block of fixed height, set the line-height of the text to be the same as the height of the containing block.

```css
.vertical-center {
  height: 35px;
  line-height: 35px;
}
```
This is a visual example of what happens:

![HtmlToSvg.svg](https://img.enkipro.com/0b8a2d80f169af42d4448e639ac02e2a.png)

The first line is centered, but the second one will be displayed `35px` below, because of the property we just set.

---
## Practice

In the following example, what is the distance between the first and the second line, if the text spreads on two lines?
```css
.vertical-center-text{
  height: 50px;
  line-height: 50px;
```
???


* `50px`
* `25px`
* `5px`

---
## Revision

Which of the following CSS code snippets will vertically centre a line of text?
```css
/* Option a */
.vertical-center {
   centre: true;
   height: 20px;

/* Option b */
.vertical-center {
   height: 28px;
   line-height: 28px;

/* Option c */
.vertical-center {
   height: 12px;
   line-height: 100%;
   centre:true
}

```
???

* b
* a
* c
