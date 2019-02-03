---
author: catalin

levels:
  - advanced
  - medium

type: normal

category: best practice

links:
  - '[twitter.com](https://twitter.com/dan_abramov/status/664581975764766721){website}'

aspects:
  - introduction

---
# Export selectors with related reducers

---
## Content

Selectors are used to compute derived data, thus making Redux store the minimal possible state. Reducers specify how the application's state changes in response to some actions.

A good practice in Redux is to export your **selectors** with the related **reducers**.
Doing so, views and action creators can be decoupled from the state shape tree.

```javascript
function visibleIds(state = [], action){
  switch (action.type) {
    case RECEIVE_PRODUCTS:
      return action.products.map(
        product => product.id)
    default:
      return state
  }
}
export default combineReducers({
  byId,
  visibleIds
})
export function getProduct(state,id) {
  return state.byId[id]
}
export function getVisibleProducts(state) {
  return state.visibleIds.map(
    id => getProduct(state,id))
}
```

Another example:

```javascript
function mapStateToProps(state) {
  return {
    products: getVisibleProducts(
      state.products)
  }
}
export default connect(
  mapStateToProps,
  { addToCart }
)(ProductsContainer)

```

---
## Practice

A good practice in Redux is to export your ??? with the related ???.

* selectors
* reducers
* views
* doms
* components
* instances
* computation functions
* state
* props

---
## Revision

Selectors are used to compute ???, therefore ensuring that Redux stores the ???.

* derived data
* minimal possible state
* maximum possible state
* selected data
* exported data
* exported state
* selected state

