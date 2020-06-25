---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - introduction

aspects:
  - introduction

links:

---
# Intro `<br>`
---
## Content

The `<br>`, or the **Line Break** element, is used to create a line break in a webpage or document. Line breaks can be very useful for writing poems or an address.

```html
Some Text<br>Some Text<br>bla bla
```

![element-br](https://img.enkipro.com/8830b93538045b1dcaf21c420a3d2e93.png)

[View CodePen](https://codepen.io/enkidevs/pen/XBpmqB)

**Notes:**
  1) This element doesn't have a closing tag.
  2) Line breaks should never be used to separate paragraphs.
  3) Line breaks should never be used to create larger gaps between lines of text.

When larger visual gaps are needed around blocks of text, the `margin` CSS property should be used (such as `margin-bottom: 24px;`).

Historical, in XHTML the line breaks are written as `<br />` which is important to know if you want to convert your HTML to XHTML or when reading various tutorials.

Address Example:
```html
<p>
Apple<br>
1 Infinite Loop<br>
Cupertino, CA<br>
95014
</p>
```
Address Result:

![element-br-2](https://img.enkipro.com/36ad609fbdfdb3d532b473a09b7d0cca.png)

[View CodePen](https://codepen.io/enkidevs/pen/EpZVRO)

---
## Practice

Select the statement that is false about the `<br>` element.

???

* Multiple line breaks are encouraged to create more gap between lines of text.
* Represents line breaks.
* Should never be used to separate paragraphs.
* Useful for writing addresses & poems.
* In HTML5, line breaks are written as `<br>`
* In XHTML, line breaks are written as `<br />`


---
## Revision

The goal is to display text like this:
```htmlhtml
Apple
1 Infinite Loop
Cupertino, CA
95014
```
So what must happen to this address to display as separate lines of text within a single paragraph?
```html
<p>Apple
1 Infinite Loop
Cupertino, CA
95014</p>
```
???

* Add `<br>`'s to create each new line.
* Add paragraphs to each new line.
* New lines should be created using line-height.
* New lines are not possible within a single paragraph.
* Nothing needs to be done to the code.

---
## Quiz

### How much do you know about styling text?

In an address, what are the preferred method(s) of changing the size of the gaps of space between the lines of text here?

```html
<p>Apple<br>
1 Infinite Loop<br>
Cupertino, CA<br>
95014</p>
```

???

* set paragraph's line-height and line break's line-height.
* set line break's height and paragraph's height
* set paragraph's margins and line break's margins.
* add additional `<br>` and `<p>` elements
