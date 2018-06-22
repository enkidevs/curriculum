---
author: ailiea

levels:

  - basic

type: normal

category: tip

tags:

  - styling

  - before

  - after


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/::after){documentation}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/%3A%3Abefore){documentation}'
  - '[codepen.io](http://codepen.io/anon/pen/MKgrXB){website}'


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

![HtmlToSvgmin.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20800%20300%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h800v300H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22362%22%20y=%2263%22%20font-family=%22Arial%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#ff4500%22%3E#%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22379%22%20y=%2263%22%20font-family=%22Arial%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#fff%22%3EFirst%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22437%22%20y=%2263%22%20font-family=%22Arial%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#0ff%22%3E?%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22340.5%22%20y=%22153%22%20font-family=%22Arial%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#ff4500%22%3E#%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22357.5%22%20y=%22153%22%20font-family=%22Arial%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#fff%22%3ESecond%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22458.5%22%20y=%22153%22%20font-family=%22Arial%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#0ff%22%3E?%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22356%22%20y=%22243%22%20font-family=%22Arial%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#ff4500%22%3E#%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22373%22%20y=%22243%22%20font-family=%22Arial%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#fff%22%3EThird%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22443%22%20y=%22243%22%20font-family=%22Arial%22%20font-size=%2230%22%20font-weight=%22400%22%20fill=%22#0ff%22%3E?%3C/text%3E%3C/g%3E%3C/svg%3E)

`content` is mandatory to display the element but can be empty (`content:"";`).


Both `::before` and `::after` can be used to display shapes, images or even borders.

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

