---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.layout-html.3: 10

aspects:
  - deep
  - workout
links:
  - '[CodePen: Progress Element](https://codepen.io/enkidevs/pen/eKbYJv){code}'
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'

---
# Progress
---
## Content

The HTML `<progress>`, or the **Progress Indicator** element, is used to display a progress bar.

Example:
```html
<progress
  value="25"
  max="100">
  25%
</progress>
```

![progress-element](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2246%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2246%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23EDEDED%22%20stroke%3D%22%23CFCFCF%22%20d%3D%22M52.5%2020.5v5H169c1.38071%200%202.5-1.11929%202.5-2.5s-1.11929-2.5-2.5-2.5H52.5z%22%2F%3E%3Cpath%20fill%3D%22%233B99FC%22%20stroke%3D%22%233385DB%22%20d%3D%22M52.5%2025.5v-5H17c-1.38071%200-2.5%201.11929-2.5%202.5s1.11929%202.5%202.5%202.5h35.5z%22%2F%3E%3Cpath%20stroke%3D%22%233B99FC%22%20stroke-linecap%3D%22square%22%20d%3D%22M52.5%2021.5v3%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/eKbYJv)-->

The `<progress>` element has 2 element-specific attributes:
  1. `max`
  2. `value`

The `max` attribute is used to indicate the total work that the progress bars task requires. If the `max` attribute is not present, the default value is set to 1. On the other hand, if you add the `max` attribute, its value has to be 1 or above and be a valid floating point number.

The `value` attribute is used to specify the amount of work that's been completed. The value of the `value` attribute has to either be between 0 and 1 or if `max` is specified, between 0 and `max`. On the other hand, if you don't add the `value` attribute, the amount of work needed to be done is unknown.

---
## Practice

Create a progress element that displays the file size percentage downloaded at a given time.

```html
<progress ???="25"
  ???="100">25%
</progress>
```

* value
* max
* range
* default
* min
* percent

---
## Revision

What HTML element would be a good example of visually displaying the progress of a task, such as the downloading progress of a file?

???

* progress
* meter
* range
* download
* span
* base

---
## Quiz

### How much do you know about creating meters in HTML?

Check out this '[meter](https://www.dropbox.com/s/azi3gl1th52zwrs/Screen%20Shot%202018-06-17%20at%2011.06.47%20PM.png?dl=0)' picture, then choose which answer creates such a meter.

???

* `<meter value="0.75" max="1"></meter>`
* `<progress value="60" max="100"></progress>`
* `<meter value="60%" max="100"></meter>`
* `<progress value="0.6" max="1"></progress>`
* `<bar value="0.6" max="1"></bar>`
* `<bar value="60" max="100"></bar>`
