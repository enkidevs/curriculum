---
author: catalin
type: normal
category: how-to
tags:
  - introduction
  - workout
links:
  - '[nodejs.org](https://nodejs.org/api/os.html){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# **Node** `os` module


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

```javascript
var os = require(“os”);
console.log(os.???());
```

- totalmem
- memory
- bytesmemory
- memorytotal


---

## Revision

Suppose :

```javascript
var os = require("os");
```

Log the CPU's architecture:

```javascript
console.log(???.???());
```

- os
- arch
- platform
- type
- networkInterfaces
- CPU
- cpu
