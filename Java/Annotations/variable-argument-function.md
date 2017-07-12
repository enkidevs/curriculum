# Variable Argument Function
author: nickdaminov

levels:

  - basic

type: normal

category: must-know

links:

  - '[More on VarArgs](https://stackoverflow.com/questions/7607353/how-to-create-java-method-that-accepts-variable-number-of-arguments)'

---
## Content

**VarArgs** allows a function to accept a variable number of arguments in multiple forms, for example assume that our function takes `Strings` as arguments:
```
public static void
varArgsFunc(String... args) {
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

Of course the arguments still have to be passed as "array", and the collection should be the last in the order of arguments:
```
varArgsFunc(int A, String... string_array){
    //doEnki
}
//The reason is that Java does not know
//where the collection ends
varArgsFunc(5, "Enki", "eNki");
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
