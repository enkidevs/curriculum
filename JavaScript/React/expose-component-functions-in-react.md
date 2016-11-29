# Expose Component Functions in **React**
author: catalin

levels:

  - basic

  - beginner

type: normal

category: must-know

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/tips/expose-component-functions.html){website}

---
## Content

Child-parent communication in **React** can be achieved by exposing functions of the child with the help of `refs`.

A `ref` can be explicitly set to a component:
```
<MyComponent ref="myComponent"/>
```
Then by accessing the `refs`, the component's functions can be called:
```
this.refs.myComponent.myFunction();
```
A `ref` can also be specified inside the parent class during `rendering`:
```
render : function() { 
return(
  // rest of the code
  <MyComponent ref={'myComponent'} />
  ); 
}


```
The call of the function (in our example, `myFunction()`) is done in exactly the same way.

---
## Revision

Add `enki` as the `ref` to the component predefined and access it accordingly:
```javascript
<MyComponent ???="enki" />

//access:
this.???.???.myFunction();
```

*`ref`
*`refs`
*`enki`
*`references`
*`MyComponent`