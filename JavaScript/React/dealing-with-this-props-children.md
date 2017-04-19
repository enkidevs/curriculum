# Dealing with `this.props.children`
author: catalin

levels:

  - basic

  - beginner

type: normal

category: feature

parent: custom-proptype-s-to-be-required

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/top-level-api.html#react.children){website}

---
## Content

**React** provides the user with the useful class `React.Children` which provides various utilities for dealing with the opaque data structure `this.props.children`.

`map` invokes a function on every immediate child within `children`, returning an array:
```javasript
array React.Children.map(object children,
  function fn[, object thisArg]);
```
Keep in mind that if `children` is a nested object or an array it will be traversed and also that `fn` will never be passed the container objects.

`forEach` works like `map`, yet it does not return an array:
```javascript
React.Children.forEach(object children,
  function fn(, object thisArg]);
```
Return the total number of components in `children`:
```javascript
number React.Children.count(object children)
```

Return the only child in `children`:
```javascript
object React.Children.only(object children);
```
Manipulate collections of `children` by converting them into arrays:
```javascript
array React.Children.toArray(object
  children);
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

*`forEach`
*`map`
*`count`
*`only`
