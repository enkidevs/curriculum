# Global Objects and Environment Variables in **Node**
author: catalin

levels:

  - basic

  - beginner

type: normal

category: must-know

links:

  - '[nodejs.org](https://nodejs.org/docs/latest/api/globals.html){website}'

  - >-
    [nodejs.org](https://nodejs.org/api/process.html#process_process_env){website}

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

* `__filename`
* `__dirname`
* `dirname`
* `filename`
* `pathname`
* `__pathname`

---
## Revision

Get command line arguments:
```javascript
console.log(???.???);
```

*`process`
*`argv`
*`env`
*`platform`
*`__filename`
*`args`
*`node`
*`console`
