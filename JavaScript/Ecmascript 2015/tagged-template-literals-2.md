# Tagged Template Literals 2
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

---
## Content

In the previous insight we defined a function called myFunc with the following signature:

```
function myFunc(literals, replacement){
...
}
```

When myFunc is called with a template literal the literals parameter will receive the following object:

```
["Hello ", 
" hows it going?", 
raw: Array[2]]
```

This object contains an array of the literal values and also a raw property that contains an array of the raw versions of the strings:

If your literal has multiple replacement values they will be mapped to subsequent function arguments:

```
function myFunc(
  strings, 
  subValue1, 
  subValue2){
...
}
```

Probably a better approach is to use the **rest** operator to map values to an array rather than define each argument:

```
function myFunc(strings, …values){
...
}
```

---