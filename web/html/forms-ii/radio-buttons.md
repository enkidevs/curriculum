---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.5: 10

aspects:
  - introduction
  - workout

links:
  - '[CodePen: Radio Button](https://codepen.io/enkidevs/pen/QBdKZJ){code}'
  - '[MDN docs for radio buttons](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/radio){website}'

---
# Radio Buttons
---
## Content

The HTML input form of type `radio` is used to create radio buttons, which are usually held in radio groups. These buttons are rendered as small empty circles that fill in upon selection.

Unlike checkboxes, `radio` buttons can have only one element selected per group. When one button is selected, any button selected before it will immediately be deselected. Of course, this only applies to the radio group where the `radio` button was selected.

**Note: Radio buttons are called `radio` buttons because they look and operate like old-fashioned radios. When a button is pressed, any button pressed before it is pulled out, and you can't have 2 buttons pressed at the same time.**

When creating radio buttons, each button within the same radio group is given the same `name`.

Example:
```
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

![radio-empty](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20style%3D%22width%3A100%25%22%20viewBox%3D%220%200%20320%20110%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22110%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2230%22%3EPlease%20select%20your%20gender%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214.5%22%3E%3Ctspan%20x%3D%2242%22%20y%3D%2264%22%3EMale%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%2285%22%3ESubmit%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214.5%22%3E%3Ctspan%20x%3D%2299%22%20y%3D%2264%22%3EFemale%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20cx%3D%2229%22%20cy%3D%2261%22%20r%3D%227%22%20fill%3D%22%23FFF%22%20stroke%3D%22%239E9E9E%22%2F%3E%3Ccircle%20cx%3D%2229%22%20cy%3D%2261%22%20r%3D%227%22%20fill%3D%22%23FFF%22%20stroke%3D%22%239E9E9E%22%2F%3E%3Ccircle%20cx%3D%2288%22%20cy%3D%2261%22%20r%3D%227%22%20fill%3D%22%23FFF%22%20stroke%3D%22%239E9E9E%22%2F%3E%3Ccircle%20cx%3D%22160%22%20cy%3D%2261%22%20r%3D%227%22%20fill%3D%22%23FFF%22%20stroke%3D%22%239E9E9E%22%2F%3E%3Crect%20width%3D%2252%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%2272.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214.5%22%3E%3Ctspan%20x%3D%22173%22%20y%3D%2264%22%3EOther%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/QBdKZJ)-->

In the example above, we have 3 `radio` buttons, each with the same name - `gender` and each with a unique `value` that is used to identify each button. Also, each button has an `id`. This `id` is used with the `<label>` element's `for` attribute to link the label to the radio button.

**Note: By adding the label, we allow the user to have a larger clickable area for the radio button. That is, if the user presses anywhere in the `gender1` label, that label's button will be selected. This option is really useful as it makes it easier to click both for big and small screen sizes.**

Once a user presses a button, and submits the result, the form's data is sent in a `name/value` pair. For instance, if they pick `female`, the form's data will include the line `gender=female` upon submission.

On the other hand, if no value is specified, and the user selects the same button, the result will be sent in the form of `gender=on`, and since this isn't really helpful, you should always include the `value` attribute. Similarly, if no button is selected, the form won't submit at all, since it has no value to report.

Additionally, if you want your form with radio buttons to have a default value, you should add the `check` attribute.

Same example with `checked` added:
```
<form>
 <p>
   Please select your gender:
 </p>
  <div>
   <input
      type="radio" id="gender1"
      name="gender" value="male" checked>
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

![radio-selected](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20style%3D%22width%3A100%25%22%20viewBox%3D%220%200%20320%20110%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22110%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2230%22%3EPlease%20select%20your%20gender%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214.5%22%3E%3Ctspan%20x%3D%2242%22%20y%3D%2264%22%3EMale%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%2285%22%3ESubmit%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214.5%22%3E%3Ctspan%20x%3D%2299%22%20y%3D%2264%22%3EFemale%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20cx%3D%2229%22%20cy%3D%2261%22%20r%3D%227%22%20fill%3D%22%23FFF%22%20stroke%3D%22%239E9E9E%22%2F%3E%3Ccircle%20cx%3D%2229%22%20cy%3D%2261%22%20r%3D%227%22%20fill%3D%22%233B99FC%22%20stroke%3D%22%233B99FC%22%2F%3E%3Ccircle%20cx%3D%2229%22%20cy%3D%2261%22%20r%3D%222.5%22%20fill%3D%22%23FFF%22%2F%3E%3Ccircle%20cx%3D%2288%22%20cy%3D%2261%22%20r%3D%227%22%20fill%3D%22%23FFF%22%20stroke%3D%22%239E9E9E%22%2F%3E%3Ccircle%20cx%3D%22160%22%20cy%3D%2261%22%20r%3D%227%22%20fill%3D%22%23FFF%22%20stroke%3D%22%239E9E9E%22%2F%3E%3Crect%20width%3D%2252%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%2272.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214.5%22%3E%3Ctspan%20x%3D%22173%22%20y%3D%2264%22%3EOther%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Furthermore, you can also have as many radio groups as you require per web page or document. The only thing you need to do is give each radio group a unique `name`.

You can also style your radio groups with CSS. For instance, you can modify the colors of the radio buttons, add a fade-out effect when one button is selected, etc.

---
## Practice

Write the form code that creates a radio button.

`<??? ???="???" name="topic" value="item"> Item <???>`

* input
* type
* radio
* /input
* name
* value

---
## Revision

Which line creates an HTML form’s radio buttons?

???

* `<input type="radio" name="topic" value="item"> Item </input>`
* `<radio name="topic" value="item"> Item </radio>`
* `<input radio="topic" value="item"> Item </input>`
* `<input type="radio" value="topic" name="item"> Item </input>`


---
## Quiz

### Test your knowledge on input `type="radio"` buttons?

Which statement is true?

* Radio buttons within one radio group can have only one option selected at a time.
* Radio buttons within one radio group can have many options selected at a time.
* You can have multiple radio button groups with the same `name` in a webpage.
* Radio buttons can't work without applying CSS to them
