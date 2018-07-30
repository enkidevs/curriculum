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
  - '[CodePen: samp Element](https://codepen.io/enkidevs/pen/BVqOJr){code}'
  - '[MDN Docs for samp](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/samp){website}'

---
# samp - Sample Output Element
---
## Content

The HTML `<samp>`, or the **Sample Output** element, is used to represent a sample output from a computer program.

Example:
```html
<p>This is the crazy error I got:</p>
<p><samp>Keyboard not found<br>
Press F1 to continue</samp></p>
```

Sample Output Result:

![samp-element](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22106%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22106%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2232%22%3EThis%20is%20the%20crazy%20error%20I%20got%3A%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2218%22%20y%3D%2266%22%20font-family%3D%22Courier%22%3EKeyboard%20not%20found%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2285%22%20font-family%3D%22Courier%22%3EPress%20F1%20to%20continue%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

The default font style for the `<samp>` element for most browsers is the monospace font.

By adding CSS styles, the `<samp>` element can be used to present the sample output from a computer program in much better ways. 

![samp-element-styled](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22106%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22106%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Crect%20width%3D%22282%22%20height%3D%2250%22%20x%3D%2218%22%20y%3D%2247%22%20fill%3D%22%23000%22%20rx%3D%223%22%2F%3E%3Ctext%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2232%22%20fill%3D%22%23000%22%3EThis%20is%20the%20crazy%20error%20I%20got%3A%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2218%22%20y%3D%2266%22%20fill%3D%22%237EEA8B%22%20font-family%3D%22Courier%22%3E%20Keyboard%20not%20found%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2285%22%20fill%3D%22%237EEA8B%22%20font-family%3D%22Courier%22%3E%20Press%20F1%20to%20continue%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/BVqOJr)-->

---
## Practice

When using the `<samp>` element, which statement is not true?

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

### Do you know which HTML element is best to substitute for "TAG" within this code:  

`<p>`My first selection within Enki was wrong as it displayed the alert `<TAG>`Oh no... This is a wrong answer`</TAG>`.`</p>`

TAG = ???

* samp
* code
* pre
* out
* output
