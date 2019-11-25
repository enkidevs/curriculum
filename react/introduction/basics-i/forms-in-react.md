---
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know


links:

  - '[Forms](https://facebook.github.io/react/docs/forms.html){website}'

parent: rendering-multiple-components

aspects:
  - deep

---

# Forms in React

---
## Content

While standard `HTML` form elements such as `<input />`, `<textarea />` or `<select />` elements behave correctly in **React**, using JS functions to handle updates and submissions is highly advised because it gives us more control.

**HTML form** elements keep an **internal state** in sync with the user's *input*. Coupling this with components' `state` can result in a **controlled component**.

A controlled component means having the component's `state` as **single source of truth**.

Consider the following `render`ing of a component:
```jsx
// set initial state in constructor
constructor(props) {
  super(props);
  this.state = {in: ''}
}
// render
render() {
  return (
    <input type="text" value={this.state.in}
      onChange={(e) => this.handle(e)} />
    );
}
```

The displayed `value` of the element will always be `this.state.in`. The `onChange` attribute is a function - `handle()` that will be called on every user input.

To keep the displayed value in sync with the user input the `setState()` method is used:

```jsx
handle(e) {
  this.setState({
    in: e.target.value,
  });
}
```

Note: we use `e.target.value` as our state because `e` is a DOM event given to us for an input and it contains the current string value of the input in its `target` object property[1].

With consistency in mind, *form elements* in **React** work a little differently:

- for `<textarea />` the text is specified with `value` attribute instead of having it as a child:

```html
<!-- standard HTML -->
<textarea>
  Text goes here
</textarea>
```
```jsx
// React
<textarea value='Text goes here' />
```

- for `<select />`, instead of using `selected` attribute on an `<option />` to specify the default selection, you can specify the `<option />`'s `value` in the root `<select />`:

```html
<!-- standard HTML -->
<select>
  <option selected value='a'>A</option>
</select>
```
```jsx
// React
<select value='a'>
  <option value='a'>A</option>
</select>
```

---
## Practice

Complete the following snippet such that the rendered **controlled component** works:
```jsx
class Control extends React.Component {
  constructor(props) {
    super(props);
    this.state = { in: "" };
  }

  handle(e) {
    this.???({
      in: e.target.value
    });
  }

  render() {
    return (
      <input
        type="text"
        ???={this.state.in}
        ???={??? => this.???(e)}
      />
    );
  }
}

ReactDOM.render(
  <Control />,
  document.getElementById("root")
);
```

* `setState`
* `value`
* `onChange`
* `e`
* `handle`
* `handleChange`
* `state`
* `event`
* `onHandleChange`
* `selected`

---
## Revision

What is a **controlled component**?

A component ???.


* whose `state` is the **single source of truth**
* using **React**-specific *form elements*
* without `props`
* with any *HTML form elements*

---
## Footnotes

[1:DOM Events]

DOM events for input elements have a specific shape and contain specific data (e.g. `Event.target()`). You can find a [comprehensive list](https://developer.mozilla.org/en-US/docs/Web/API/Event) of event properties in the Mozilla documentation.

React mimics this feature with synthetic events. The React documentation holds a [list of supported events](https://reactjs.org/docs/events.html#supported-events).