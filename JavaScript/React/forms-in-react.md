# Forms in **React**
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: rendering-multiple-components

links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/forms.html)'

---
## Content


While standard *HTML behaviour* of `<input />`, `<textarea />` or `<select />` elements work in **React**, having `JS` functions handling updates and submission is highly advised.

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

Complete the following snippet such that the rendered **controlled component** makes sense and works:
```jsx
class Control extends React.Component {
	constructor(props) {
  	super(props);
    this.state = {in: ''};
  }

  handle(e) {
  	this.???({
    	in: e.target.value
    });
  }

  render() {
  	return (
     <input type="text"
        ???={this.state.in}
      	???={(???) =>
          this.???(e)} />
    );
  }
};

ReactDOM.render(
  <Control />,
  document.getElementById('root')
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
