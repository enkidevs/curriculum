---
author: catalin
type: normal
category: how to
tags:
  - introduction
  - workout
links:
  - '[nodejs.org](https://nodejs.org/api/os.html){website}'
---

# **Node** `os` module


---

## Content

Basic operating system related utility functions are available through **Node**'s `os` module.

Firstly, the module must be imported:

```plain-text
var os = require("os")
```

Get operating system name:

```plain-text
console.log(os.type());
```

Get operating system platform:

```plain-text
console.log(os.platform());
```

Get CPU's architecture (`x64`,`arm` or `ia32`):

```plain-text
console.log(os.arch());
```

Get an array with various infrormation about the CPUs:

```plain-text
console.log(os.cpus());
```

Get the total system memory in bytes:

```plain-text
console.log(os.totalmem());
```

Get an array with various information about all the Network Interfaces:

```plain-text
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

```plain-text
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
