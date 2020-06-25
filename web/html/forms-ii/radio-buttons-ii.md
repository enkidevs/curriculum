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
  - '[HTML Radio Button](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/radio){documentation}'

---
# Creating Radio Buttons
---
## Content

When creating radio buttons, each button within the same radio group is given the same `name`.

Example:
```html
<form>
 <p>
   Please select your gender:
 </p>
  <div>
   <input
      type="radio" id="gender1"
      name="gender" value="male">
   <label
      for="gender1">Male
   </label>

   <input
      type="radio" id="gender2"
      name="gender" value="female">
   <label
      for="gender2">Female
   </label>

   <input
      type="radio" id="gender3"
      name="gender" value="other">
   <label
      for="gender3">Other
   </label>
  </div>
  <div>
    <button
      type="submit">Submit
    </button>
  </div>
</form>
```

![radio-empty](https://img.enkipro.com/bb20ad9b34393a58aed6266ebef4144e.png)

[View CodePen](https://codepen.io/enkidevs/pen/QBdKZJ)

In the example above, we have 3 `radio` buttons, each with the same name - `gender` and each with a unique `value` that is used to identify each button. Also, each button has an `id`. This `id` is used with the `<label>` element's `for` attribute to link the label to the radio button.

**Note: By adding the label, we allow the user to have a larger clickable area for the radio button. That is, if the user presses anywhere in the `gender1` label, that label's button will be selected. This option is really useful as it makes it easier to click both for big and small screen sizes.**

Once a user presses a button, and submits the result, the form's data is sent in a `name/value` pair. For instance, if they pick `female`, the form's data will include the line `gender=female` upon submission.

On the other hand, if no value is specified, and the user selects the same button, the result will be sent in the form of `gender=on`, and since this isn't really helpful, you should always include the `value` attribute. Similarly, if no button is selected, the form won't submit at all, since it has no value to report.

---
## Practice

Write the form code that creates a radio button.

```html
<??? ???="???"
     name="topic"
     value="item">
```

* input
* type
* radio
* name
* value

---
## Revision

Which line creates an HTML form’s radio buttons?

???

* `<input type="radio" name="topic" value="item">`
* `<radio name="topic" value="item">`
* `<input radio="topic" value="item">`
* `<input type="radio" value="topic" name="item">`

---
## Quiz

### Test your knowledge on input `type="radio"` buttons?

Which statement is true?

* Radio buttons within one radio group can have only one option selected at a time.
* Radio buttons within one radio group can have many options selected at a time.
* You can have multiple radio button groups with the same `name` in a webpage.
* Radio buttons can't work without applying CSS to them
