---
author: kapnobatai136

levels:

  - basic

  - beginner

type: normal

category: feature


links:

  - '[React Children](https://facebook.github.io/react/docs/top-level-api.html#reactchildren){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---

# `React.Children` methods

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

Keep in mind that if `children` is an array it will be traversed. Also, `function` will never be passed to the container objects.

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

Note: this method will not calculate the count of nested components, even if they are enclosed in `<React.Fragment>`

Verifies that children has only one child (a React element) and returns it. Otherwise this method throws an error:

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

This returns returns the children as a flat array, with keys assigned to each child. Note that this method will change the keys of all the elements in the children array, even if they had a key before.

---
## Practice

What method is used to invoke a function on every immediate child within children, and returns an array? 

???

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


