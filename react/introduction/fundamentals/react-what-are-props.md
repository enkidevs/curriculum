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

  - '[Components and props](https://facebook.github.io/react/docs/components-and-props.html){website}'
  - '[Props overview](https://www.tutorialspoint.com/reactjs/reactjs_props_overview.htm){website}'

parent: the-react-component

aspects:
  - introduction

---

# What are props?

---
## Content

Components can take input in a similar way to a function, via `props`.

`props` is a plain JS object whose properties represent the arguments of a component.

An important aspect of the `props` object is that it is **immutable**. That means `props` cannot and should not be changed within a component, but rather only from its *parent*(s). We will elaborate more on this later.

Consider the component:
```jsx
class Greeting extends React.Component {
  render() {
    return (
      <h1>
        Enki greets
        {this.props.name}
      </h1>
    );
  }
}
```

Note that if the value of your `return` extends over multiple lines it must be enclosed in parentheses[1].

Here is how to pass `props` to an element:

```jsx
const el = (
  <Greeting name="John" />;
);
```

Now, when `render`ed, `el` will display `"Enki greets John"`.

You can also define **default props** in the following manner:

```jsx
class Greeting extends React.Component {
  //...
}
Greeting.defaultProps = {
  name: "User",
}
```

This allows us to create a `Greeting` element without specifying the `name`:
```jsx
const el = (
  <Greeting  />;
);
```

If we `render` it now, we will see `"Enki greets User"`;

---
## Practice

Complete the missing gaps so that the `render`ed output is `"Enki"`:
```jsx
class Enki extends React.Component {
  render() {
    return <p>{this.props.myValue}</p>;
  }
}

Enki.??? = {
  ???: "Enki",
}

const element = <??? />;

ReactDOM.render(
  ???,
  document.getElementById('root')
);

```


* `defaultProps`
* `myValue`
* `Enki`
* `element`
* `default`
* `props`
* `Enki myValue="Enki"`
* `class`
* `createElement`

---
## Revision

Complete the missing gaps so that the `render`ed element under `root` reads `"Enki"`:

```jsx
class Enki extends React.Component {
  render() {
    return <p>{this.???.???}</p>;
  }
}

const element = <???
  myValue="Enki" />;

ReactDOM.render(
  element
  document.getElementById('root')
);
```


* `props`
* `myValue`
* `Enki`
* `defaultProps`
* `element`
* `default`
* `class`

---
## Footnotes

[1:Return & parentheses]
Although not necessary, it is highly recommended to use parentheses to wrap your JSX code that goes over multiple lines. Let's look at an example:

```jsx
// this is perfectly valid syntax
// but it is hard to read
let el = <ul>
  <li>
    Hello World
  </li>
</ul>;

// this is much better to read
// but it does not represent valid syntax
// and it will give an error on compilation
let el = 
  <ul>
    <li>
      Hello World
    </li>
  </ul>;

// so, to improve readability,
// we enclose the JSX code in parentheses
let el = (
  <ul>
    <li>
      Hello World
    </li>
  </ul>
)
```
