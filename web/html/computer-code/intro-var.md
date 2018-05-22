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
  - '[MDN Docs for var](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/var){website}'

---
# Intro var
---
## Content

In HTML the `<var>` element is used to represent a name of a variable in either a programming context or a mathematical expression.

**Note:**
  - **var stands for The Variable element.**
  - **Both the starting and ending tags are necessary.**

Example:
```
<p>
 <var>X</var> >
 <var>Y</var>
</p>
```

Result:
<p>
 <var>X</var> &gt;
 Y
</p>

In the example above, the `<var>` element is used to create an inline element and to denote variable names in a mathematical expression.

The default text style for the `<var>` element for most browsers is monospace and <i>italic</i>.

However, you can edit this by using CSS like so:

```
var {
  font: bold 20px "Times New Roman",
  Times, serif;
}
```

---
## Practice

Which statement is not true about using the `<var>` element?

???

 * represents user input
 * represents a variable in a mathematical expression
 * represents a variable in a programming context
 * produces an inline element
 * Default text style is italic.


---
## Revision

What HTML element is best to display mathematical expressions or a programming context differently than the surrounding text?

???

* var
* samp
* code
* kbd
* pre
* math
* output

---
## Quiz

### How much do you know about HTML elements?

Which HTML element is best to substitute for "tag" within this code:  

`<p>`A simple equation: `<tag>`x`</tag>` = `<tag>`y`</tag>` + 2`</p>`

???

* var
* samp
* code
* kbd
* pre
* math
* output
