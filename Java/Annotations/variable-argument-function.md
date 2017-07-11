# Variable Argument Function
author: nickdaminov

levels:

  - basic

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

**VarArgs** allows a function to accept a variable number of arguments in multiple forms, for example assume that our function takes `Strings` as arguments:
```
public static void
varArgsFunc(String... string_array) {
    //doEnki
}
```

`VarArgs` were introduced with *Java 1.5*. The key difference between accepting an array and this method is that this one is more general, i.e:
```
String[] args = {"Enki", "eNki", "enKi"};
//both work
varArgsFunc(args);
varArgsFunc("Enki", "eNki", "enKi");  
```
---
## Practice

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2
