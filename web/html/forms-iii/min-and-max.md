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
# Min and max
---
## Content

When writting HTML input form attributes you can also set their `min` and `max` values.
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
```
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

**Note: When setting the min value it cannot be greater than the max value, and vice-versa.**

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

```
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
