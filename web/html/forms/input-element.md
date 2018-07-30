---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.0: 10

aspects:
  - introduction
  - workout

links:
  - '[CodePen: Form Simple Input](https://codepen.io/enkidevs/pen/pZzGPJ){code}'
  - '[MDN docs and examples for forms](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form){website}'

---
# Input Element
---
## Content

The `<input>` element is the most basic, and flexible form element. Interactive `<input>` elements like text fields, radio buttons, and checkboxes, must be placed within an `<form>` HTML element to collect user input.

Here's an example of a raw text field:
```
<form>
 First Name:
 <input
  type="text"
  name="firstname">
  
 Last Name:
 <input
  type="text"
  name="lastname">
</form>
```

![form-input-1](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22115%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22115%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3EFirst%20Name%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2271%22%3ELast%20Name%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M20.5%2075.5h130v18h-130zm0-40h130v18h-130z%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Example radio buttons:
```
<form>
  <input
    type="radio"
    name="age"
    value="0-18"
    checked>0-18<br>
  <input
    type="radio"
    name="age"
    value="19-25">19-25<br>
  <input
    type="radio"
    name="age"
    value="26-35">26-35<br>
  <input
    type="radio"
    name="age"
    value="36+">36+
</form>
```

![simple-radio-buttons](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22111%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22111%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214.5%22%3E%3Ctspan%20x%3D%2236%22%20y%3D%2231%22%3E0-18%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214.5%22%3E%3Ctspan%20x%3D%2236%22%20y%3D%2250%22%3E19-25%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214.5%22%3E%3Ctspan%20x%3D%2236%22%20y%3D%2269%22%3E26-35%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214.5%22%3E%3Ctspan%20x%3D%2236%22%20y%3D%2288%22%3E36%2B%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20cx%3D%2227%22%20cy%3D%2227%22%20r%3D%227%22%20fill%3D%22%233B99FC%22%20stroke%3D%22%233B99FC%22%2F%3E%3Ccircle%20cx%3D%2227%22%20cy%3D%2227%22%20r%3D%222.5%22%20fill%3D%22%23FFF%22%2F%3E%3Ccircle%20cx%3D%2227%22%20cy%3D%2246%22%20r%3D%227%22%20fill%3D%22%23FFF%22%20stroke%3D%22%239E9E9E%22%2F%3E%3Ccircle%20cx%3D%2227%22%20cy%3D%2265%22%20r%3D%227%22%20fill%3D%22%23FFF%22%20stroke%3D%22%239E9E9E%22%2F%3E%3Ccircle%20cx%3D%2227%22%20cy%3D%2284%22%20r%3D%227%22%20fill%3D%22%23FFF%22%20stroke%3D%22%239E9E9E%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Example submit:
```
<form>
 Full name:<br>
 <input
  type="text"
  name="fullname"><br>
 <input
  type="submit"
  value="Submit">
</form>
```

![simple-submit-button](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2293%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2293%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2226%22%20y%3D%2268%22%3ESubmit%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2252%22%20height%3D%2217%22%20x%3D%2219.5%22%20y%3D%2255.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3EFull%20Name%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M20.5%2036.5h100v16h-100z%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/pZzGPJ)-->

As you can see, the `input` element is responsible for many of the form controls on the web that you are familiar with.

---
## Practice

Which input type creates a HTML form’s input text field?

`<input type="???">`

* text
* string
* default
* _blank


---
## Revision

Create a text field to collect a user's name in a form:

`<input type="???" name="user_name">`

* text
* number
* field
* user_name
* name
* null
