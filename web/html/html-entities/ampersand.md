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
  - '[CodePen: & in HTML](https://codepen.io/enkidevs/pen/JBEbbN){code}'

---

# Ampersand

---
## Content

Some characters in HTML are specially reserved and can only be displayed within a web page by replacing them with special character entities.

An ampersand or the "and" symbol is one of those reserved characters.

To display the ampersand symbol, you can use either the HTML entity *number* or the entity *name*.

HTML Entity Number:
```
&#38;
```
Result:

![ampersand](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2254%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2254%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2233%22%3E%26amp%3B%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

HTML Entity Name:
```
&amp;
```
Result:

![ampersand](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2254%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2254%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2233%22%3E%26amp%3B%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Example:
```
<p>Get AT&amp;T free first 3 months!</p>
```
Result:

![ampersand-att](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2254%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2254%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2233%22%3EGet%20AT%26amp%3BT%20free%20first%203%20months!%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/JBEbbN)-->

Character entities are case sensitive and are also used to display characters not present on the keyboard.

---
## Practice

What does the "&amp;" character entity display in this line of code?

`<p>The symbol "&amp;" should be pretty easy to recognize.</p>`

???

* `&`
* `*`
* `'`
* `^`
* `@`

---
## Revision

What HTML character entity is used to insert an ampersand symbol ("&")?

???

* `&amp;`
* `&&;`
* `&current;`
* `&;`
* `&ampersand;

---
## Quiz

### How much do you know about HTML character entities?

If you have a webpage called “black&white”, what character entity is best to use in the following URL:

`<a href="?page=black???white&action=view">Link to B/W</a>`

* `&amp;`
* `&`
* `%20`
* `&and`
* `%a2`
