---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: pattern


links:

  - '[rackt.org](http://rackt.org/redux/docs/basics/UsageWithReact.html){website}'
  - '[github.com](https://github.com/rackt/react-redux/blob/master/docs/quick-start.md#quick-start){website}'
  - '[github.com](https://github.com/rackt/react-redux/blob/master/docs/api.md#api){website}'

notes: This can be also placed in the react subtopic

aspects:
  - introduction

---

# Use **Redux** with **React**

---
## Content

*Redux* has no relation to *React*, yet it works well with this framework as UI can be described as functions of *state*, which **Redux** can update in response to actions.

React bindings are not provided by default in Redux, so `react-redux` must be installed:
```bash
npm install --save react-redux
```
The general paradigm is that only top level components (e.g. route handlers) should be aware of Redux.

To turn a presentational container into a component, the `connect` function must be imported:
```javascript
import { connect } from 'react-redux'

```
Canonical form of `connect()` function:
```javascript
connect([mapStateToProps],
[mapDispatchToProps],[mergeProps],[options])

```

This will connect a React component to a Redux store, not modifying the component class passed, but instead returning a new, connected component class.

Inject `dispatch` and don't listen to the store:
```javascript
export default connect()(myReducer)
```

---
## Practice

Connect the React component to the Redux store without modifying the component class passed, returning a new connected component class:

```javascript
connect([???], [mapDispatchToProps],
        [???], [options])
```


* `mapStateToProps`
* `mergeProps`
* `connectProps`
* `storeProps`
* `componentClass`
* `returnComponent`

---
## Revision

What function must be imported as to turn a presentational container into a component?
```
import { ??? } form `react-redux`
```


* `connect`
* `container`
* `dispatch`


