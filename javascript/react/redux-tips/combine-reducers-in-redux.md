---
author: catalin

levels:

  - basic

  - beginner

type: normal

category: how to


links:

  - '[rackt.org](http://rackt.org/redux/docs/api/combineReducers.html){website}'

aspects:
  - deep

---

# Combine *reducers* in **Redux**

---
## Content

When applications become more complex, the *reduction function* can and should be split into separate functions, managing different parts of the **state** as to keep the code logic tidy and scalable. This is done by using the special method `combineReducers()`.


This function will transform an object with different reducer functions as parameters into a single reducer function that can be passed to `createStore()`.

Call the function:
```javascript
combineReducers({
  firstReducer : myFirstReducer,
  secondReducer : mySecondReducer });
```
The keys define the shape of the **state object**.
```javascript
{firstReducer,secondReducer}
```
The common practice is to be consistent with name such as that reducers have the same name as the slices they manage. Therefore, **ES6** shorthand notation can be used:
```javascript
combineReducers({firstReducer,
secondReducer});
```

This is equivalent to:
```javascript
combineReducer({firstReducer:firstReducer,
  secondReducer:secondReducer});
```

---
## Practice

Once the `combineReducers()` function has transformed an object with different reducer functions into a single reducer function, where is it then passed to? ???


* `createStore()`
* `createReducer()`
* `createObject()`

---
## Revision

What special method is used to combine different reduction functions with the scope of keeping your code scalable?
???


* `combineReducers()`
* `combine()`
* `createStore()`
* `addReducer()`


