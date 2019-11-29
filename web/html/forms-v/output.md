---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  javascript.dom.3: 10

aspects:
  - introduction
  - workout
  - deep

links:

---
# The `<output>` Element
---
## Content

The HTML `output` element is a container that, when specified, represents a result of a calculation.
It's a container where websites or apps can display their result.

The `output` element has three attributes:
 - `for`
 - `form`
 - `name`

The `for` attribute, which has a value of `element_id`, specifies an explicit relationship between the result of a calculation and the elements that represent the values.

The `form` attribute, which has a value of `form_id`, associates the output with a form. The value of the attribute must equal the `id` of the form element in the same document

The `name` attribute, which has a value of `name`, specifies the name of this element.

Example:
```html
<form
  oninput="result.value=parseInt(a.value)
    +parseInt(b.value)">
  <input
    type="number"
    name="b"
    value="0" /> +
  <input
    type="number"
    name="a"
    value="5" /> =
  <output
  name="result">5
  </output>
</form>
```

![form-output](https://img.enkipro.com/f6863c1cf77730aa250614dd28ffb7de.png)

[View CodePen](https://codepen.io/enkidevs/pen/EpYJoa)

In the example above, there are two input fields and one output field. The input fields have pre-set values of 0 and 5. The two numbers are added together and displayed in the result `output` element which has a pre-set value of 5.

Any time the user changes the value in either of the input fields, the result will change accordingly.

---
## Practice

Match the form attributes that are specific for the `<output>` element with their descriptions.

for: ???
form: ???
name: ???

* Specifies an explicit relationship between the result of a calculation and the elements that represent the values.
* Associates the output with a form.
* Specifies the name of this element.


---
## Revision

Which HTML element is used to display form values, such as the result of a calculation or user action, that displays outside the form elsewhere on the page?

???

* output
* values
* numform
* outside
* display

---
## Quiz

### How much do you know about the `output` HTML element?

Which attribute does not go with the `output` element?

 * size
 * form
 * name
 * for
