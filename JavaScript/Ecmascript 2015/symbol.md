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

ES 6 introduces a new primitive type - **Symbol*. 

Symbols are unique and immutable. These special characteristics give them a number of usages we will look at shortly.

But how do you work with symbols?

The following code creates a symbol:

```
var sym = Symbol();
```

Be sure not to use the new operator when creating a symbol otherwise you will get an exception.

During creation you can also set a description for the symbol which is useful mainly for debugging purposes:

```
var sym = Symbol("Enki");
```

Note that supplying a description when creating a symbol does not add the symbol to the symbol registry which we will discuss shortly.

The typeof method of course returns symbol:

```
typeof Symbol(); //"symbol"
```

When you create a symbol it is unique even if you create symbols with the same names:

```
var sym1 = Symbol("Enki");
var sym2 = Symbol("Enki");
sym1 === sym2; //false
```

This probably is not what you would expect but remember Symbols are always unique.
 
If you want to be able to access the same symbol using a key, we can use the Symbol registry which we will discuss next.
