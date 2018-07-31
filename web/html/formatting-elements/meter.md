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
  - '[CodePen: Meter Element ](https://codepen.io/enkidevs/pen/xzmxxP){code}'
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'

---
# Meter
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

![meter-element](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2255%22%3E%3Cdefs%3E%3ClinearGradient%20id%3D%22a%22%20x1%3D%2250%25%22%20x2%3D%2250%25%22%20y1%3D%220%25%22%20y2%3D%22100%25%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%23AEE17E%22%2F%3E%3Cstop%20offset%3D%2226.74088%25%22%20stop-color%3D%22%23B0D885%22%2F%3E%3Cstop%20offset%3D%2247.13466%25%22%20stop-color%3D%22%237A3%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-color%3D%22%23A6D973%22%2F%3E%3C%2FlinearGradient%3E%3ClinearGradient%20id%3D%22b%22%20x1%3D%2250%25%22%20x2%3D%2250%25%22%20y1%3D%220%25%22%20y2%3D%2297.83689%25%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%23DFDFDF%22%2F%3E%3Cstop%20offset%3D%2226.74088%25%22%20stop-color%3D%22%23ECECEC%22%2F%3E%3Cstop%20offset%3D%2247.13466%25%22%20stop-color%3D%22%23CCC%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-color%3D%22%23DCDCDC%22%2F%3E%3C%2FlinearGradient%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2255%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2233%22%3EPhysics%20test%20result%3A%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22url%28%23a%29%22%20d%3D%22M160%2018h65v16h-65z%22%2F%3E%3Cpath%20fill%3D%22url%28%23b%29%22%20d%3D%22M224%2018h17v16h-17z%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/xzmxxP)-->

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

<!--To learn more about these specific attributes, visit the `more info` section below that links to the detailed insight.-->

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
