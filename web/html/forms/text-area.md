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

The `<textarea>` element has many attributes. Some of them:
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

In the example above, `rows="10"` specifies the number of visible text lines for the control,  `cols="30"` specifies the average characters width and the `placeholder` attribute presents a hint which disappears after the user types something and reappears if there is no input.

---
## Practice

Write the form code that creates a multi-line input for text.

```
<??? ???="???">
<???>
```

* `textarea`
* `name`
* `textbox`
* `/textarea`
* `form`
* `input`
* `textinput`
* `/textinput`
* `value`

---
## Revision

Which element creates a multi-line input field that is 10 lines of text in height and 30 average characters in width.

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
