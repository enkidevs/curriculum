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
  - '[CodePen: Greater and Less Than in HTML](https://codepen.io/enkidevs/pen/vagygR){code}'
    
---
# Greater and Less Than
---
## Content

In HTML the browser assumes *<* and *>* always represent the start and end of an HTML tag. If you need to display the literal characters, *<* or *>*, you must use character entities.

You can use either an HTML entity *name* or an HTML entity *number*

HTML Entity Number:
```
&#60; tag &#62;
```
Result:

![tag](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2254%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2254%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2233%22%3E%26lt%3B%20tag%20%26gt%3B%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

HTML Entity Name:
```
&lt; tag &gt;
```
Result:
![tag](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2254%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2254%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2233%22%3E%26lt%3B%20tag%20%26gt%3B%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Example:
```
<p>5 &gt; 3 </p>

```
Result:
![tag-math](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2254%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2254%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2233%22%3E5%20%26gt%3B%203%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/vagygR)-->


---
## Practice

Write the code that will display this HTML tag properly: "`<p>` is an HTML paragraph tag."

???p??? is an HTML paragraph tag.

* `&lt;`
* `&gt;`
* `&rt;`
* `<`
* `>`

---
## Revision

In HTML the browser always assumes `<` and `>` represent the start and end of an HTML tag. What is one of the correct ways of displaying these two characters?

???

* Using their character entity name(`&lt;`,`&gt;`)
* Using the designated (<) and (>) buttons on the keyboard
* Enclosing the characters in single quotation '<','>'
* Escape them like so: `\<` and `\>`

---
## Quiz

### How much do you know about HTML character entities?

What will be displayed in this line of code:
`<p> 1 &lt; 3 &lt;/p&gt;`

* `1 < 3 </p>`
* `<p> 1 < 3 &lt;/p&gt;`
* `&lt;p&gt; 1 < 3 &lt;/p&gt;`
* `<p> 1 < 3 </p>`

