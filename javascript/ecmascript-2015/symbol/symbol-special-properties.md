# Symbol Special Properties
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

inAlgoPool: false

category: must-know

links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol){website}'

---
## Content

Symbols behave differently to other primitives such as strings and numbers.

Lets imagine for this section we declare the following object:

```
var obj = {}
obj["company"] = "Enki"
obj[Symbol()]="You wont see me";
```

You will find symbols are ignored in **for..in** loops:
```
for(var i in obj){
console.log(i)
}
//company
```

Symbols do not show up in **object.keys**
```
Object.keys(obj);
//["company"]
```

Symbols are not returned from a call to **getOwnPropertyNames**:
```
Object.getOwnPropertyNames(obj);
//["company"]
```

**JSON.stringify** ignores symbols:
```
JSON.stringify(obj);
//"{"company":"enki"}"
```

Note you can retrieve symbols with **getOwnPropertySymbols**
```
Object.getOwnPropertySymbols(obj);
```
