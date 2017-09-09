# What is **JSX**?
author: catalin

levels:

  - beginner

type: normal

category: must-know

parent: what-is-react

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/introducing-jsx.html){website}

  - >-
    [medium.com](https://medium.com/javascript-scene/jsx-looks-like-an-abomination-1c1ec351a918#.amqkpfybp/){website}

---
## Content

**JSX** is syntactic sugar that brings an `XML`-like syntax to **JavaScript**.


This means that **JSX** is a way of writing your **HTML** inside `JS` code.


A **JSX** expression is evaluated to a **React** `element`, which is short-hand for calling `React.createElement()` Think of `ReactElement`s as the **UI** building blocks of **React**. We will come back to this later.

**JSX** expressions are transformed (compiled) into standard `JS` objects.

For example, the following **JSX** code:
```jsx
const el = <h2>Enki!</h2>;
```
will be *compiled* to:
```
const el = React.createElement('h2',
 null, 'Enki!');
```

From here, you can embed `JS` expressions within **JSX** by wrapping them with `{ }` curly brackets:
```
const x = "Hey there!";

const el = <h2>{x}</h2>
```

When rendered, this element will display `"Hey there"` as a `h2`.

**JSX** expressions can be used everywhere in `JS`. You can:
- `return` them
- use them in `for` loops
- use them in `if` statements
- accept them as `function` arguments
- etc.


**React** doesn't require **JSX** usage, but its usage is highly encouraged as well as `Babel` compiling.
---
## Practice

What will the following **JSX** expression compile to?

```
const el = <p><3 JSX</p>

// compiled to:

const el = React.createElement(???,
 ???, ???)
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
