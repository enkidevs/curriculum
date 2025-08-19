---
author: Stefan-Stojanovic
type: normal
category: must-know
links:
  - >-
    [HTML <samp>
    Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/samp){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# The samp Element 


---

## Content

The `<samp>`, or the **Sample Output** element, is used to represent a sample output from a computer program.

Example:

```html
<p>This is the crazy error I got:</p>
<p><samp>Keyboard not found<br>
Press F1 to continue</samp></p>
```

Sample Output Result:

![samp-element](https://img.enkipro.com/5dfbd25545cf6fab17a1fbef7ab50062.png)

The default font style for the `<samp>` element for most browsers is the monospace font.

By adding CSS styles, the `<samp>` element can be used to present the output from a computer program in a more visually pleasing way.

![samp-element-styled](https://img.enkipro.com/d2ec92c8d3a7be6ac739a44ee6ef01fc.png)

[View CodePen](https://codepen.io/enkidevs/pen/BVqOJr)


---

## Practice

When using the `<samp>` element, which statement is **not** true?

???

- represents user input
- represents sample output from a computer program
- displayed in the browser's default monospace font
- `when nested inside <kbd>, represents input based on system output.`
- `when containing <kbd>, represents input echoed by the system.`


---

## Revision

What HTML element wraps around sample output text from a computer program to identify it differently?

```html
<???>
```

- samp
- code
- kbd
- pre
- var
- out
- output


---

## Quiz

### Do you know which HTML element is best to substitute for "TAG" within this code:


`<p>`My first selection within Enki was wrong as it displayed the alert `<TAG>`Oh no... This is a wrong answer`</TAG>`.`</p>`

TAG = ???

- samp
- code
- pre
- out
- output
