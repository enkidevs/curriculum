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
  - deep

links:

---
# The `<min>` And `<max>` Elements
---
## Content

The HTML input form `min` and `max` attributes are used to set the minimum and maximum values that can be set. When the user submits the data, an error box will open helping the user spot their mistake.

This works for several input types:
 - date
 - datetime
 - datetime-local
 - month
 - number
 - range
 - time
 - week

Example:
```html
<form
  action="/action.php">
   Enter a date before 2000-01-01:
  <input
    type="date" name="bday"
      max="1999-12-31">

  Enter a date after 1999-12-31:
  <input
    type="date" name="bday"
      min="2000-01-02">

  Rate your experience from 1-5:
  <input
    type="number" name="rating"
      min="1" max="5">

  <input type="submit">
</form>
```

![form-min-and-max](https://img.enkipro.com/8c98645f6e6439b2e4869f99629ae229.png)

[View CodePen](https://codepen.io/enkidevs/pen/qKLKJm)

**Note:** When setting the `min` value, it cannot be greater than the max value, and vice-versa.

---
## Practice

Which statement is NOT true regarding min and max attributes within forms?

???

* `min` & `max` are required to be used together.
* `<input min="date">` specifies the minimum date allowed.
* `<input max="number">` specifies the maximum number allowed.
* `min` & `max` attributes work with datetime, month, range, number, week, time and datetime-local.

---
## Revision

Which form attributes are used within an input to set low and high values?

```html
<form
  action="/action.php">
 Rate your experience from 1-5:
  <input
   type="number" name="rating"
    ???="1" ???="5">
 <input type="submit">
</form>
```

* min
* max
* low
* high
* minimum
* maximum

---
## Quiz

### How much do you know about HTML input form attributes?

Which statement is not true regarding the min and max attributes?

???

 * When setting the min value it can be greater than the max value, and vice-versa.
 * When setting the min value it cannot be greater than the max value, and vice-versa.
 * `<input min="date">` specifies the minimum date allowed.
 * `<input max="number">` specifies the maximum number allowed.
