---
author: tommarshall
type: normal
category: must-know
tags:
  - introduction
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Function Call Method


---

## Content

The `call` method allows changing the this object of a function from the original context to the context of the new object specified by `thisObj`. 

`currObj` is the object to be used as the current object.

`arg1`, `arg2`, ... , `argN` are arguments passed onto the method.

If `currObj` is not supplied, the `currObj` is set to the global object.

Creating a function to call returning a string of the object and arguments:

```javascript
function callObject(arg1, arg2) {
  var str;
  str += "Object: " + this + ". ";
  str += "Arguments: "
  for (i in callObject.arguments){
    str += callObject.arguments[i] + " ";
  }
  return str;
}
```

Calling the function using the call method:

```javascript
callObject.call(2, 4, 6);
```

The current object would be changed to 2, and the string generated and returned would be:

```javascript
str = "Object: 2. Arguments: 4 6 "
```


---

## Practice

If `currObj` is not supplied, what is it set to by default? 

???

- The global object.
- Equal to null.
- The previous object.
- The boolean false.


---

## Revision

What is the object and the arguments of the function?

```javascript
callObject.call(null, 4, 2);
```

???

- Object: null, Arguments: 4,2
- Object: 4, Arguments 2
- Object: 4, Arguments: null, 2
- This gives an error
 
