# Tagged Template Literals
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

inAlgoPool: false

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

ES6 introduces a new feature called template literals that make it easier to work with strings by replacing values and defining strings on multiple lines: 

```
var company = "Enki";
console.log(
`Hello ${company} hows it going?`
);
//Hello Enki hows it going?
```

Tagged template literals allow you to process string and replacement values within a template literal.

They are created when you specify a function to be called before the literal itself e.g.

```
myFunc `Hello ${company} hows it going?`
```

But what arguments will myFunc receive?

myFunc will receive 2 sets of parameters, **literals** and **replacement** values.

We can see this in action by defining myFunc as the following:

```
function myFunc(literals, ...replacement){
 console.log('literals: ' + literals);  
 console.log('replacement: ' + replacement);
}
```

This will result in the following console output:

```
literals: Hello , hows it going?
replacement: Enki
```

We could use this functionality to perform additional processing on literals and replacement values e.g. maybe translating them.

---
