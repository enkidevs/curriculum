# Conditional Rendering (Part 2)
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: how to

parent: conditional-rendering-part-1

links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/conditional-rendering.html)'

---
## Content

Using **React** with **JSX** gives you more power and convenience when writing code by letting you *embed JS* expressions in **curly braces** (`{expression}`).

For example, another approach for **conditional rendering** is using *in-line* `if` with help from the **AND** (`&&`)/ **OR** (`||`) logical operator.

Consider the following component:
```jsx
function Welcome(props) {
  const isRaining = props.isRaining;
  return (
    <div>
      <h2>Welcome</h2>
      {isRaining &&
        <h3>Don't forget your umbrella</h3>
      }
    </div>
  )
}
```

Regardless of the `isRaining` prop's value, the `<h2>Welcome</h2>` is shown. If you pass `isRaining` as `true` then the `<h3>` element will be displayed as well.

The reason this approach works is because in `JS` the `true && exp` expression will evaluate to `exp`, while `false && exp` will evaluate to `false`.

Sometimes you might want to **prevent** a component from rendering. This is also simply achievable by `return`ing `null` instead of the normal output:
```jsx
function Maybe(props) {
  if (props.not) {
    return null;
  }
  return <p>Heey</p>;
}
```

Keep in mind that when returning `null` during `render`, this won't affect the call on **lifecycle methods** such as `componentWillUpdate`.

---
## Practice

Complete the following component such that it will render `"Hello, World"`:
```jsx
function A(props) {
  const y = props.y;
  if (???) {
    return null;
  }
  return (
    <div>
    {y ??? <h2>Hello, World</h2>}
    <???>
  );
}

ReactDOM.render(
  <A x={true} y={true} />,
  document.getElementById('root')
);
```

* `!props.x`
* `&&`
* `</div>`
* `props.x`
* `x`
* `!x`
* `||`
* `</h2>`
* `<div>`

---
## Revision

What will be rendered in the following scenario?
```jsx
function Exercise(props) {
  const x = props.x;
  if (props.not) {
    return null;
  }
  return (
  	<div>
    {x ? <p>Yes</p> : <p>No</p>}
    </div>
  );
}

ReactDOM.render(
  <Exercise not={false} x={true} />,
  document.getElementById('root')
);

```

???

* Yes
* No
* Error raised
* Null
