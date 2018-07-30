---
author: stefan.stojanovic

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
  - '[CodePen: Form output](https://codepen.io/enkidevs/pen/EpYJoa){code}'

---
# Output
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
```
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

![form-output](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2253%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2253%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M19.5%2017.5h78v18h-78zm97%200h78v18h-78z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22123%22%20y%3D%2232%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%22200%22%20y%3D%2232%22%3E%3D%205%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2226%22%20y%3D%2232%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22103%22%20y%3D%2232%22%3E%2B%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/EpYJoa)-->

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
