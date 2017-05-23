# Children in **React**
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: feature

parent: custom-proptype-s-to-be-required

links:

- >-
  [learn.co](https://learn.co/lessons/react-this-props-children){website}

- >-
  [facebook.github.io](https://facebook.github.io/react/docs/react-api.html#react.children){website}


---
## Content

**React** provides an *opaque* data structure backed by a `React.Children` class called `this.props.children`.

This special `prop` is passed to a `component` automatically.

It can be used to access the `children` of any parent component from within it.

```jsx
<Wrapper>
  <A />
  <B />
</Wrapper>

// <A /> and <B /> are the children of
// <Wrapper>

```

Keep in mind that a `component` can have a **single** child / **no** children, but also an **array** of children.

You can make use of `props.children` to dynamically render `component`s and `element`s in your parent without explicitly passing them as `props`.

Consider the following component:
```jsx
class Wrapper extends React.Component{
	render() {
  	return (
    	<div>
      	{this.props.children}
      </div>
    );
  }
}

```
Our component will render nothing but the enclosed `<div>` in the following scenario:
```jsx
ReactDOM.render(
  <Wrapper></Wrapper>,
  document.getElementById('root')
);
```

However, when passing some `children`, we can see them rendered within that `<div>`:
```jsx
ReactDOM.render(
  <Wrapper>
    <h1>Hello</h1>
    <h2>World</h2>
  </Wrapper>,
  document.getElementById('root')
);
```

The `React.Children` class provides a bunch of methods useful for iterating and managing `children`.

---
## Practice

What will be rendered within the `div` with `id="main"`?
```jsx
function Exercise(props) {
	return (
  	<div id="main">
  		{props.children}
  	</div>
    );
}

ReactDOM.render(
  <Exercise><h1>Main</h1></Exercise>,
  document.getElementById('root')
);

```

`???`

* `<h1>Main</h1>`
* `nothing`
* `<p>Main</p>`
* `root`
* `Exercise`
* `<h2>Main</h2>`

---
## Revision

What is the minimum number of elements `props.children` can hold?

???

* `zero`
* `one`
* `at least two`
