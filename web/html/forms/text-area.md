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

links:
  - '[HTML <textarea> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea){documentation}'

---
# Text Area
---
## Content

The HTML `<textarea>` element is used to represent a multi-line input text area.

Simple example:
```html
<textarea
  name="textbox">
</textarea>
```

![simple-textarea](https://img.enkipro.com/37719384b3886ac680cbe2923df84598.png)


[View CodePen](https://codepen.io/enkidevs/pen/MBJjjz)

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
```html
<textarea
   name="textarea" rows="10"
   cols="30"
   placeholder="Enter text here">
</textarea>
```

![simple-textarea-attributes](https://img.enkipro.com/220982fbfdc4e10a71c73e9dd998b001.png)

[View CodePen](https://codepen.io/enkidevs/pen/ajpmme)

In the example above, `rows="10"` specifies the number of visible text lines for the control,  `cols="30"` specifies the average characters width and the `placeholder` attribute presents a hint which disappears after the user types something and reappears if there is no input.

---
## Practice

Write the form code that creates a multi-line input for text.

```
<??? 
  ???="???">
<???>
```

* textarea
* name
* textbox
* /textarea
* form
* input
* /input

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
