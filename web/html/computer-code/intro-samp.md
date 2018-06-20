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

link:
  - '[MDN Docs for samp](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/samp){website}'

---
# samp - Sample Output Element
---
## Content

In HTML the `<samp>` element is used to represent a sample output from a computer program.

**Note:**
  - **samp stands for Sample Output Element.**
  - **Both the starting and ending tags are necessary.**

Example:
```
<p>
  Instalation failed, press
  <samp>Retry</samp>
  to try again.
</p>
```

Result:<br>
Instalation failed, press <samp>Retry</samp> to try again.

In the example above, the `<samp>` element is used to produce an output from a computer program.

The default font style for the `<samp>` element for most browsers is the monospace font.

You can nest the `<kbd>` element with the `<samp>` element, or vice versa, for different representations.

Example 1:
```
<p>
  To paste, press
   <samp>
    <kbd>Ctrl</kbd> +
   </samp>
   <samp>
    <kbd>V</kbd>
   </samp>
</p>
```
Result:<br>
<p>
  To paste, press
   <samp>
    <kbd>Ctrl</kbd> +
   </samp>
   <samp>
    <kbd>V</kbd>
   </samp>
</p>

Example 2:
```
<p>
  If you wish to undo, press
   <kbd>
    <samp>Ctrl</samp> +
   </kbd>
   <kbd>
    <samp>Z</samp>
   </kbd>
</p>
```
Result:<br>
<p>
  If you wish to undo, press
   <kbd>
    <samp>Ctrl</samp> +
   </kbd>
   <kbd>
    <samp>Z</samp>
   </kbd>
</p>

In the first example, we have the `<kbd>` element nested inside the `<samp>` element. When nesting inside `<samp>`, it represents input echoed by the system.

And in the second example, we have a `<samp>` element nested inside a `<kbd>` element. This represents input based on system output. Like a menu item.

You can also use CSS to change the font or any other property of the `<samp>` element like so:
```
samp {
  border-radius: 4px;
  padding: 1px 2px 0;
  border: 2px solid blue;
}
```

---
## Practice

When using the `<samp>` element, which statements are true?

???

* represents user input
* represents sample output from a computer program
* displayed in the browser's default monospace font
* when nested inside `<kbd>`, represents input based on system output.
* when containing `<kbd>`, represents input echoed by the system.



---
## Revision

What HTML element wraps around sample output text from a computer program to identify it differently?

???

* samp
* code
* kbd
* pre
* var
* out
* output

---
## Quiz

### Do you know which HTML element is best to substitute for "???" within this code:  

`<p>`My first selection within Enki was wrong as it displayed the alert `<???>`Oh no... This is a wrong answer`</???>`.`</p>`

???

* samp
* /samp
* code
* /cod
* pre
* /pre
* out
* /out
* output
* /output
