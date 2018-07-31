---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.0: 10
  web.layout-html.2: 10

aspects:
  - introduction
  - workout

links:
  - '[CodePen: Form: Simple Textarea](https://codepen.io/enkidevs/pen/MBJjjz){code}'
  - '[CodePen: Form Textarea w/ Attributes](https://codepen.io/enkidevs/pen/ajpmme){code}'
  - '[MDN docs for textarea](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea){website}'

---
# Text Area
---
## Content

The HTML `<textarea>` element is used to represent a multi-line input text area.

Simple example:
```
<textarea
  name="textbox">
</textarea>
```

![simple-textarea](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2269%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2269%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23999%22%20d%3D%22M20.5%2015.5h142v38h-142z%22%2F%3E%3Cpath%20stroke%3D%22%23666%22%20stroke-linecap%3D%22square%22%20d%3D%22M153.5%2050.5l6-6%22%2F%3E%3Cpath%20fill%3D%22%23D8D8D8%22%20stroke%3D%22%23979797%22%20d%3D%22M153.5%2050.5l6-6%22%2F%3E%3Cpath%20stroke%3D%22%23666%22%20stroke-linecap%3D%22square%22%20d%3D%22M157%2050.76777L158.76777%2049%22%2F%3E%3Cpath%20fill%3D%22%23D8D8D8%22%20stroke%3D%22%23979797%22%20d%3D%22M157%2050.76777L158.76777%2049%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)


<!--[View CodePen](https://codepen.io/enkidevs/pen/MBJjjz)-->

The `<textarea>` element has many attributes. Some of the more common are:

  - `autocomplete` enables autocomplete for text area
  - `autofocus` sets focus on text area upon page load
  - `cols`  
  - `maxlength`
  - `minlength`
  - `readonly`
  - `placeholder`
  - `rows`

Example with attributes:
```
<textarea
   name="textarea" rows="10"
   cols="30"
   placeholder="Enter text here">
</textarea>
```

![simple-textarea-attributes](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22165%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22121%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Crect%20width%3D%22320%22%20height%3D%22121%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Crect%20width%3D%22320%22%20height%3D%22165%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23999%22%20d%3D%22M20.5%2015.5h142v135h-142z%22%2F%3E%3Ctext%20fill%3D%22%23757575%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2211%22%3E%3Ctspan%20x%3D%2226%22%20y%3D%2229%22%3EEnter%20text%20here%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23666%22%20stroke-linecap%3D%22square%22%20d%3D%22M152.5%20146.5l6-6m-2.5%206.26777L157.76777%20145%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/ajpmme)-->

In the example above, `rows="10"` specifies the number of visible text lines for the control,  `cols="30"` specifies the average characters width and the `placeholder` attribute presents a hint which disappears after the user types something and reappears if there is no input.

---
## Practice

Write the form code that creates a multi-line input for text.

<??? ???="???">

* textarea
* name
* textbox
* form
* input
* textarea

---
## Revision

Which element creates a multi-line input field that is 10 lines of text in height and 50 average characters in width.

???

* ` <textarea name="message" rows="10" cols="30"></textarea>`
* ` <textarea name="message" rows="30" cols="10"></textarea>`
* ` <input type="textarea" name="message" rows="10" cols="30">`
* ` <input name="message" rows="10" cols="30"></input>`


---
## Quiz

### How much do you know about text fields?

In this code, how are rows and columns measured?

`<textarea name="message" rows="20" cols="50"></textarea>`

Rows: ???
Columns: ???

* Lines of Text
* Average character width
* able Column
* Table Row
* Unicode code points
* Number of characters
