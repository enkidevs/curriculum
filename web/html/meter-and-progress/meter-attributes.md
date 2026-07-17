---
author: Stefan-Stojanovic
type: normal
category: must-know

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Meter Attributes


---

## Content

`<meter>` elements have a number of useful attributes.

- `value`
- `low`
- `high`
- `min`
- `max`
- `optimum`
- `form`

![meter-element](https://img.enkipro.com/989f5dcc47b587ffca1ed32a7b50c45b.png)

- The `value` attribute is the current value. The value of the `value` attribute has to be between the `min` and `max` attribute values(if they are present), or if they are not present, between `0` and `1`. Also, if the `value` attribute is not specified the value of the `value` attribute is set to equal 0. On the other hand, it the `value` attribute is specified, however, it is not within the given `min` and `max` range, the value is set to equal the nearest end of the range.

- The `low` attribute is used to specify a range which is considered as a `low` value. If specified, the value of the `low` attribute has to be greater than the `min` value, and it has to be lower than the `high` and `max` attribute values, respectively. On the other hand, if the `low` value is not specified, or is lower than the `min` value, it is set to equal the `min` value.

- The `high` attribute is used to specify a range which is considered as a `high` value. If specified, the value of the `high` attribute has to be lower than the `max` value, and it also has to be greater than the `low` and `min` attribute values, respectively. On the other hand, if the `high` value is not specified, or is greater than the `max` value, it is set to equal the `max` value.

![example-2](https://img.enkipro.com/dba36fd6ed49fa42a751999f42661b96.png)

---

## Practice

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
