# Spread attributes
author: catalin

levels:

  - basic

  - beginner

type: normal

category: how to

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/jsx-spread.html#spread-attributes){website}

---
## Content

Props can be passed to **React** components through **JSX** with the help of the **ES6** spread operator (`...`).

Suppose we want the following component with `name` and `value` props:
```jsx
var component = <Component name="enki"
  content= "cool content" />;

```
`name` and `value` can be bundled inside an object.
```jsx
var props = {
  name: "enki",
  content: "cool content"
};

```
Subsequently, the object can be reused:
```jsx
var component = <Component {...props} />;
var enki = <Component {...props} />;
```

Note the usage of the spread operator when passing the props: `{...props}`.

Props can also be overwritten:
```jsx
var enki = <Component {...props}
  content="other value" />
```

Now the value of `enki.props.content` will be `"other value"`.
