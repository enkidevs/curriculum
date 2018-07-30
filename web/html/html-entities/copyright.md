---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.markup-text.2: 10

aspects:
  - introduction
  - workout
  - deep
  
links:
  - '[CodePen: Copyright in HTML](https://codepen.io/enkidevs/pen/WKRooB){code}'
  
---
# Copyright
---
## Content

Some characters are not easily typed on the keyboard, like the Copyright (©) character.

To display the Copyright symbol, you can use either the HTML entity *number* or the entity *name*.

HTML Entity Number:
```
&#169;
```
Result:

![copyright](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2254%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2254%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2233%22%3E%C2%A9%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

HTML Entity Name:
```
&copy;
```
Result:

![copyright](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2254%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2254%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2233%22%3E%C2%A9%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Example:
```
<p>Copyright &copy;</p>
```
Result:

![copyright-year](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2254%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2254%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2233%22%3ECopyright%20%C2%A9%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/WKRooB)-->

When using the Copyright symbol in your HTML, it is a best practice to use the corresponding HTML entity vs. cutting and pasting the symbol. Because  even if the symbol renders ok on your browser, it may not render the same on everyone's browser.

---
## Practice

Why can using "&copy;" for a copyright symbol be easier to code?

???

* Because `©` isn't available on your keyboard.
* Typing `©` on your keyboard is easier than using `&copy;`.
* There is no good way to code the copyright symbol.
* `&copy;` is smaller in filesize, loading faster.

---
## Revision

What HTML character entity is used to insert a copyright symbol into a document?

???

* `&copy;`
* `@`
* `©`
* `&copyright`
* `@c`

---
## Quiz

### How much do you know about HTML character entities?

What does &copy; display in this line of code?

`<p>The symbol "&copy;" should be pretty easy to recognize.</p>`

* `©`
* `symbol`
* `&copy;`
* Copyright [current year]
