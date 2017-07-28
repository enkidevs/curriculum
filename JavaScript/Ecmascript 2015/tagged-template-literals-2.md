# Tagged Template Literals
author: lizthedeveloper

levels:

  - medium

  - advanced

type: normal

tags:

  - workout

  - es6

  - deep

  - strings

inAlgoPool: false

category: feature

links:

---
## Content

For more advanced templating you can use **Tagged Template Literals**, which allow you to define a function that does multiple processing steps in order to produce a string. Our template becomes a function, rather than a simple string, allowing us to abstract the templating process.

```
let price = 5;

function currency(literals, substitution){
  let text = literals[0] + substitution + literals[1];
  if (substitution.indexOf("$")) text += "USD"
  if (substitution.indexOf("€")) text += "EUR"
}

currency`$${price}.00` // $5.00 USD
currency`€${price}.00` // €5.00 EUR
```

The substitution parameter receives the value passed in to the first slot in the string to be interpolated. Subsequent values appear as additional arguments, a best practice is to use the **rest** operator to map values to an array rather than define each argument:

```
function price(strings, ...substitution){

}
```

---
