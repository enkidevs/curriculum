# Symbol Special Properties
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

  - '[ponyfoo.com](https://ponyfoo.com/articles/es6-symbols-in-depth)'

---
## Content

Symbols behave slightly differently to other primitives such as strings and numbers.

Lets imagine we declare the following object:

```
var obj = {}
obj["company"] = "Enki"
obj[Symbol()]="You wont see me";
```

Symbols are ignored in for..in loops:
```
for(var i in obj){
console.log(i)
} //company
```

Symbols do not show up in object.keys
```
Object.keys(obj); //["company"]
```

Symbols are not returned from a call to getOwnPropertyNames:
```
Object.getOwnPropertyNames(obj)
["company"]
```

JSON.stringify ignores symbols:
```
JSON.stringify(obj); // "{"company":"enki"}"
```

Note you can retrieve symbols with getOwnPropertySymbols
```
Object.getOwnPropertySymbols(obj)
```
---