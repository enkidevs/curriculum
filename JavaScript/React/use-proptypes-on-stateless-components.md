# Use `propTypes` on stateless components
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

parent: custom-proptype-s-to-be-required

notes: >-
  Originally from Dan Abramov
  http://twitter.com/dan_abramov/status/658710159125037056 but don't have
  permission to use yet so re-wrote a little

links:

  - >-
    [facebook.github.io](http://facebook.github.io/react/docs/component-specs.html#proptypes){website}

---
## Content

Since **React 0.14** it is possible to define components as a simple function:
```
let comp = ({enki}) => <h1>{enki}</h1>;
```

Yet, a type for the arguments can still be specified using `propTypes`:

```
comp.propTypes = {
  enki: React.PropTypes.string
};
```

---
## Practice

Consider the following component defined as a simple function:
```javascript
let enki = ({enki}) => <h1>{enki}</h1>;
```

Complete the code snippet to enforce **prop validation**:
```javascript
???.??? = {
  enki: React.PropTypes.string,
}
```

*`enki`
*`propTypes`
*`set`
*`get`
*`React`
*`ReactDOM`
*`props`

---
## Revision

Consider the following component defined as a simple function:
```javascript
let enki = ({enki}) => <h1>{enki}</h1>;
```

Complete the code snippet to enforce **prop validation**:
```javascript
???.??? = {
  enki: React.PropTypes.string,
}
```

*`enki`
*`propTypes`
*`set`
*`get`
*`React`
*`ReactDOM`
*`props`
