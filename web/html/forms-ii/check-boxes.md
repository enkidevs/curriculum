---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.4: 10

aspects:
  - introduction
  - workout

links:
  - '[MDN docs for checkboxes](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/checkbox){website}'

---
# Check Boxes
---
## Content

The HTML input forms of type `checkbox` are square boxes that can be ticked or checked to be activated. They allow you to either select none, a single or more values at once.

**Note: A similar input form type is `radio`. This input type is also clickable, however, unlike with checkboxes, if multiple options are present, the radio buttons can have only one option checked at a time.**

Example with one checkbox:
```
<form>
  <div>
    <input type="checkbox"
      id="reportProblem"
      name="report"
      value="bankaccount">
    <label
      for="reportProblem">
      Report a problem
    </label>
  </div>
  <div>
    <button type="submit">
      Report
    </button>
  </div>
</form>
```

In the example above, we have a `DOMString` as the value of the checkbox. This is something the client never sees, but the server uses this `value` along with the checkbox's `name` value as a name/value pair upon the submission of the form. In this case, the name/value pair would be `report=bankaccount`.

Furthermore, if you decide to omit the `value` attribute, the default value for the checkbox would be `on` and upon submission, the name/value pair would be `report=on`.

On the other hand, if no checkbox is ticked/checked upon form submission, the name/value pair is `value=unchecked` and the value won't be submitted to the server at all.


You can also include CSS to improve the styling.

---
## Practice

Write the form code that creates a checkbox.

```
<??? ???="???">
```

* input
* type
* checkbox
* check
* select

---
## Revision

Which line creates an HTML form’s checkbox?

???

* `<input type="checkbox">`
* `<input type="check">`
* `<form input="check">`
* `<form input="checkbox">`
