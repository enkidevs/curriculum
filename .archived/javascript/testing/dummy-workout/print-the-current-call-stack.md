---
author: Bruno

levels:

  - advanced

  - medium

type: normal

category: how to

links:

  - '[stackoverflow](http://stackoverflow.com/questions/280389){discussion}'

---
# Print the current call stack

---
## Content

Use the below to print the current call stack for debugging purposes:

```
function stack() { 
  try { throw Error() } 
  catch(e) { return e.stack }
}
console.log(stack())
```

---
## Revision

Complete the following code snippet to print the current call stack, which can be used for debugging purposes:

```javascript
function stack() {
   try { throw ??? }
   catch(e) { return ??? }
}
console.log(stack())
```

* Error()
* e.stack
* Fault()
* Error
* e
* stack
* error.stack
* stack.e