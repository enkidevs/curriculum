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
  - '[Code Sample](https://codepen.io/lizthedeveloper/pen/gzrZza){code}'

---
# code - Display code in HTML
---
## Content

In HTML the `<code>` element is used to style the content to display like a fragment of a computer code.
Both the starting and ending tags are necessary.

Example:
```
<p>
  The function
  <code>
    calculateAverage()
  </code>
  calculates the average
  of a set of numbers
</p>
```
Result:
 The funcion `calculateAverage()` calculates the average of a set of numbers.

The default font style for the `<code>` element for most browsers is the monospace font.

**Note: It's best to use the `<code>` element to style content for HTML elements, CSS rules, filenames and JS scripts.**

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

`<p>`The `<???>``<p>``</p>``</???>` tags are used in HTML to create paragraphs.`</p>`

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
```
<code>
  var x = 5;
  y = x == 10
</code>
```

* All text within `<code>` will display in monospace font.
* Only the text "var x = 5;" will be displayed within the page because the other line has no semicolon.
* All text within `<code>`, will display in arial font.
* All text within `<code>` will display with syntax highlighting associated with the coding language.
