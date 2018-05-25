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

---
# Intro step
---
## Content

The input form HTML `step` attribute is used to specify a legal number interval for the `<input>` element.

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

The `step` attribute works with several input types. These are:
 - `date`
 - `datetime`
 - `datetime-local`
 - `month`
 - `number`
 - `range`
 - `time`
 - `week`

The `step` attribute can work together with `min` a `max` attributes to create a range of legal values.
It can also be the string `any` or a positive floating point number. If you do not set it to `any`, the control will only accept values as multiples of the set step value which are greater than the minimum.

---
## Practice

Which statement is NOT true regarding step attributes within forms?

???

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
