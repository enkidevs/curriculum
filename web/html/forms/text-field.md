---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout

standards:
  web.html-forms.0: 10
  
links:
  - '[Codepen: Form Textfields Intro](https://codepen.io/enkidevs/pen/oMwXaB){code}'
  - '[Codepen: Form Size Attribute](https://codepen.io/enkidevs/pen/ajwOPd){code}'
  - '[MDN docs for text](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/text){website}'


---
# Text Field
---
## Content

The HTML input element of type `text` is used to create basic single line text fields.

Example:
```
<input type="text">
```

These text fields are useful for instance when you need single line inputs like for creating a new account.

Example new account:
```
<form>
  <div>
    <label
      for="name">First Name:
    </label>
    <input
      type="text" id="name" name="fname"
      placeholder="Enter First Name">
  </div>
  <div>
    <label
      for="lname">Last Name:
    </label>
    <input
      type="text" id="lname" name="lname"
      placeholder="Enter Last Name">
  </div>
  <div>
    <button>
      Submit
    </button>
  </div>
</form>
```

![form-single-inputs](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22136%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22136%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3EFirst%20Name%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2271%22%3ELast%20Name%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M20.5%2075.5h130v18h-130zm0-40h130v18h-130z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%22111%22%3ESubmit%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2252%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%2298.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%237E757E%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2213%22%3E%3Ctspan%20x%3D%2224%22%20y%3D%2250%22%3EFirst%20Name%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%237E757E%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2213%22%3E%3Ctspan%20x%3D%2224%22%20y%3D%2290%22%3ELast%20Name%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

**Note:** If you have a single line input whose value should contain a date, URL, or an email, you should provide a more suitable input type than `input="text"`.

Next, you can control the physical size of your input fields with the `size` attribute. The `size` attribute sets the width of the text field in terms of characters rather than pixels.

Example:
```
<input type="text" size="10" >
```

---
## Practice

Write the form code that creates a single line input for text.

```
<??? ???="???">
```

* input
* type
* text
* form
* text

---
## Revision

Which line creates a HTML form’s input text field?

???

* `<input type="text">`
* `<textfield type="input">`
* `<form input="textfield">`
* `<textinput type="text">`

---
## Quiz

### How much do you know about the HTML input `type="text"`?

What does the required attribute do in this code?

```
<form>
  <div>
    <label
      for="name">First Name:
    </label>
    <input
      type="text" id="name"
      name="name" required>
  </div>
  <div>
    <button>
      Submit
    </button>
  </div>
</form>
```

???

* Makes the form not submittable without a value
* Standard when creating any input type
* makes the text turn blue
* Makes the user type only text as input, no numbers allowed