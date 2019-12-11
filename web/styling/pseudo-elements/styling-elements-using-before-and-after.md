---
author: ailiea

levels:

  - basic

type: normal

category: tip

aspects:
  - introduction

tags:
  - styling
  - before
  - after

links:
  - '[MDN Docs on ::after](https://developer.mozilla.org/en-US/docs/Web/CSS/::after){documentation}'
  - '[MDN Docs on ::before](https://developer.mozilla.org/en-US/docs/Web/CSS/%3A%3Abefore){documentation}'

---

# Styling elements using `::before` and `::after`

---
## Content

Use the `::before` selector to add and style content just before the first child of an element.
Similarly, use the `::after` selector to add and style content after the last child of the element.

Consider the following HTML code:

```html
  <p>First</p>
  <p>Second</p>
  <p>Third</p>
```
And the following CSS snippet:

```css
  p::before{
    content: '#';
    color: red;
  }

  p::after{
    content: '?';
    color: aqua;
  }
```
This adds a red __#__ at the start of every `p` element and a blue __?__ at the end of them.

![HtmlToSvgmin.svg](https://img.enkipro.com/04042139dfbb5bbe310b0eba0b903359.png)

`content` is mandatory to display the element but can be empty (`content:"";`).

Both `::before` and `::after` can be used to display shapes, images or even borders.

[codepen.io](http://codepen.io/anon/pen/MKgrXB)

---
## Practice

Which CSS property is mandatory to display `::before` and `::after` pseudo-elements but can be empty?

 ???


* `content`
* `element`
* `div`
* `class`

---
## Revision

Using the `::before` and `::after` selectors, what does the following CSS code do?

```css
div::before {
   content: 'Hello!';
   color: white;
}
div::after {
   content: 'Goodbye!';
   color: black;
}
```
???


* Adds a white Hello! before every div element with a black Goodbye! after.
* Adds a white Hello! after every div element with a black Goodbye! before.
* It does nothing, improper CSS.
