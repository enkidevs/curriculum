---
author: catalin

levels:

  - basic

  - beginner

type: normal

category: feature


links:

  - '[facebook.github.io](https://facebook.github.io/react/docs/top-level-api.html#reactchildren){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---

# Dealing with `this.props.children`

---
## Content

**React** provides the user with the useful class `React.Children` which provides various utilities for dealing with the opaque data structure `this.props.children`.

`map` creates a new collection of children by invoking a function on every immediate child:

```js
React.Children.map(
  children, 
  functionToCallOnEachChild
)
```

Keep in mind that if `children` is a nested object or an array it will be traversed and also that `function` will never be passed to the container objects.

`forEach` works similarly to `map`, where it also iterates on each child but this time it ignores the returned value of its callback and doesn't create a new collection:

```js
React.Children.forEach(
  children, 
  functionToCallOnEachChild
)
```

Return the total number of components in `children`:

```js
React.Children.count(
  children
)
```

Return the only child in `children`:

```js
React.Children.only(
  children
)
```

Manipulate a collection of `children` by converting it into an array:

```js
React.Children.toArray(
  children
)
```

Now, let's see how you can use these in your code. Let's start by creating a component that counts the total number of children:

```jsx
class CountChildren extends React.Component{
  render() {
    return (
      <p>
        {React.Children.count(
          this.props.children
        )}
      </p>
    );
  }
}

ReactDOM.render(
  <CountChildren>
    <h1>I am the first child</h1>
    <h2>And I am the second child</h2>
  </CountChildren>,
  document.getElementById("root")
);
// Renders "2"
```

If you wanted to return only the first 5 children, you could use:

```jsx
class LimitChildren extends React.Component{
  render() {
    return React.Children.map(
      this.props.children,
      (child, i) => {
        if (i <= 5) return child;
        return null;
      }
    );
  }
}
```

---
## Practice

What method is used to invoke a function on every immediate child within children, and returns an array? ???


* `map`
* `forEach`
* `fn`
* `count`
* `only`
* `toArray`

---
## Revision

What method is used to invoke a function `fn` on every immediate child, but not to return an array?

???


* `forEach`
* `map`
* `count`
* `only`


