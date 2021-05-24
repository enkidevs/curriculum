---
author: Stefan-Stojanovic
type: normal
category: must-know

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# More meter Attributes


---

## Content

We've previously discussed the `value`, `low` and `high` attributes for the `<meter>` element. Let's now take a look at the rest.

- The `min` attribute is used to set the lower bound of the range. If specified, the value of the `min` attribute has to be lower than the value of the `max` attribute. On the other hand, if the `min` attribute is not specified, the minimum value is set to `0`.

- The `max` attribute is used to set the upper bound of the range. If specified, the value of the `max` attribute has to be greater than the value of the `min` attribute. On the other hand, if the `max` attribute is not specified, the maximum value is set to `1`.

- The `optimum` attribute is used to specify the optimum value. This value has to be between the `min` and `max` attribute values. If the `optimum` value is used together with the `low` and `high` attribute, then the value of the `optimum` attribute is considered the most preferable value for that range. Also, if the value of the `optimum` attribute is between `min` and `low`, then the `min`, or the lower attribute, is the preferred value. On the other hand, if the value of the `optimum` attribute is between `high` and `max`, then the `max`, or the higher attribute, is the preferred value.

- The `form` attribute is used to associate the `<meter>` element with the `<form>` element which has ownership over it. This is only necessary if the `<meter>` element is not a direct descendant of the `<form>` element who's using it.

**Note: Each attribute value(from the 7 attributes previously mentioned) has to be a valid floating point number.**


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

- `form`
- `max`
- `min`
- `low`
- `high`
- `optimum`
- `value`
- `maximum`
- `minimum`
- `current`
- `lowest`
- `highest`
- `pref`
- `best`


---

## Revision

Which of these is not a valid `<meter>` element attribute?

???

- `medium`
- `high`
- `low`
- `min`
- `max`
- `form`


---

## Quiz

### How much do you know about the


`<meter>`

 element?

If you need to display the value as a percentage, what would you use?

```html
<meter
  value="???"
  min="???"
  max="???">
  1/2 full
</meter>
```

- 0.5, 0, 1
- 50%, 0, 100
- 0.5, 0, 100
- 50%, 0, 1
