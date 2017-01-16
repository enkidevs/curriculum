# Tagged Template Literals
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

ES6 introduces a new feature called template literals that make it easier to work with strings by replacing values and defining strings on multiple lines e.g.:

```
var company = "Enki";
console.log(
`Hello ${company} hows it going?`
); 
//Hello Enki hows it going?
```

Tagged template literals allow you to process string and replacement values on a template literal. 

They are created when a function call is specified before the literal itself e.g.

```
myFunc `Hello ${company} hows it going?`
```

But what arguments will myFunc receive?

myFunc will receive 2 sets of parameters, **literals** and **replacement** values.

We can see this in action by redefining myFunc:

```
function myFunc(literals, replacement){
 console.log(literals);  
 console.log(replacement);
}
```

Which will result in the following output:

```
//literals:
//["Hello ", 
" hows it going?", 
raw: Array[2]]
//replacement:
// enki
```

---