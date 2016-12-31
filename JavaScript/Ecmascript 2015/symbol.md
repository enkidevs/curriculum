# Symbol
author: alexjmackey

levels:

  - medium

type: normal

inAlgoPool: false

category: must-know

links:

  - '[ponyfoo](https://ponyfoo.com/articles/es6-symbols-in-depth)'

---
## Content

ES 6 introduces a new primitive type - Symbol. 

Symbols are unique and immutable. These special characteristics give them a number of usages we will look at shortly.

But first how do you work with symbols?

The following creates a symbol:

```
var sym = Symbol();
```

Be sure not to use the new operator otherwise you will get an exception.
You can also set a description for the symbol which is useful mainly for debugging purposes:

```
var sym = Symbol(“Enki”);
The typeof method of course returns symbol:
typeof Symbol(); //”symbol”
```

When you create a symbol it is unique even if you create symbols with the same names:

```
var sym1 = Symbol(“Enki”);
var sym2 = Symbol(“Enki”);
sym1 === sym2; //false
```

This probably is not what you would expect but remember Symbol are always unique.
 
If you want to be able to access the same symbol using a key, we can use the Symbol registry let’s talk about this next.
