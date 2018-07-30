---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.markup-text.2: 10
  web.layout-html.4: 10

aspects:
  - introduction
  - workout
  - deep
  
links:
  - '[CodePen: pre & code Elements](https://codepen.io/enkidevs/pen/BVqPgZ){code}'

---
# pre - Preformatted Text
---
## Content

The HTML `<pre>`, or the **Pre-formatted Text** element, is used to display text exactly as it is within the HTML file. This means that text and all the spaces within the `<pre>` element will all be displayed in the space exactly. This is useful since HTML typically ignores multiple spaces. 

Example:
```html
<pre>.enki-highlight {
  color: #F46C43;
}
</pre>
```

Pre-formatted Result:

![pre-element](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2292%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2292%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Courier%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2232%22%3E%20.enki-highlight%20%7B%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2251%22%3E%20color%3A%20%23F46C43%3B%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2270%22%3E%20%7D%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

In the example above, the `<pre>` element is used to display some sample CSS code within the HTML with the appropriate spaces, which otherwise would be taken out by the browser. As you can see, the text within the `<pre>` element is set to display as a monospace font by default.

Using the `<pre>` and `<code>` elements together with a little CSS can really improve the presentation of your code within your web pages.

![pre-element-styled](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22122%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22122%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23F4F5F6%22%20d%3D%22M20%2020h271v82H20z%22%2F%3E%3Cpath%20fill%3D%22%239B4DCB%22%20d%3D%22M20%2020h3v82h-3z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Courier%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2240%22%20y%3D%2248%22%3E%20.enki-highlight%20%7B%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2240%22%20y%3D%2267%22%3E%20color%3A%20%23F46C43%3B%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2240%22%20y%3D%2286%22%3E%20%7D%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/BVqPgZ)-->

Since all spaces within the `<pre>` element are used, pay attention to adding any unnecessary spaces or hard returns after the opening tag. 

**Bad Example:** An extra hard return will display at the top of the code sample in the HTML page:

```
<pre>
 .enki-highlight {
  color: #F46C43;
 }
</pre>
```

**Good Example:** The displayed code is written immediately after the opening tag:

```
<pre>.enki-highlight {
  color: #F46C43;
 }
</pre>
```

---
## Practice

Which is true about the `<pre>` element?

???

* Shows the content exactly as it is formatted, including whitespace and line breaks
* produces an inline element
* represents user input
* represents sample output
* whitespace is removed

---
## Revision

What HTML element is used to display the text exactly as it is laid out within the element?

???

* pre
* samp
* code
* element
* white-space
* standard
* output

---
## Quiz

### How much do you know about text formatting with HTML elements?

Which HTML element is best used for "???" to properly display this code within a webpage:  

`<???>`
.alert {
  color:red;
}
`<???>`

* pre
* code
* perf
* samp
