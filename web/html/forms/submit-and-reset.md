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

Example reset:
```
<input
  type="reset"
  value="Reset data">
```

The `value` of either type is represented with a `DOMString`. This is something the client never sees, but the server uses this `value` along with the `name` value as a `name/value` pair upon the submission of the form. In this case, the `name/value` pair would be `text=userinput`. On the other hand, if no value is specified, the buttons will have a default value set by the browser.

The `type="submit"` button is used to submit a form.

Example submit and reset with one text field:
```
<form>
  <div>
    <label
      for="name">Name:
    </label>
    <input
      id="name" type="text"
      name="text">
  </div>
  <div>
    <input
      type="submit"
      value="Next">
  </div>
  <input
    type="reset"
    value="Reset name">
</form>
```

Furthermore, you can add shortcuts both to the `submit` and `reset` buttons via the `accesskey` attribute:
Previous example with shortcuts added:
```
<form>
  <div>
    <label
      for="name">Name:
    </label>
    <input
      id="name" type="text"
      name="text">
  </div>
  <div>
    <input
      type="submit"
      value="Next"
      accesskey="s">
  </div>
  <input
    type="reset"
    value="Reset name"
    accesskey="r">
</form>
```

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
