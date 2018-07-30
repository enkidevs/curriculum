---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.0: 10
  web.html-forms.7: 10

aspects:
  - introduction
  - workout
  - deep
  
links:
  - '[CodePen: Step Attribute](https://codepen.io/enkidevs/pen/gKZKKK){code}'

---
# Intro step
---
## Content

The HTML input form `step` attribute is used to specify a *legal* number interval for the `<input>` element.

For instance, if you set `step="4"`, the legal numbers could be -4, 0, 4, 8, etc.

Example:
```
<form
  action="/action.php">
  <input
    type="number"
    name="points"
    step="4">
  <input
    type="submit">
</form>
```

![intro-step](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2259%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2259%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23CCC%22%20d%3D%22M20.5%2020.5h130v18h-130z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-BoldMT%2C%20Arial%22%20font-size%3D%2211.5%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%22162%22%20y%3D%2234%22%3ESubmit%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2224%22%20y%3D%2235%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2252%22%20height%3D%2217%22%20x%3D%22155.5%22%20y%3D%2221.5%22%20stroke%3D%22%23D3D3D3%22%20rx%3D%224%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/gKZKKK)-->

The `step` attribute is easy to assign with the `number` input and works with any positive floating point value (.1, .5, 1.667, etc). The `step` attribute can also work together with `min` and `max` attributes to create a range of legal values. When a value isn't assigned, it will often start at 0 or the min value.

If you want to accept any value regardless of how many decimal places, you can set the `step` value as `any`.

---
## Practice

Which statement is NOT true regarding step attributes within forms?

???

* Can step between both numbers and letters. 
* Works with fractions, like 1/2 written as ".5".
* Specifies the legal number intervals for an `<input>` element.
* Can be used with min & max to create range of legal values.
* Works with these input types: number, date, & time.

---
## Revision

Which form attribute allows a number to be entered in a specified interval, such as (-5, 0, 5, 10, etc)?

```
<form
  action="file.php">
 <input
  type="number"
  name="points"
  ???="5">
  <input
  type="submit">
</form>
```

* `step`
* `range`
* `gap`
* `space`
* `span`

---
## Quiz

### How much do you know about restricted numbers in HTML form fields?

Which values would be accepted by this input field?

```
<form
  action="file.php">
 <input
  type="number"
  name="points"
  step="5">
 <input
  type="submit">
</form>
```

???

* `-5, 0, 5, 10`
* `1, 2, 3, 4, 5`
* `0, 1, 2, 3, 4, 5`
* `5, 6, 7, 8, 9`
