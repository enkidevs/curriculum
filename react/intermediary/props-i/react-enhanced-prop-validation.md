---
author: catalin
type: normal
category: how to
links:
  - >-
    [Type checking with
    PropTypes](https://facebook.github.io/react/docs/typechecking-with-proptypes.html#react.proptypes){website}
  - '[PropTypes Library](https://www.npmjs.com/package/prop-types){website}'
parent: default-values-for-props
---

# Enhanced `props` Validation


---

## Content

In addition to standard *prop validations* for *JavaScript* primitives there are other types available through `PropTypes`.

Validate for anything that can be rendered (e.g. numbers, strings, elements or even an array containing these types):

```plain-text
myNode: PropTypes.node,
```

Validate for a React element:

```plain-text
myElem: PropTypes.element,
```

Validate for an instance of a class (using `instanceof` operator):

```plain-text
myEnki: PropTypes.instanceOf(Enki),
```

Validate for specific values treating it as an `enum`:

```plain-text
myEnum: PropTypes.oneOf(['a', 'b']),
```

Validate for multiple types simultaneously:

```plain-text
myProp: PropTypes.oneOfType([
  PropTypes.string,
  PropTypes.instanceOf(Enki)
]),
```

Validate for an array of a certain type:

```plain-text
myArray: PropTypes.arrayOf(
  PropTypes.bool),
```

Validate for an object with prop values of a certain type:

```plain-text
myObjOf: PropTypes.objectOf(
  PropTypes.number),
```

Validate for an object taking on a particular shape:

```plain-text
myObjWithShape: PropTypes.shape({
  age: PropTypes.number,
  name: PropTypes.string
}),
```

Validate for an object with warnings on extra properties:

```plain-text
myObjWithStrictShape: PropTypes.exact({
  age: PropTypes.number,
  name: PropTypes.string
})
```

Validate for a value with any data type:

```plain-text
myRequiredValue: PropTypes.any.isRequired
```


---

## Practice

Validate if `myProp` is an instance of the `Enki` class:

```jsx
function Test(props) {
  return <p>Testing {myProp}</p>;
}

Test.propTypes = {
  myProp: ???.???(???)
};
```

- `PropTypes`
- `instanceOf`
- `Enki`
- `enki`
- `ObjectOf`
- `PropType`
- `propType`
- `oneOf`


---

## Revision

Validate if `myProp` is an instance of the `Enki` class:

```jsx
function Test(props) {
  return <p>Testing {myProp}</p>;
}

Test.propTypes = {
  myProp: ???.???(???)
};
```

- `PropTypes`
- `instanceOf`
- `Enki`
- `enki`
- `ObjectOf`
- `PropType`
- `propType`
- `oneOf`
 
