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
  - '[HTML: <text> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/text){documentation}'

---

# Text Field Attributes
---
## Content

The input of type `text` can have a `minlength` and `maxlength` attribute as well. These attributes are used to set the minimum and maximum length in characters for the input element.

Example:
```html
<form>
  <label
    for="name"> Username:
  </label>
  <input
    type="text" id="uname"
    name="name" required size="10"
    placeholder="Username"
    minlength="5" maxlength="10">
  <button>
    Submit
  </button>
</form>
```

In the example above, we have added a `required` attribute. Setting this attribute makes the form not submittable until a user enters a value. On the other hand, if the user does try to submit an empty form, they would get a pop up saying which field input is necessary to be filed for the form to submit. This is very common on most websites, for instance, always when creating a new account. 

How you preview to the user that an input is required can be edited with the appropriate CSS properties.

**Note**: When the `required` attribute is set together with the `minlength` attribute and the user tries to enter less characters than required they would get an appropriate error message saying something like "input requires a minimum of X characters", whereas setting the `minlength` without the `required` attribute allows the user to enter any number of characters because the input value is not required, therefore has no limit.

On the other hand, setting the `maxlength` attribute makes the input field have a max number, and the user can't enter any character more than the `maxlength` attribute specifies.

Last but not least, your text inputs can have a specific pattern, or a regular expression, which restricts the user's input to a specific pattern. This is applied with the `pattern` attribute like so:

```html
<form>
  <div>
    <label
      for="name"> Username:
    </label>
    <input
      type="text" id="uname"
      name="name" required size="10"
      placeholder="Username"
      pattern="[a-zA-z]{4,12}>
  </div>
  <div>
    <button>
      Submit
    </button>
  </div>
</form>
```

In this example, we set the input requirements to either upper and lowercase letters and a 4-12 character length limit. If the user tries to submit the form without following the pattern they would get an error message saying something like "Please match the requested format".


---
## Practice

Write the form code where the input field is required and has a specific pattern.

```html
<form>
  <div>
    <label
      for="name"> Username:
    </label>
    <???
      ???="???" id="uname"
      name="name" ??? size="10"
      placeholder="Username"
      ???="[a-zA-z]{4,12}>
  </div>
  <div>
    <button>
      Submit
    </button>
  </div>
</form>
```

* input
* type
* text
* required
* pattern
* inputtype
* disabled
* form

---
## Revision

Which attribute forces a user to fill a field before being able to submit the form?

???

* `required`
* `fillfirst`
* `pattern`
* `necessary`

---
## Quiz

### How much do you know about the HTML input `type="text"`?

What does the required attribute do in this code?

```html
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
 
