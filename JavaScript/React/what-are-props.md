# What are `props`?
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: the-react-component

links:


  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/components-and-props.html){website}

  - >-
    [tutorialspoint.com](https://www.tutorialspoint.com/reactjs/reactjs_props_overview.htm){website}

---
## Content

As discussed before, `component`s can take input in a similar way to a function, via `props`.

`props` is a plain `JS` object accessible via `this.props`, its properties representing the arguments of a `component`.

An important aspect of the `props` object is that it is **immutable**. That means `props` can't and shouldn't be changed within a `component`, but only from its *parent*(s).

Consider the component:
```jsx
class Greeting extends React.Component {
  render() {
    return <h1>Enki greets
      {this.props.name}</h1>;
  }
}
```

If we want to `render` it, the `element` must specify the value of `name` prop:
```jsx
const element = <Greeting
  name="John" />;
```

Now, when `render`ed, `element` will display "Enki greets John".

You can also define **default props** in the following manner:
```jsx
Greeting.defaultProps = {
  name: "User",
}
```

This allows us to create a `Greeting` element without specifying the `name`:
```jsx
const element = <Greeting />;
```

If we `render` it now (using `ReactDOM.render`), we will see "Enki greets User";

---
## Practice

Complete the missing gaps so that the `render`ed output is "Enki":
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

Complete the missing gaps so that the `render`ed element under `root` reads "Enki":

```jsx
class Enki extends React.Component {
  render() {
    return <p>{this.???.???}</p>;
  }
}

const element = <???
  myValue="Hello there" />;

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
