# `null` value for *Controlled Components* in **React**
author: catalin

levels:

  - basic

  - beginner

type: normal

category: best practice

parent: custom-proptype-s-to-be-required

---
## Content

Using **React**, an `<input>` form element that has a set `value` prop is a *controlled* component.  

In a controlled `<input>`, the value of the rendered element will always reflect the `value` property.

There is a known bug in **React** when you set the `<input>` value to `null` or `undefined` that makes the component *uncontrolled*.

This is a controlled `<input>`:
```javascript
ReactDOM.render(<input value="hi" />, node)
```

This will make it uncontrolled:
```javascript
ReactDOM.render(<input value={null} />,node)
```

An *uncontrolled* component will give the user the ability to change its content without consent.

Taking all of this into consideration, setting the `value` of `<input>` to `null` is best to be avoided.

---
## Practice

Is this a controlled or uncontrolled <input>? ???

```javascript
ReactDOM.render(<input value="Enki!" />,
                node)
```
* Controlled
* Uncontrolled

---
## Revision

Make the following `<input>` form element uncontrolled:
```javascript
ReactDOM.render(<input
  value={???} />, node);
```

*`null`
*`uncontrolled`
*`0`
*`NaN`
