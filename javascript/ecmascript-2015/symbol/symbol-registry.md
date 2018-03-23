---
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

inAlgoPool: false


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol){website}'


---

# Symbol Registry

---
## Content

As we saw earlier even if you create two symbols with the same description/key JavaScript considers them unique.

```
var sym1 = Symbol("Enki");
var sym2 = Symbol("Enki");
sym1 === sym2; //false
```

If you want to refer to symbols via a keys use the **Symbol.for** method to work with the **Symbol Registry**.

**Symbol.for** will create a symbol if it does not exist already and return the same symbol if it has already been defined.

```
let sym1 = Symbol.for('Enki');
let sym2 = Symbol.for('Enki');
sym1 === sym2; //true
```

The Symbol registry is even maintained across **realms** such as iframes and service workers.

**Symbol.keyFor**

You can use the **Symbol.keyFor** method to pass in a symbol and return the description associated with the symbol when it was first created:

```
Symbol.keyFor(sym1); //"Enki"
```

