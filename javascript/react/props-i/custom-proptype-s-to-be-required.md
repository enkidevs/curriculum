---
author: catalin

levels:
  - beginner
  - basic
  - advanced
  - medium

type: normal

category: how to

links:
  - '[ian-thomas.net](http://www.ian-thomas.net/custom-proptype-validation-with-react/){website}'

parent: custom-validations-for-props

aspects:
  - deep

---
# Require custom `propTypes` validators

---
## Content

There is a way of creating your own `propTypes` validator function that can also be suffixed with `.isRequired`. This is done by using chained validators and the `bind()` function.

Suppose we have a basic *validator function* for length check. [1]

The *validator function* that will be used will be called `lengthChecker`:

```jsx
let lengthChecker = createChainableChecker(
  textLengthChecker);
```

The `createChainableChecker` should look like:

```jsx
function createChainableChecker(validate) {
  function checkType(isRequired, props,
    propName, componentName) {
    if(props[propName] == null) {
      if(isRequired) {
        return new Error("missing prop");
      }
    return null;
    } else {
      return validate(props, propName,
        componentName);
    }
  }
  let chainedChecker = checkType.bind(null,
    false);
  chainedChecker.isRequired =
    checkType.bind(null, true);
  return chainedChecker;
}

```

Now we can use it like:

```jsx
text = lengthChecker.isRequired,
```

---
## Practice

Consider you need to implement a custom `propTypes` validator. What should you code do if the validator is used like: `myValidator.isRequired`, but no prop is passed to it?

???

* throw an error
* send a notification to the user
* crash the webpage
* don't allow the component to render again

---
## Revision

Is there a way to make a custom `propTypes` validator function implementing the `.isRquired` behavior of normal `propTypes` ?

???

* Yes
* No
* Only in `ES6`
* Only in `ES5` and `ES6`
* Only with an external package

---
## Footnotes
[1:code]

```jsx
function textLengthChecker(props, propName,
  componentName) {
  if(props[propName]){
    let text = props[propName];
    if (typeof text === 'string') {
      return text.length < 200 ? null :
        new Error (propName + "too long");
    }
  }
  //assume everything is ok
  return null;
}
```

