---
author: catalin

levels:

  - beginner

type: normal

category: must-know


links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/introducing-jsx.html){website}'
  - '[medium.com](https://medium.com/javascript-scene/jsx-looks-like-an-abomination-1c1ec351a918#.amqkpfybp/){website}'

aspects:
  - introduction

parent: what-is-react

---

# What is JSX?

---
## Content

**JSX** is syntactic sugar that brings an `HTML`-like syntax to **JavaScript**. Here is how it looks like:

```jsx
const el = <h2>Enki!</h2>;
```

This means that **JSX** is a way of writing your **HTML** inside JS code.

A **JSX** expression is evaluated to a **React** `element`, which is short-hand for calling `React.createElement()` Think of `ReactElement`s as the **UI** building blocks of **React**. We will come back to this later.

**JSX** expressions are transformed (compiled) into standard JS objects. For example, the following **JSX** code:

```jsx
const el = <h2>Enki!</h2>;
```

will be *compiled* to:

```jsx
const el = React.createElement(
  "h2",
  null,
  "Enki!"
);
```

After performing some checks that ensure your code is bug-free, the `React.createElement()` method creates an object like this:

```jsx
const el = {
  type: 'h2',
  props: {
    children: 'Enki!'
  }
};
```

**JSX** allows you to embed JS expressions within it wrapping them with `{ }` curly brackets:

```jsx
const x = "Hey there!";

const el = <h2>{x}</h2>;
```

When rendered, this element will display `"Hey there"` as an `h2`.

Because we are using Babel to transform our entire React application, you can us **JSX** expressions anywhere. For example, you can:
- `return` them
- use them in `for` loops
- use them in `if` statements
- accept them as `function` arguments
- etc.


**React** doesn't require **JSX** usage, but its usage is highly encouraged as well as `Babel` compiling.

---
## Practice

What will the following **JSX** expression compile to?

```jsx
const el = <p><3 JSX</p>;

// compiled to:

const el = React.createElement(
  ???,
  ???, 
  ???
);
```


* `'p'`
* `null`
* `'<3 JSX'`
* `<p>`
* `jsx`
* `'<p><3 JSX</p>'`
* `'</p>'`

---
## Revision

**JSX** expressions after compilation are transformed into
??? .


* `JavaScript` objects
* `HTML` elements
* `JSX` entities
* `XML` elements


