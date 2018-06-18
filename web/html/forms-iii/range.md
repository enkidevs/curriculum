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
  - '[Range elements on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/range){documentation}'
---
# Range
---
## Content


The HTML form input type `range` is used to specify any numeric value between two numbers. That value cannot be less than or greater than the two chosen values. It is usually represented by a slider. This kind of value control is not precise, so it should only be used if the exact value is not important.

**Note: If the user's browser does not support the `range` type, it will treat it as a `text` input instead.**

Example:
```
<input
  type="range"
  min="1"
  max="100"
  value="50"
  id="myRange">
<p>
  Value:
  <span
    id="demo">
  </span>
</p>

<script>
 var slider =
  document.getElementById("myRange");
 var output =
  document.getElementById("demo");
 output.innerHTML = slider.value;

 slider.oninput = function() {
  output.innerHTML = this.value;
 }
</script>
```

Breaking down the example:
```
<input
  type="range"
  min="1"
  max="100"
  value="50"
  id="myRange">
```

With this block of code, we have set the input to type `range`. The initial value is set to 50 or the middle of the slider. The `id` is set as `myRange` and will be used later with the `document.getElementbyId()` method.

**Notes:**
 - **If the values of min and max are not specified, the default value of min is 0 and the default value of max is 100.**
 - **You can also set negative numbers, ex, min = -5 and max =5**
 - **You can also edit the values granularity with the `step="value"` attribute. For instance setting step="0.1" makes the value increase in increments of 0.1 instead of the default value which is 1. On the other hand, if you want to accept any value regardless of how many decimal places, you can set the `step` value as `any`.**


```
<script>
 var slider =
  document.getElementById("myRange");
 var output =
  document.getElementById("demo");
 output.innerHTML = slider.value;

 slider.oninput = function() {
  output.innerHTML = this.value;
 }
</script>
```

In this block of code, we have created 2 variables named `slider` and `output`. Each variable has a method `document.getElementById("id");` which returns an Element object representing the element whose `id` property matches the specified string.

In the next part, we set the variable slider to have an `oninput` function. This `oninput` function prints on the `output` variable as soon as there is an input, or in this case, as soon as the slider moves.


Additionally, you can edit your sliders by adding labels or hash marks. This is done with the `list` attribute and the `<datalist>` element.

Example:
```
<input
  type="range"
  list="tickmarks">

<datalist id="tickmarks">
  <option value="0">
  <option value="25">
  <option value="50">
  <option value="75">
  <option value="100">
</datalist>
```

In the example above, we defined a slider with 5 hash marks, at 0, 25, 50, 75 and 100. This slider has values you can easily set with the hash marks. Each point is represented by the `<option>` element and it's value set to the desired range's value where the hash mark should be.

Moreover, you can also add labels next to your hash marks.

Example:
```
<input
  type="range"
  list="tickmarks">

<datalist id="tickmarks">
  <option value="0" label="0">
  <option value="25">
  <option value="50" label="50">
  <option value="75">
  <option value="100" label="100">
</datalist>
```

**Note: Not all browsers support hash marks and labels on sliders. For instance, Chrome only supports tick marks while Firefox doesn't support either of them.**


---
## Practice

Complete this code where the range slider is between 1 and 100 and starts in the middle at 50 with the appropriate ID.

```
<input
  type="???"
  ???="1"
  ???="100"
  ???="50"
  ???="myRange">
<p>
  Value: <span id="demo"></span>
</p>

<script>
 var slider =
  document.getElementById("myRange");
 var output =
  document.getElementById("demo");
 output.innerHTML = slider.value;

 slider.oninput = function() {
  output.innerHTML = this.value;
 }
</script>
```

* range
* min
* max
* value
* id

---
## Revision

Which form input type defines a slider control?

???

* `range`
* `max-min`
* `controls`
* `slider`
* `drag`
