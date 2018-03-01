# Async flow in **Redux**
author: catalin

levels:

  - advanced

  - medium

type: normal

category: how to

tags:

  - ''

notes: >-
  This insight should be given right before or after the specific Middleware
  insight. ( 56a2137805a87a0600cfa409 )

links:

  - '[redux.js.org](http://redux.js.org/docs/advanced/AsyncActions.html){website}'

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/34570758/why-do-we-need-middleware-for-async-flow-in-redux){website}

---
## Content

The default **Redux** store only supports synchronous data flow. However, with the help of `middleware` asynchronous data flow is also possible.

Packages such as `redux-thunk` and `redux-promise` provide syntax sugar as to help you achieve such data flow.

The main difference between a custom implementation of middleware or using a specific package is that the former wraps the store’s `dispatch()` method and allows you to dispatch something other than actions such as functions. This functions do not have to be **pure** so asynchronous API calls are permitted.

Code sample for using `redux-thunk`:
```javascript
// action creator
function loadData(userId) {
  return dispatch => fetch(
`http://data.com/${userId}`) 
// Redux Thunk handles these
    .then(res => res.json())
    .then(
      data => dispatch({ 
type: 'LOAD_DATA_SUCCESS', data }),
      err => dispatch({ 
type: 'LOAD_DATA_FAILURE', err })
    );
}
//component
componentWillMount() {
  this.props.dispatch(
    loadData(this.props.userId)); 
}
```