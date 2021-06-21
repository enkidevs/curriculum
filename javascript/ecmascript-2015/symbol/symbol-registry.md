---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Symbol Registry


---

## Content

As we saw earlier even if you create two symbols with the same description/key JavaScript considers them unique.

```javascript
var sym1 = Symbol("Enki");
var sym2 = Symbol("Enki");
sym1 === sym2; //false
```

### Symbol.for

If you want to refer to symbols via a keys use the **Symbol.for** method to work with the **Symbol Registry**.

**Symbol.for** will create a symbol if it does not exist already and return the same symbol if it has already been defined.

```javascript
let sym1 = Symbol.for('Enki');
let sym2 = Symbol.for('Enki');
sym1 === sym2; //true
```

The Symbol registry is even maintained across **realms** such as iframes and service workers.

### Symbol.keyFor

You can use the **Symbol.keyFor** method to pass in a symbol and return the description associated with the symbol when it was first created:

```javascript
Symbol.keyFor(sym1); //"Enki"
```


---

## Practice

Fill in the gaps such that the logs are correct:

```javascript
const sym1 = Symbol.???('enki')
const sym2 = ???.for(???)

console.log(sym1 === sym2)
// true

console.log(Symbol.???(sym1))
// "enki"
```

- for
- Symbol
- 'enki'
- keyFor
- new
- "Enki"
- sym1
- sym2
- get
- access
- key


---

## Revision

What will be the output of the following expressions?

```javascript
const sym1 = Symbol.for('enki')
const sym2 = Symbol.for('enki')

console.log(sym1 === sym2)
// ???

console.log(Symbol.keyFor(sym1))
// ???
```

- true
- "enki"
- false
- sym2
- register
- new
- error
 
