---
author: catalin
levels:
  - basic
  - beginner
type: normal
category: must-know
standards:
  javascript.identify-common-design-patterns.2: 10
tags: []
links:
  - '[nodejs.org](https://nodejs.org/docs/latest/api/globals.html){website}'
  - >-
    [nodejs.org](https://nodejs.org/api/process.html#process_process_env){website}
aspects:
  - introduction
  - workout
---

# Global Objects and Environment Variables in 

**Node**


---

## Content

**Node** provides a set of useful objects and environment variables.

Get the directory of the current running script
(in `User/MyUser/Desktop`):

```javascript
console.log(__dirname);
// will log User/MyUser/Desktop
```

Get the path of the code being executed:

```javascript
console.log(__filename);
// will log User/MyUser/Desktop/script.js
```

This object is not necessarily global, but is local to each module.

Get command line arguments:

```javascript
console.log(process.argv);
```

Here `process` is a global object, `process.argv` will generate an array containing the command line arguments starting from index `2` (third element in the array) as the first two represent the path to **Node** application and the path to the current file.

Get the user environment:

```javascript
console.log(process.env);
```

Get current platform:

```javascript
console.log(process.platform);
```


---

## Practice

Get the path of the code being executed:

```javascript
console.log(???);
```

* \_\_filename
* \_\_dirname
* dirname
* filename
* pathname
* \_\_pathname


---

## Revision

Get command line arguments:

```javascript
console.log(???.???);
```

* process
* argv
* env
* platform
* \_\_filename
* args
* node
* console

