# Using `false` in **JSX**
author: catalin

levels:

  - basic

  - beginner

type: normal

category: best practice

parent: custom-proptype-s-to-be-required

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/tips/false-in-jsx.html){website}

---
## Content

The usage of the `false` keyword in **JSX** and implicitly **React** is worth mentioning because of its volatile behaviour.

First of all, `false` is widely used to specify that a **React** element has no child:
```
ReactDOM.render(<div>{false}</div>,
                              myNode);
```

Additional care must be taken when specifying the `id` of an element with the value `false` as it will be rendered as a string:
```
ReactDOM.render(<div id={false} />, myNode);
```
This will be rendered as `id="false"`.

This will also happen when `false` will be set as value for an `input` :
```
ReactDOM.render(<input value={false} />,
 myNode);
```

---
## Practice

What does the following code snippet do? ???

```javascript
ReactDOM.render(<div>{false}</div>, aNode);
```
* Specifies that the React element has no child.
* Renders the div element false.
* Renders there to be no div element.

---
## Revision

How will the `id` in the following code snippet be rendered as?

```jsx
ReactDOM.render(<div id={false} />, myNode);
```
Result:
```
id=???
```
* `"false"`
* `'false'`
* `false`
* `undefined`
