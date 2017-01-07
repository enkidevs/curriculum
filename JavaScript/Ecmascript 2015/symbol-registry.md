# Symbol Registry
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

As we saw earlier even if you create two symbols with the same description/key JavaScript considers them unique. 

```
var sym1 = Symbol("Enki");
var sym2 = Symbol("Enki");
sym1 === sym2; //false
```

If you want to refer to symbols via keys use the **Symbol.for** method which allows us to work with the **Symbol Registry**.

**Symbol.for** will create a symbol if it does not exist already and return the same symbol if it has already been defined. 

```
let enkiSymbol = Symbol.for('Enki');
let enkiSymbol2 = Symbol.for('Enki');
enkiSymbol=== enkiSymbol2; //true
```

The Symbol registry is even maintained across **realms** such as iframes and service workers.

You can use the Symbol.keyFor method to pass in a symbol and return the description associated with the symbol when it was first created:

```
Symbol.keyFor(enkiSymbol2); //"Enki"
```
---