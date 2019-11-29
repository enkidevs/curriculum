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
  - '[StackOverflow: Multiple Checkboxes](https://stackoverflow.com/questions/18745456/handle-multiple-checkboxes-with-a-single-serverside-variable){discussion}'


---
# Checkbox Groups
---
## Content

The HTML input forms of type `checkbox` are square boxes that can be ticked or checked to be activated. They allow you to either select none, a single or more values at once.

**Note:** A similar input form type is `radio`. This input type is also clickable, however, unlike with checkboxes, if multiple options are present, the radio buttons can have only one option checked at a time.

Example with multiple checkboxes:
```html
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

![checkbox-music](https://img.enkipro.com/f305a9c6969317d79b37bf45980bf612.png)

[View CodePen](https://codepen.io/enkidevs/pen/qyRaPO)

In the example above, we have 7 checkboxes, each with the same name - `genre` and each with a unique value that is used to identify each checkbox. Also, each button has an id. This id is used with the `<label>` element's `for` attribute to link the label to the checkbox.

**Note: By adding the label, we allow the user to have a larger clickable area for the checkboxes. That is, if the user presses anywhere in the `folk` label, that label's checkbox will be selected. This option is really useful as it makes it easier to select a value both for big and small screen sizes.**

The 'name' & 'value' attributes work as a pair in keeping track of the data sent and are both important to use with checkboxes. For instance, if the user picks `folk` and `reggae` the name/value pairs would be `genre=folk&genre=reggae`. This is something the client never sees as the data is sent upon submission of the form.

When this data is submitted and sent to the server, it can be captured as an array of related values.

<!--Handling multiple checkboxes with a single server variable: '[Check out Here](https://stackoverflow.com/questions/18745456/handle-multiple-checkboxes-with-a-single-serverside-variable)'-->

Furthermore, you can add a `checked` attribute to make a checkbox checked by default. Additionally, if the answers you provided are not enough, you can add an `other` checkbox with a `textfield` for the user to type an answer themselves.

Example:
```html
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

![checkbox-folk](https://img.enkipro.com/93a7f957c9bc0528f82918e2a8a6c2d7.png)

[View CodePen](https://codepen.io/enkidevs/pen/BPpLYY)0

Along with the `checked` and `unchecked` state, checkboxes have a third state called `indeterminate`. In this state, you can't tell if the checkbox is toggled on or off. Checkboxes in this state have a horizontal line in the box. The most common use for this is when a checkbox option has multiple checkbox sub-options within it. If all sub-options are selected, then the parent checkbox is also selected. On the other hand, if any of the sub-options have a different state from one another the parent checkbox is in the indeterminate state.

![checkbox-indeterminate](https://img.enkipro.com/4243d6c40fc35f912a8632e94e00bbcd.png)

<!--This `indeterminate` state is shown with CSS styling and CSS Tricks. More on this: '[Indeterminate state checkboxes](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/checkbox)'-->


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


 ```html
<tagA>
  <legend>
    Choose favorite meal
  </legend>
    <div>
     <tagB
        type="tagC" id="soup"
        name="meal" value="soup" tagD>
     <tagE
        for="soup">Soup
     </tagE>
    </div>
    <div>
     <tagB
        type="tagC" id="burgers"
        name="meal" value="burgers">
     <tagE
        for="burgers">Burgers
     </tagE>
    </div
</tagA>
```
tagA: ???
tagB: ???
tagC: ???
tagD: ???
tagE: ???

* form
* input
* checkbox
* checked
* label
* squarebox
* button
* userInput
* checkedbox

---
## Quiz

### How much do you know about checkboxes?

How are checkboxes styled?

???

* With CSS
* Can't be styled
* With proper HTML
* Using the `style` menu each browser provides for HTML editting
