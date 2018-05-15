---
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/text-decoration-style){documentation}'
  - '[caniuse.com](http://caniuse.com/#feat=text-decoration){website}'

notes: 'https://css-tricks.com/more-control-over-text-decoration/'

---

# Change the style of the decoration with `text-decoration-style`

---
## Content

```css
a {
    // Draws a single line - Default
  text-decoration-style: solid; 
    // Draws a double line
  text-decoration-style: double; 
    // Draws a dotted line
  text-decoration-style: dotted; 
    // Draws a dashed line
  text-decoration-style: dashed; 
    // Draws a wavy line
  text-decoration-style: wavy; 
}
```

Currently only supported in Firefox.

This is how they are supposed to look:

![testsvg.svg](%3C?xml%20version=%221.0%22%20encoding=%22UTF-8%22%20standalone=%22no%22?%3E%0D%0A%3Csvg%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20800%20300%22%20style=%22font-size:3.2em;font-family:'Roboto',sans-serif;%22%0D%0A%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20%20version=%221.2%22%20baseProfile=%22tiny%22%3E%0D%0A%3Cg%3E%0D%0A%09%3Crect%20x=%220%22%20y=%220%22%20width=%22800%22%20height=%22300%22%20fill=%22#596193%22%20/%3E%0D%0A%3C/g%3E%0D%0A%3Cg%3E%0D%0A%09%3Ctext%20x=%2270%22%20y=%2240%22%20fill=%22#fff%22%3Etext-decoration-style:%20solid;%3C/text%3E%0D%0A%09%3Cpath%20stroke=%22#fff%22%20stroke-width=%224%22%20d=%22M70%2045%20l570%200%22/%3E%0D%0A%3C/g%3E%3Cg%3E%0D%0A%09%3Ctext%20x=%2270%22%20y=%22100%22%20fill=%22#fff%22%3Etext-decoration-style:%20double;%3C/text%3E%0D%0A%09%3Cpath%20stroke=%22#fff%22%20stroke-width=%224%22%20d=%22M70%20105%20l610%200%22/%3E%0D%0A%09%3Cpath%20stroke=%22#fff%22%20stroke-width=%224%22%20d=%22M70%20115%20l610%200%22/%3E%0D%0A%3C/g%3E%3Cg%3E%0D%0A%09%3Ctext%20x=%2270%22%20y=%22160%22%20fill=%22#fff%22%3Etext-decoration-style:%20dotted;%3C/text%3E%0D%0A%09%3Cpath%20stroke=%22#fff%22%20stroke-width=%228%22%20stroke-dasharray=%225,5%22%20d=%22M70%20165%20l610%200%22/%3E%0D%0A%3C/g%3E%3Cg%3E%0D%0A%09%3Ctext%20x=%2270%22%20y=%22220%22%20fill=%22#fff%22%3Etext-decoration-style:%20dashed;%3C/text%3E%0D%0A%09%3Cpath%20stroke=%22#fff%22%20stroke-width=%225%22%20stroke-dasharray=%2220,10%22%20d=%22M70%20225%20l630%200%22/%3E%0D%0A%09%0D%0A%3C/g%3E%3Cg%3E%0D%0A%09%3Ctext%20x=%2270%22%20y=%22280%22%20fill=%22#fff%22%3Etext-decoration-style:%20wavy;%3C/text%3E%0D%0A%09%3Cpath%20stroke=%22#fff%22%20fill=%22transparent%22%20stroke-width=%225%22%20d=%22M70%20290%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20q%206%2012%2012%200%20q%206%20-12%2012%200%20%20q%206%2012%2012%200%20%20q%206%20-12%2012%200%20%20q%206%2012%2012%200%20%20q%206%20-12%2012%200%20%20q%206%2012%2012%200%20q%206%20-12%2012%200%20%20q%206%2012%2012%200%20q%206%20-12%2012%200%20%20q%206%2012%2012%200%20q%206%20-12%2012%200%20%20q%206%2012%2012%200%20q%206%20-12%2012%200%20%20q%206%2012%2012%200%20%22/%3E%0D%0A%3C/g%3E%0D%0A%3C/svg%3E)

---
## Revision

Which of the following is *not* a `text-decoration-style` property? ???

* curved
* solid
* double
* wavy
* dashed

