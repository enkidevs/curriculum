---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.semantic-html.0: 10
  web.semantic-html.1: 10
  web.semantic-html.3: 10
  web.markup-text.2: 10
  web.layout-html.3: 10

aspects:
  - introduction
  - workout
  - deep

links:
  - '[CodePen: Simple Keyboard Input and Sample Example](https://codepen.io/enkidevs/pen/NBjJNV){code}'
  - '[CodePen: Styled kbd Element](https://codepen.io/enkidevs/pen/pKxKGE){code}'
  - '[MDN Docs for kbd](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/kbd){website}'

---
# kbd - Keyboard Input Element
---
## Content

The HTML `<kbd>`, or the **Keyboard Input** element, is used to represent user input, such as keys on a keyboard, voice commands, or any other textual input.

Example:
```html
<p>
  Press the button
  <kbd>Y</kbd> key
  to continue playing.
</p>
```

Keyboard Input Result:

![kbd-element](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2292%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2292%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22LucidaGrande%2C%20Lucida%20Grande%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2232%22%3EOn%20a%20Mac%2C%20use%20the%20keys%3A%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2250%22%3E%E2%8C%98%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2234%22%20y%3D%2250%22%20font-family%3D%22Courier%22%3E%20cmd%20%2B%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22101.21094%22%20y%3D%2250%22%3E%E2%87%A7%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22117.21094%22%20y%3D%2250%22%20font-family%3D%22Courier%22%3E%20shift%20%2B%204%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22213.22656%22%20y%3D%2250%22%20font-family%3D%22ArialMT%2C%20Arial%22%3E%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2269%22%20font-family%3D%22ArialMT%2C%20Arial%22%3Eto%20take%20a%20screenshot%20of%20a%20selected%20area.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

The default font style for the `<kbd>` element for most browsers is the monospace font.

By adding CSS styles, the `<kbd>` element can be used to present the user input in much better ways. 

![kbd-element-styled](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2292%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2292%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Crect%20width%3D%2265%22%20height%3D%2221%22%20x%3D%2219%22%20y%3D%2238%22%20fill%3D%22%23000%22%20rx%3D%222%22%2F%3E%3Crect%20width%3D%2283%22%20height%3D%2221%22%20x%3D%22107%22%20y%3D%2238%22%20fill%3D%22%23000%22%20rx%3D%222%22%2F%3E%3Crect%20width%3D%2223%22%20height%3D%2221%22%20x%3D%22207%22%20y%3D%2238%22%20fill%3D%22%23000%22%20rx%3D%222%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22LucidaGrande%2C%20Lucida%20Grande%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2230%22%3EOn%20a%20Mac%2C%20use%20the%20keys%3A%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2252%22%3E%20%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2218%22%20y%3D%2274%22%20font-family%3D%22ArialMT%2C%20Arial%22%3Eto%20take%20a%20screenshot%20of%20a%20selected%20area.%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22LucidaGrande%2C%20Lucida%20Grande%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2289%22%20y%3D%2252%22%3E%2B%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22LucidaGrande%2C%20Lucida%20Grande%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%22192%22%20y%3D%2252%22%3E%2B%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22LucidaGrande%2C%20Lucida%20Grande%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%22111%22%20y%3D%2254%22%3E%E2%87%A7%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22127%22%20y%3D%2254%22%20font-family%3D%22Courier%22%3E%20shift%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22LucidaGrande%2C%20Lucida%20Grande%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2224%22%20y%3D%2254%22%3E%E2%8C%98%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2240%22%20y%3D%2254%22%20font-family%3D%22Courier%22%3E%20cmd%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22Courier%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%22214%22%20y%3D%2254%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/pKxKGE)-->

---
## Practice

When using the `<kbd>` element, which statement is true?

???

* represents user input
* produces a block element
* represents preformatted text
* represents sample output

---
## Revision

What HTML element wraps around keyboard names to display the text differently than the surrounding text?

???

* kbd
* key
* keyboard
* k
* kb
* kn

---
## Quiz

### Can you answer this question about `<kbd>` elements?

What does the tag `<kbd>` do here?

`<p>`Save the document by pressing the `<kbd>`Ctrl`</kbd>` + `<kbd>`S`</kbd>` keyboard shortcut.`</p>`

* Produces inline element representing user input.
* Produces block element representing user input.
* Produces pre-formatted text representing user input.
* Produces sample output representing user input.
