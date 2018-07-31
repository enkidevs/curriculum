---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.2: 10

aspects:
  - introduction
  - workout

links:
  - '[CodePen: Form Submit & Rest](https://codepen.io/enkidevs/pen/QBdKym){code}'
  - '[CodePen: Form Submit & Reset](https://codepen.io/enkidevs/pen/ZjLpWm){code}'
  - '[CodePen: Form with access keys](https://codepen.io/enkidevs/pen/xJgEVv){code}'
  - '[MDN docs for reset](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/reset){website}'
  - '[MDN docs for submit](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/submit){website}'

---
# Submit & Reset
---
## Content

The HTML inputs of type `submit` and `reset` are rendered as buttons with `onClick` events. They both send a value to the server when clicked. The `type="submit` button sends the data from the form to the server. Whereas the `type="reset"` resets the data in the form to it's initial or default state.

Example submit:
```
<input
  type="submit"
  value="Submit">
```

![form-submit-btn](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2257%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2257%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%2232%22%3ESubmit%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2250%22%20height%3D%2217%22%20x%3D%2219%22%20y%3D%2220%22%20stroke%3D%22%23D9D9D9%22%20rx%3D%224%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)


Example reset:
```
<input
  type="reset"
  value="Reset data">
```

![form-reset-btn](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2257%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2257%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%2232%22%3EReset%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2246%22%20height%3D%2217%22%20x%3D%2219%22%20y%3D%2220%22%20stroke%3D%22%23D9D9D9%22%20rx%3D%224%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/QBdKym)-->

The `value` of either type is represented with a `DOMString`. This is something the client never sees, but the server uses this `value` along with the `name` value as a `name/value` pair upon the submission of the form. In this case, the `name/value` pair would be `text=userinput`. On the other hand, if no value is specified, the buttons will have a default value set by the browser.

The `type="submit"` button is used to submit a form.

Example submit and reset with one text field:
```
<form>
    <label
      for="name">Name:
    </label>
    <input
      id="name" type="text"
      name="text">
    <input
      type="submit"
      value="Next">
  <input
    type="reset"
    value="Reset name">
</form>
```

#### form-submit-reset

<!--[View CodePen](https://codepen.io/enkidevs/pen/ZjLpWm)-->

Furthermore, you can add shortcuts both to the `submit` and `reset` buttons via the `accesskey` attribute:

Previous example with shortcuts added:
```
<form>
    <label
      for="name">Name:
    </label>
    <input
      id="name" type="text"
      name="text">
    <input
      type="submit"
      value="Next"
      accesskey="s">
  <input
    type="reset"
    value="Reset name"
    accesskey="r">
</form>
```

<!--[View CodePen](https://codepen.io/enkidevs/pen/xJgEVv)-->

In this example, on a Mac, pressing `Control`+`Option`+`S`/`R` triggers the `Next`/`Reset name` buttons respectively, while on Windows the shortcut is `Alt`+`S`/`R`.

Nevertheless, even though we provide the access key, there is no way for the user to know what the `accesskey` shortcut is without giving them a tooltip or a hint with the information somewhere on the page.

---
## Practice

Write the form code that creates a reset button.

`<??? ???="???" ???="Reset">`

Which line of code defines the button that sends the data when clicked?

???

* input
* type
* reset
* value
* `<input type="submit" value="Send">`
* send
* data
* `<submit value="Send">`
* `<input submit="Send">`
* `<input value="submit" type="Send">`

---
## Revision

Write the form code that creates a submit button.

`<??? ???="???" ???="Send">`

* input
* type
* submit
* value
* send
* data

---
## Quiz

### How much do you know about buttons within forms?

If values are not assigned to reset and submit buttons stating what text the buttons should display, what happens?

```
<input type="submit">
<input type="reset">
```

* "Submit" & "Reset" text is added by default.
* Nothing is added to the HTML page.
* They display as buttons without text.
* The page breaks
