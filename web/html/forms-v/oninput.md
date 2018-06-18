---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  javascript.dom.3: 10

aspects:
  - introduction
  - workout
  - deep

---
# Oninput
---
## Content

The HTML `oninput` event occurs immediately after the value of an element has changed.

Here's an example of the `oninput` event executing a JavaScript function after the user puts in a value:
```
<input
  type="text"
  oninput="jsFunction()">
```

The `oninput` event is similar to the `onchange` event, except the `oninput` event occurs immediately after the value has changed, and the `onchange` event occurs after the element loses focus after the content has changed.

Another difference is that the `onchange` event works with `<select>` elements.

---
## Practice

Match the form attributes with their descriptions.

oninput: ???
onchange: ???

* occurs immediately after the value of an element has changed.
* occurs after the content has been changed and the element loses focus.
* occurs immediately when the element gains focus.

---
## Revision

Which form attribute is used to call a JavaScript when a user writes something within an `<input>` field?

```
<input
  type="text"
  ???="jsFunction()">
```

* oninput
* script
* action
* function
* call

---
## Quiz

### How much do you know about events in HTML?

Which event occurs immediately after the value of an element has changed.

???

* oninput
* onoutput
* script
* function
