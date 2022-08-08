---
author: catalin
type: normal
category: must-know
links:
  - >-
    [Introducing
    JSX](https://reactjs.org/docs/introducing-jsx.html){website}
  - >-
    [JSX looks like an
    abomination](https://medium.com/javascript-scene/jsx-looks-like-an-abomination-1c1ec351a918#.amqkpfybp/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What is JSX?


---

## Content

**JSX** is syntactic sugar that brings an `HTML`-like syntax to **JavaScript**. Here is what it looks like:

```jsx
const el = <h2>Enki!</h2>;
```

This means that **JSX** is a way of writing your **HTML** inside JS code.

A **JSX** expression is evaluated to a **React** `element`, which is short-hand for calling `React.createElement()`. Think of `ReactElement`s as the **UI** building blocks of **React**. We will come back to this later.

**JSX** expressions are transformed (compiled) into standard JS objects. For example, the following **JSX** code:

```jsx
const el = <h2>Enki!</h2>;
```

will be *compiled* to[1]:

```jsx
const el = React.createElement(
  "h2",
  null,
  "Enki!"
);
```

**JSX** allows you to embed JS expressions within it by wrapping them with `{ }` curly brackets:

```jsx
const x = "Hey there!";

const el = <h2>{x}</h2>;
```

When rendered, this element will display `"Hey there"` as an `h2`.

You can use **JSX** expressions anywhere. For example, you can:

- `return` them
- use them in `for` loops
- use them in `if` statements
- accept them as `function` parameters
- etc.

Although writing `React.createElement` statements is perfectly valid, the main reason developers prefer to use JSX is the familiarity of HTML-like syntax.

It’s important to know that, since JSX isn’t a language that is understood in JavaScript environments, React uses Babel[2] to convert it to valid JavaScript, i.e. the mentioned `React.createElement` calls.


---

## Practice

What will the following **JSX** expression compile to?

```jsx
const el = <p>I love JSX</p>;
```

Is compiled to:

```jsx
const el = React.createElement(
  '???',
  ???, 
  '???'
);
```

- `p`
- `null`
- `I love JSX`
- `<p>`
- `jsx`
- `<p>I love JSX</p>`
- `</p>`


---

## Revision

JSX expressions after compilation are transformed into ???.

- JavaScript objects
- HTML elements
- JSX entities
- XML elements


---

## Footnotes

[1:Compilation Object]
After performing some checks to make sure you’re providing valid data, the `React.createElement()` method creates an object like this:

```jsx
const el = {
  type: 'h2',
  props: {
    children: 'Enki!'
  }
};
```

This shape isn't important when developing with React and you shouldn't worry about it. It just happens to be the most convenient shape for React's internal usage.

[2:Babel]
Babel is an open-source JavaScript compiler that is used to convert new ECMAScript code into a backwards compatible version of JavaScript that can run on older engines.
