# Truthy Falsy
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

standards:
  js.identify-syntax.2: 10
  js.evaluate-expressions.3: 10
  js.evaluate-expressions.10: 10

tags:
  - introduction
  - workout

---
## Content

All values in JavaScript have a special inherent *boolean* value of either *true* or *false*.

The following are always considered false or falsy values:

- null
- 0
- false
- "" (empty string)
- undefined
- NaN (Not A Number)

Every other value is considered to have a value of true.

This includes some things you might not expect such as:

- Empty objects
- The string version of zero e.g. "0"
- Empty arrays and functions

**But why is this important?**

This is often used as a shortcut for conditional logic such as testing if an object is null.

For example as *null* or *undefined* objects have an inherent value of *false* we can use this with an if statement to perform different logic:

```
if (myObj){
   //object exists
}
else {
   //object does not exist
}
```

---
## Practice

A null object is ???.

*falsy
*truthy
*neither falsy nor truthy.

---
## Revision

An empty string is ???.

*falsy
*truthy
*neither falsy nor truthy
