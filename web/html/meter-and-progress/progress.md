---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - deep
  - workout
  
links:

---
# The `<progress>` Element
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

![progress-element](https://img.enkipro.com/8e80f41251adcc753a26c4ad32cb2543.png)

[View CodePen](https://codepen.io/enkidevs/pen/eKbYJv)

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
