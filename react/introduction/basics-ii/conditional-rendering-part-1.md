---
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: how to


links:

  - '[Conditional rendering](https://facebook.github.io/react/docs/conditional-rendering.html){website}'

parent: event-handling-in-react

aspects:
  - introduction

---

# Conditional rendering (Part 1)

---
## Content

**Conditional rendering** is the long-standing technique of `render`ing different `element`s for different scenarios.

Exploiting the power of pure JS, **React** allows conditional rendering with `if` statements or *ternary operators*[1].

Consider the following two function components:
```jsx
function Sunny(props) {
  return <p>Enjoy the weather</p>;
}

function Rainy(props) {
  return <p>You should take an umbrella</p>
}
```
You might want to render either `<Sunny />` or `<Rainy />` in different scenarios. Furthermore, you might use a `props.isRaining` deciding which component should be rendered:
```jsx
function Message(props) {
  const isRaining = props.isRaining;
  if (isRaining) {
    return <Rainy />;
  }
  return <Sunny />;
}
```

In addition, such `element`s can be stored using **variables**. This is particularly useful when conditional `render`ing parts of the `component`:
```jsx
class Message extends React.component {
  render() {
    const isRaining = this.props.isRaining;

    const message = isRaining ?
      <Rainy /> : <Sunny/>;

    return (
      <div>
        {message}
        <p> Anyways, enjoy your day </p>;
      </div>
    );
  }
}
```

When rendering `Message` component with `isRaining=true`, it will make use of `<Rainy />` while otherwise, it will use `<Sunny />`. In both cases the latter `<p>` is shown as well.

---
## Practice

Complete the following snippet such that `"B"` is rendered on the screen:

```jsx
function A(props) {
  return <p>A</p>;
}

function B(props) {
  return <p>B</p>;
}

function C(props){
  const show = ???.???;
  return show ??? <A /> : <B />;
}

ReactDOM.render(
  <C show={???} />,
  document.getElementById('root')
);
```


* `props`
* `show`
* `?`
* `false`
* `true`
* `if`
* `else`
* `C`
* `state`

---
## Revision

Which JS capabilities are commonly used in **React** for **conditional rendering**?

???


* standard `JS` - `if`s and ternary operators
* the `renderIf` special method
* the `renderIfElse` special method
* you can't conditional render in **React**

---
## Footnotes
[1:Ternary operator]

The **conditional** or **ternary** operator is the only `JS` operator taking 3 operands.

Consider the generic syntax:
```javascript
condition ? expression1 : expression2
```

This operator is generally used as a shortcut for an `if-else` statement:
```js
const x = 5 > 2 ? 'yes' : 'no';
// x = 'yes'
```
The snippet above is equivalent to:
```js
const x = '';
if (5 > 2) {
  x = 'yes';
} else {
  x = 'no';
}
```

