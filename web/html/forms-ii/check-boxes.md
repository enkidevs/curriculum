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
  - '[HTML <checkbox> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/checkbox){documentation}'

---
# Check Boxes
---
## Content

The HTML `checkbox` type of input forms are square boxes that can be ticked or checked to be activated. They allow you to either select none, a single value, or more multiple values at once.

```html
<form>
    <input type="checkbox"
      id="box1"
      name="report"
      value="data1">
    <label
      for="box1">
      Checkbox #1
    </label>
      <input type="checkbox"
      id="box2"
      name="report"
      value="data2">
    <label
      for="box2">
      Checkbox #2
    </label>
</form>
```

![checkbox-both](https://img.enkipro.com/902c58342b0b1451592cb6e25e01a851.png)

**Note:** A similar input form type is `radio`. This input type is also clickable, however, unlike with checkboxes, if multiple options are present, the radio buttons can have only one option checked at a time.

Example with one checkbox:
```html
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

![checkbox-report-a-problem](https://img.enkipro.com/d1e32da2311ae49336836fbdfc662c67.png)

[View CodePen](https://codepen.io/enkidevs/pen/qyRaXO)

In the example above, the 'name' & 'value' attributes work as a pair in keeping track of the data sent and are both important to use with checkboxes. In this case, the name/value pair would be `report=bankaccount`. This is something the client never sees as the data is sent upon submission of the form.

If no checkbox is ticked/checked upon form submission, the name/value pair is `value=unchecked` and the value won't be submitted to the server at all.

If the `value` attribute is obmitted, then the default value for the checkbox would be `on` and upon submission, the name/value pair would be `report=on`.

---
## Practice

Write the form code that creates a checkbox.

```html
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
