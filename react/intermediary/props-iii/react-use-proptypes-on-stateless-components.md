---
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature


links:

  - '[Type checking with PropTypes](http://facebook.github.io/react/docs/typechecking-with-proptypes){website}'

parent: custom-proptype-s-to-be-required

notes: >-
  Originally from Dan Abramov
  http://twitter.com/dan_abramov/status/658710159125037056 but don't have
  permission to use yet so re-wrote a little

aspects:
  - workout
  - deep

---

# Use `propTypes` on stateless components

---
## Content

Since **React 0.14** it is possible to define components as an arrow function:

```jsx
let comp = ({enki}) => <h1>{enki}</h1>;
```

Yet, a type for the arguments can still be specified using `propTypes`:

```jsx
comp.propTypes = {
  enki: PropTypes.string
};
```

---
## Practice

Consider the following component defined as a function:
```javascript
let enki = ({enki}) => <h1>{enki}</h1>;
```

Complete the code snippet to enforce **prop validation**:
```javascript
???.??? = {
  enki: PropTypes.string,
}
```


* `enki`
* `propTypes`
* `set`
* `get`
* `React`
* `ReactDOM`
* `props`

---
## Revision

Consider the following component defined as a function:
```javascript
let enki = ({enki}) => <h1>{enki}</h1>;
```

Complete the code snippet to enforce **prop validation**:
```javascript
???.??? = {
  enki: PropTypes.string,
}
```


* `enki`
* `propTypes`
* `set`
* `get`
* `React`
* `ReactDOM`
* `props`


