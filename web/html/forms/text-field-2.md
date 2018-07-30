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
  - '[Codepen: Form minlength & maxlength](https://codepen.io/enkidevs/pen/mjwJop){code}'
  - '[Codepen: Form pattern](https://codepen.io/enkidevs/pen/QBgbPY){code}'
  - '[MDN docs for text](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/text){website}'


---

# Text Field Attributes
---
## Content

The input of type `text` can have a `minlength` and `maxlength` attribute as well. These attributes are used to set the minimum and maximum length in characters for the input element.

Example:
```
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

![form-attributes](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2251%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2251%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%22212%22%20y%3D%2230%22%3ESubmit%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2252%22%20height%3D%2217%22%20x%3D%22205.5%22%20y%3D%2217.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3EUsername%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M100.5%2017.5h100v16h-100z%22%2F%3E%3Ctext%20fill%3D%22%23847D86%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2213%22%3E%3Ctspan%20x%3D%22104%22%20y%3D%2230%22%3EUsername%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

In the example above, we have added a `required` attribute. Setting this attribute makes the form not submittable until a user enters a value. On the other hand, if the user does try to submit an empty form, they would get a pop up saying which field input is necessary to be filed for the form to submit. This is very common on most websites, for instance, always when creating a new account.

How you preview to the user that an input is required can be edited with the appropriate CSS properties.

**Note**: When the `required` attribute is set together with the `minlength` attribute and the user tries to enter less characters than required they would get an appropriate error message saying something like "input requires a minimum of X characters", whereas setting the `minlength` without the `required` attribute allows the user to enter any number of characters because the input value is not required, therefore has no limit.

On the other hand, setting the `maxlength` attribute makes the input field have a max number, and the user can't enter any character more than the `maxlength` attribute specifies.

Last but not least, your text inputs can have a specific pattern, or a regular expression, which restricts the user's input to a specific pattern. This is applied with the `pattern` attribute like so:

```
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
</form>
```

![form-attributes](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2251%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2251%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%22212%22%20y%3D%2230%22%3ESubmit%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2252%22%20height%3D%2217%22%20x%3D%22205.5%22%20y%3D%2217.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2231%22%3EUsername%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M100.5%2017.5h100v16h-100z%22%2F%3E%3Ctext%20fill%3D%22%23847D86%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2213%22%3E%3Ctspan%20x%3D%22104%22%20y%3D%2230%22%3EUsername%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

In this example, we set the input requirements to either upper and lowercase letters and a 4-12 character length limit. If the user tries to submit the form without following the pattern they would get an error message saying something like "Please match the requested format".


---
## Practice

Write the form code where the input field is required and has a specific pattern.

```
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
* text

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
