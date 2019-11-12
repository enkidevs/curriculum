---
author: catalin

levels:

  - basic

  - beginner

type: normal

category: best practice

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---

# `null` value for Controlled Components in React

---
## Content

When using HTML, the form elements (`<input>`, `<textarea>`, `<select>`) maintain their state and update it based on user input. In **React** only the `state` property contains the mutable state, and it is updated using the `setState()` method. This allows **React** to control what happens on subsequent user input, making **React** the single source of truth. From this, we can gather that there are two types of components:

* controlled
* uncontrolled

To define a controlled component, you have to use a prop called `value` which, as the name suggests, reflects the value the form will have when rendered.

```jsx
class Enki extends React.Component {
  render() {
    return <input value="hello" />;
  }
}
```

If for some reason you want to make your component uncontrolled, all you would have to do is assign `null` or `undefined` to the `value` prop.

```jsx
// ...
    return <input value={null} />;
// ...
```

An *uncontrolled* component will give the user the ability to change its content without consent.

Taking all of this into consideration, setting the `value` of `<input>` to `null` is best to be avoided.

---
## Practice

Is this a controlled or uncontrolled <input>? 

???

```jsx
ReactDOM.render(
  <input value="Enki!" />,
  node
);
```

* Controlled
* Uncontrolled

---
## Revision

Make the following `<input>` form element uncontrolled:

```jsx
ReactDOM.render(
  <input value={???} />,
  node
);
```


* `null`
* `uncontrolled`
* `0`
* `NaN`


