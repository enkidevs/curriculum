# **Node** `os` module
author: catalin

levels:

  - basic

  - beginner

type: normal

category: how to

links:

  - '[nodejs.org](https://nodejs.org/api/os.html){website}'

---
## Content

Basic operating system related utility functions are available through **Node**'s `os` module.

Firstly, the module must be imported:
```javascript
var os = require("os")
```

Get operating system name:
```javascript
console.log(os.type());
```

Get operating system platform:
```javascript
console.log(os.platform());
```
Get CPU's architecture (`x64`,`arm` or `ia32`):
```javascript
console.log(os.arch());
```
Get an array with various infrormation about the CPUs:
```javascript
console.log(os.cpus());
```
Get the total system memory in bytes:
```javascript
console.log(os.totalmem());
```
Get an array with various information about all the Network Interfaces:
```javascript
console.log(os.networkInterfaces());
```

---
## Practice

Get the total system memory in bytes:

```
var os = require(“os”);
console.log(os.???());
```
*`totalmem`
*`memory`
*`bytesmemory`
*`memorytotal`

---
## Revision

Suppose :
```javasript
var os = require("os");
```

Log the CPU's architecture:
```javascript
console.log(???.???());
```
*`os`
*`arch`
*`platform`
*`type`
*`networkInterfaces`
*`CPU`
*`cpu`
