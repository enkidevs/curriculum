---
author: nene
levels:
  - basic
  - advanced
  - medium
type: normal
category: how-to
tags:
  - modules
links:
  - >-
    [www.sitepoint.com](http://www.sitepoint.com/understanding-es6-modules/){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Handling modules


---

## Content

Anything that is declared in a file in an `ES6` project isn't available outside of the said file. 

Use `export` to make it accessible. Here's how exporting a user class works:  

```
//user.js

var localVar = 123; // Invisible externally

export default function User(age){
	this.age = age;
}; // Can be imported by other files

```

Import the class in another file: 

    //user_info.js

    import User from 'user';
    var newbie = new User(22);


---

## Revision

Import the `enki` class in another file :

```javascript
??? Enki ??? 'enki';
```

- import
- from
- to
- export
- default
- function
- require
 
