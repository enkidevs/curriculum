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
  web.layout-html.4: 10

aspects:
  - introduction
  - workout
  - deep

links:
  - '[CodePen: Code Element](https://codepen.io/enkidevs/pen/rrmROe){code}'
  - '[CodePen: Styled Code Element](https://codepen.io/enkidevs/pen/mKzKxa){code}'

---
# code - Display code in HTML
---
## Content

The HTML `<code>` element is used to display a fragment of a computer code.

Example:
```html
<p>
  The function
  <code>
    calculateAverage()
  </code>
  calculates the average
  of a set of numbers.
</p>
```

Code Result:

![code-element](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2288%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2288%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2231%22%3EThe%20function%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22110.5%22%20y%3D%2231%22%20font-family%3D%22Courier%22%3EcalculateAverage%28%29%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22283.32813%22%20y%3D%2231%22%3E%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2250%22%3Ecalculates%20the%20average%20of%20a%20set%20of%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2267%22%3Enumbers.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

The default font style for the `<code>` element for most browsers is the monospace font.

**Note:** It's best to use the `<code>` element to style content for HTML elements, CSS rules, filenames, and JS scripts. With a little CSS, the code used can stand out more on a page like this: 

![code-element-style](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2292%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2292%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Crect%20width%3D%22180%22%20height%3D%2219%22%20x%3D%22110.5%22%20y%3D%2218.5%22%20fill%3D%22%23EEE%22%20stroke%3D%22%23E1E1E1%22%20rx%3D%222%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2229%22%3EThe%20function%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22114.94531%22%20y%3D%2229%22%20font-family%3D%22Courier%22%3EcalculateAverage%28%29%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22287.77344%22%20y%3D%2229%22%3E%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2250%22%3Ecalculates%20the%20average%20of%20a%20set%20of%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2271%22%3Enumbers.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/mKzKxa)-->

---
## Practice

What content is best to style when using the `<code>` element?

???

 * All 4
 * HTML elements
 * CSS Rules
 * filenames
 * JS scripts

---
## Revision

What HTML element is used to visually highlight the difference of the paragraph elements in an appropriate way?

`<p>`The `<???>` `<p>` `</p>` `</???>` tags are used in HTML to create paragraphs.`</p>`

???

* code
* kbd
* samp
* pre
* var

---
## Quiz

### How much do you know about the `<code>` element?

What will be the effect of wrapping this text in the _code_ element?
```html
<code>
  var x = 5;
  y = x == 10
</code>
```

* All text within `<code>` will display in monospace font.
* Only the text "var x = 5;" will be displayed within the page because the other line has no semicolon.
* All text within `<code>`, will display in arial font.
* All text within `<code>` will display with syntax highlighting associated with the coding language.
