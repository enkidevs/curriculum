# **JSX** Spread attributes
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: how to

parent: the-ref-callback-attribute

links:

  - >-
    [gist.github.com](https://gist.github.com/sebmarkbage/07bbe37bc42b6d4aef81){website}


---
## Content

Props can be passed to **React** components through **JSX** with the help of the **ES6** spread operator (`...`). 

Suppose we want the following component with `name` and `content` props:
```jsx
const component = <Component name="enki"
  content="cool content" />;

```
`name` and `content` can be bundled inside an object.
```jsx
const props = {
  name: 'enki',
  content: 'cool content',
};

```
Subsequently, the object can be reused:
```jsx
const component = <Component {...props} />;
const enki = <Component {...props} />;
```

Note the usage of the spread operator when passing the props: `{...props}`.

Props can also be overwritten:
```jsx
const enki = <Component {...props}
  content="other value" />
```

Now the value of `enki.props.content` will be `"other value"`.

---
## Practice

What will the value of `test.props.x` and `test.props.y` in the following snippet?
```jsx
function Test(props) {
  return (
    <div>
      <p>{props.x}</p>
      <p>{props.y}</p>
    </div>
  );
}

const props = {
  x: 'dog',
  y: 'dog',
};

const test = <Test {...props}
  x="cat" />;

// test.props.x = ???
// test.props.y = ???
```

* `'cat'`
* `'dog'`
* `error`
* `'dogcat'`
* `'catdog'`


---
## Revision

What will the value of `test.props.x` in the following snippet?
```jsx
function Test(props) {
  return <p>{props.x}</p>;
}

const props = {
  x: 'dog',
  y: 'cat',
};

const test = <Test {...props}
  x="cat" />;

// test.props.x = ???
```

* `'cat'`
* `'dog'`
* `error`
* `'dogcat'`
* `'catdog'`
