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
# `<meter>` Attributes
---
## Content

`<meter>` elements have a number of useful attributes.

* `value`
* `low`
* `high`
* `min`
* `max`
* `optimum`
* `form`

![meter-element](https://img.enkipro.com/989f5dcc47b587ffca1ed32a7b50c45b.png)

[View CodePen](https://codepen.io/enkidevs/pen/yqMrxx)

1. The `value` attribute is the current value. The value of the `value` attribute has to be between the `min` and `max` attribute values(if they are present), or if they are not present, between `0` and `1`. Also, if the `value` attribute is not specified the value of the `value` attribute is set to equal 0. On the other hand, it the `value` attribute is specified, however, it is not within the given `min` and `max` range, the value is set to equal the nearest end of the range.

2. The `low` attribute is used to specify a range which is considered as a `low` value. If specified, the value of the `low` attribute has to be greater than the `min` value, and it has to be lower than the `high` and `max` attribute values, respectively. On the other hand, if the `low` value is not specified, or is lower than the `min` value, it is set to equal the `min` value.

3. The `high` attribute is used to specify a range which is considered as a `high` value. If specified, the value of the `high` attribute has to be lower than the `max` value, and it also has to be greater than the `low` and `min` attribute values, respectively. On the other hand, if the `high` value is not specified, or is greater than the `max` value, it is set to equal the `max` value.

4. The `min` attribute is used to set the lower bound of the range. If specified, the value of the `min` attribute has to be lower than the value of the `max` attribute. On the other hand, if the `min` attribute is not specified, the minimum value is set to `0`.

5. The `max` attribute is used to set the upper bound of the range. If specified, the value of the `max` attribute has to be greater than the value of the `min` attribute. On the other hand, if the `max` attribute is not specified, the maximum value is set to `1`.

6. The `optimum` attribute is used to specify the optimum value. This value has to be between the `min` and `max` attribute values. If the `optimum` value is used together with the `low` and `high` attribute, then the value of the `optimum` attribute is considered the most preferable value for that range. Also, if the value of the `optimum` attribute is between `min` and `low`, then the `min`, or the lower attribute, is the preferred value. On the other hand, if the value of the `optimum` attribute is between `high` and `max`, then the `max`, or the higher attribute, is the preferred value.

7. The `form` attribute is used to associate the `<meter>` element with the `<form>` element which has ownership over it. This is only necessary if the `<meter>` element is not a direct descendant of the `<form>` element who's using it.

**Note: Each attribute value(from the 7 attributes mentioned above) has to be a valid floating point number.**

---
## Practice

Match the answers with the corresponding text:

Associate a `<meter>` with a `<form>`: ???
Upper bound: ???
Lower bound: ???
Low value range: ???
High value range: ???
Most preferable value: ???
Current value: ???

* `form`
* `max`
* `min`
* `low`
* `high`
* `optimum`
* `value`
* `maximum`
* `minimum`
* `current`
* `lowest`
* `highest`
* `pref`
* `best`


---
## Revision

Which of these is not a valid `<meter>` element attribute?

???

* `medium`
* `high`
* `low`
* `min`
* `max`
* `form`

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
