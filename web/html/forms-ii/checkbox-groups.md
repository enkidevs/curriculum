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
  - '[](){}'

---
# Checkbox Groups
---
## Content

The HTML input forms of type `checkbox` are square boxes that can be ticked or checked to be activated. They allow you to either select none, a single or more values at once.

**Note: A similar input form type is `radio`. This input type is also clickable, however, unlike with checkboxes, if multiple options are present, the radio buttons can have only one option checked at a time.**

Example with multiple checkboxes:
```
<form>
  <legend>
    Choose favorite music genre/s
  </legend>
    <div>
     <input
        type="checkbox" id="rock"
        name="genre" value="rock">
     <label
        for="rock">Rock
     </label>
    </div>
    <div>
     <input
        type="checkbox" id="country"
        name="genre" value="country">
     <label
        for="country">Country
     </label>
    </div>
    <div>
      <input
          type="checkbox" id="jazz"
          name="genre" value="jazz">
      <label
          for="jazz">Jazz
      </label>
    </div>
    <div>
      <input
        type="checkbox" id="house"
        name="genre" value="house">
      <label
        for="house">House
      </label>
    </div>
    <div>
      <input
        type="checkbox" id="blues"
        name="genre" value="blues">
      <label
        for="blues">Blues
      </label>
    </div>
    <div>
      <input
          type="checkbox" id="reggae"
          name="genre" value="reggae">
      <label
          for="reggae">Reggae
      </label>
    </div>
    <div>
      <input
          type="checkbox" id="folk"
          name="genre" value="folk">
      <label
          for="folk">Folk
      </label>
    </div>
    <div>
      <button
        type="submit">Submit
      </button>
    </div>
</form>
```

In the example above, we have 7 checkboxes, each with the same name - `genre` and each with a unique value that is used to identify each checkbox. Also, each button has an id. This id is used with the `<label>` element's `for` attribute to link the label to the checkbox.

**Note: By adding the label, we allow the user to have a larger clickable area for the checkboxes. That is, if the user presses anywhere in the `folk` label, that label's checkbox will be selected. This option is really useful as it makes it easier to select a value both for big and small screen sizes.**

Additionally, the value of each checkbox is a `DOMString`. This is something the client never sees, but the server uses this `value` along with the checkbox's `name` value as a name/value pair upon the submission of the form. For instance, if the user picks `folk` and `reggae` the name/value pairs would be `genre=folk&genre=reggae`.

When this data is submitted and sent to the server, it can be captured as an array of related values.

Handling multiple checkboxes with a single server variable: '[Check out Here](https://stackoverflow.com/questions/18745456/handle-multiple-checkboxes-with-a-single-serverside-variable)'


Furthermore, you can add a `checked` attribute to make a checkbox checked by default. Additionally, if the answers you provided are not enough, you can add an `other` checkbox with a `textfield` for the user to type an answer themselves.

Example:
```
<form>
 <div>
    <input
       type="checkbox" id="folk"
       name="genre" value="folk" checked>
    <label
       for="folk">Folk
    </label>
 </div>
 <div>
    <input
       type="checkbox" id="other"
       name="genre" value="other">
    <label
       for="other">Other
    </label>
    <input
       type="text" id="otherValue"
       name="other">
   </div>
</form>
```

Along with the `checked` and `unchecked` state, checkboxes have a third state called `indeterminate`. In this state, you can't tell if the checkbox is toggled on or off. Checkboxes in this state have a horizontal line in the box. The most common use for this is when a checkbox option has multiple checkbox sub-options within it. If all sub-options are selected, then the parent checkbox is also selected. On the other hand, if any of the sub-options have a different state from one another the parent checkbox is in the indeterminate state.

This `indeterminate` state is shown with CSS styling and CSS Tricks. More on this: '[Indeterminate state checkboxes](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/checkbox)'


---
## Practice

Checkboxes have three possible states, these are `checked`, `unchecked` and:

???

* `indeterminate`
* `on`
* `off`
* `intermidiate`
* There is no third state

---
## Revision

Create a checkbox group with two checkboxes and larger clickable area

 ```
<???>
  <legend>
    Choose favorite meal
  </legend>
    <div>
     <???
        type="???" id="soup"
        name="meal" value="soup" ???>
     <???
        for="soup">Soup
     <???>
    </div>
    <div>
     <???
        type="???" id="burgers"
        name="meal" value="burgers">
     <???
        for="burgers">Burgers
     </???>
    </div
<???>
```

* form
* input
* checkbox
* checked
* label
* /label
* input
* checkbox
* label
* /label
* /form
* squarebox
* /squarebox
* button
* /button
* userInput

---
## Quiz

### How much do you know about checkboxes?

How are checkboxes styled?

???

* With CSS
* Can't be styled
* With proper HTML
* Using the `style` menu each browser provides for HTML editting
