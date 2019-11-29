---

author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout
  - deep

links:

---
# Greater and Less Than
---
## Content

In HTML the browser assumes *<* and *>* always represent the start and end of an HTML tag. If you need to display the literal characters, *<* or *>*, you must use character entities.

You can use either an HTML entity *name* or an HTML entity *number*

HTML Entity Number:
```html
&#60; tag &#62;
```
Result:

![tag](https://img.enkipro.com/1ff33fc1f071adeb0b7af15a7af9979b.png)

HTML Entity Name:
```html
&lt; tag &gt;
```
Result:

![tag](https://img.enkipro.com/1ff33fc1f071adeb0b7af15a7af9979b.png)

Example:
```html
<p>5 &gt; 3 </p>

```
Result:
![tag-math](https://img.enkipro.com/1638c6d32ce5016de97ac28f507315d9.png)

[View CodePen](https://codepen.io/enkidevs/pen/vagygR)


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
