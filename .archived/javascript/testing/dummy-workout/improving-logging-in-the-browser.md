---
author: daniel_adelberg

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

tags:

  - console

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/Console){website}

  - '[dailyjs.com](http://dailyjs.com/2012/02/02/console/){website}'

---
# Improving logging in the browser

---
## Content

The `console` object offers several lesser-known methods to improve logging. 

```
console.dir([object])
```

For example, the above takes an object for input and present it as a hierarchical listing with disclosure triangles, allowing one to view the content of child objects.

Consider using also: 
```javascript
console.info(msg [, sub1, ... ]) 
console.warn(msg [, sub1, ... ])
```
The `info` method adds an 'i' symbol next to the ouput and the  `warn` method adds a warning symbol.

Finally, note that `.log`, `.info` and `.warn` all supports substitution and formatting:

```
console.log('%s is %d.', 'Ted', 32)
// Ted is 32.
```

---
## Revision

What `console` method can be used to view the content of child object of a parent?
```javascript
console.???([object]);
```

* dir
* info
* warn
* log