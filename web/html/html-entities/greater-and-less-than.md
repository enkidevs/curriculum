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

---
# Greater and Less Than
---
## Content

In HTML the browser assumes *<* and *>* always represent the start and end of an HTML tag. If we need to display the literal characters, *<* or *>*, we must use character entities.

You can use either an HTML entity *name* or an HTML entity *number*

HTML Entity Number
```
&#60;       &#62;
```
Result:
```
 <            >
```
HTML Entity Name
```
&lt;        &gt;
```
Result:
```
 <           >
```

Example:
```
<p>5 &gt; 3 </p>

```
Result:
```
5 > 3
```

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

