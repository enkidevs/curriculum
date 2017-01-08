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

Below is our Tagged Template Literal:

```
function myFunc(strings, subValue){
... 
}

myFunc `Hello ${company} hows it going?`
```

myFunc will receive the following values:

```
["Hello ", " hows it going?", raw: Array[2]] //strings
enki //subValue
```
The strings input parameter is an object containing an array of the literal values and also a raw property that contains an array of the raw versions of the strings.

Note  if your literal has multiple replacement values they are mapped to subsequent function arguments e.g.
```
function myFunc(strings, subValue1, subValue2){
...
}
```
You could use the **rest** operator rather than define each value argument:
```
function myFunc(strings, …values){
...
}
```
Tagged Template Literals also allow us to replace values entirely:
```
function myFunc(strings, subValue){
return "Goodbye " + subValue 
} // "Goodbye Enki"
```
---