# Tagged Template Literals 3
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

---
## Content

With access to literals and replacement values you can use Tagged Template Literals to perform additional processing logic on a string and even replace the string entirely - for example:

```
function myFunc(strings, sub){
 return "Goodbye " + sub; 
} 

myFunc `Hello ${company} hows it going?`
// "Goodbye Enki"
```

---