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
# The `<meter>` Element
---
## Content

The HTML `<meter>` element is used to represent a scalar value with a known range, or a fractional value. Most commonly used for displaying disk usage, blood pressure, a final grade score(90/100), or relevance of a search query result.

Example grade results:
```html
<p>
  Physics test result:
  <meter min="0" max="100"
    value="81">81= Grade B
  </meter>
</p>
```

Meter Result:

![meter-element](https://img.enkipro.com/989f5dcc47b587ffca1ed32a7b50c45b.png)

[View CodePen](https://codepen.io/enkidevs/pen/xzmxxP)

The `<meter>` element has 7 element-specific attributes:
  1. `form`
  2. `low`
  3. `high`
  4. `max`
  5. `min`
  6. `optimum`
  7. `value`

Example of element-specific attributes:
```html
<meter
  value="0.5"
  min="0"
  max="1">
  1/2 full
</meter>
```

---
## Practice

Create a meter element that displays data between 0 and 20 with a value of 15.

```html
<meter
  ???="15"
  ???="0"
  ???="20">
  15 out of 20
</meter>
```

* value
* min
* max
* default
* maximum
* minimum
* number

---
## Revision

What HTML element would be a good example of displaying the disk usage of your computer, where there is a known range that is measured and then shared with the user in a visual way?

???

* meter
* progress
* range
* span
* base
* image map

---
## Quiz

### How much do you know about the `<meter>` element?

If you need to display the value as a percentage, what would you use?

```html
<meter
  value="???"
  min="???"
  max="???">
  1/2 full
</meter>
```

* 0.5, 0, 1
* 50%, 0, 100
* 0.5, 0, 100
* 50%, 0, 1
