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
  - '[CodePen: Min & Max Attribute](https://codepen.io/enkidevs/pen/qKLKJm){code}'


---
# Min and max
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

![form-min-and-max](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20width%3D%22320%22%20height%3D%22132%22%3E%3Cdefs%3E%3Cpath%20id%3D%22b%22%20d%3D%22M20%2038h131v19H20z%22%2F%3E%3Cfilter%20id%3D%22a%22%20width%3D%22109.2%25%22%20height%3D%22163.2%25%22%20x%3D%22-4.6%25%22%20y%3D%22-31.6%25%22%20filterUnits%3D%22objectBoundingBox%22%3E%3CfeOffset%20in%3D%22SourceAlpha%22%20result%3D%22shadowOffsetOuter1%22%2F%3E%3CfeGaussianBlur%20in%3D%22shadowOffsetOuter1%22%20result%3D%22shadowBlurOuter1%22%20stdDeviation%3D%222%22%2F%3E%3CfeComposite%20in%3D%22shadowBlurOuter1%22%20in2%3D%22SourceAlpha%22%20operator%3D%22out%22%20result%3D%22shadowBlurOuter1%22%2F%3E%3CfeColorMatrix%20in%3D%22shadowBlurOuter1%22%20values%3D%220%200%200%200%200.329411765%200%200%200%200%200.560784314%200%200%200%200%200.8%200%200%200%201%200%22%2F%3E%3C%2Ffilter%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22132%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cuse%20fill%3D%22%23000%22%20filter%3D%22url%28%23a%29%22%20xlink%3Ahref%3D%22%23b%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22%23548FCC%22%20stroke-linejoin%3D%22square%22%20d%3D%22M20.5%2038.5h130v18h-130z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Courier%22%20font-size%3D%2212%22%3E%3Ctspan%20x%3D%2224%22%20y%3D%2252%22%3E12%2F26%2F2004%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2230%22%3EEnter%20a%20date%20before%2001-01-2000%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23000%22%20stroke%3D%22%23000%22%20d%3D%22M137.83685%2044.5l2.62516%204.87852L143.08717%2044.5h-5.25032z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20stroke%3D%22gray%22%20d%3D%22M29.5%2058.7282L22.15997%2066.5H15c-1.38071%200-2.5%201.11929-2.5%202.5v38c0%201.38071%201.11929%202.5%202.5%202.5h275c1.38071%200%202.5-1.11929%202.5-2.5V69c0-1.38071-1.11929-2.5-2.5-2.5H36.84003L29.5%2058.7282z%22%2F%3E%3Crect%20width%3D%2223%22%20height%3D%2223%22%20x%3D%2220%22%20y%3D%2275%22%20fill%3D%22%23FFA303%22%20rx%3D%223%22%2F%3E%3Ccircle%20cx%3D%2232%22%20cy%3D%2292%22%20r%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M30%2080h4v8h-4z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2213%22%3E%3Ctspan%20x%3D%2252%22%20y%3D%2292%22%3EValue%20must%20be%2012%2F31%2F1999%20or%20earlier.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/qKLKJm)-->

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
