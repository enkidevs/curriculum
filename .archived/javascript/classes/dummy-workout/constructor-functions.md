---
author: adamMontgomerie

levels:

  - basic

  - beginner

type: normal

category: tip

tags:

  - constructor

  - object

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en/docs/Web/JavaScript/Inheritance_and_the_prototype_chain#With_a_constructor){website}

---
# Constructor Functions

---
## Content

One way to create an object is to use a constructor. Constructors are functions which are called using the `new` keyword.
```
function Person(name) {
    this.name = name;
} 

person1 = new Person("John");
```

In the example above, the function `Person` is called using the `new` keyword. The new `Person` object is assigned to the variable `person1`.

In the case of `new` keyword missing, `person1 = Person("John")` becomes the equivalent of calling the `Person` function, which *does not return* anything, leaving `person1` undefined:
```
person1 = Person("John");
console.log(person1);
// undefined
```

---
## Practice

Which keyword is used to call constructor functions? 

???

* new
* function
* constructory
* construct
* this

---
## Revision

Using the `enki` function create an `Enki` object:
```javascript
function Enki(x) {
  this.value = x;
}

enkiPi = ??? ???("3.14");
```

* new
* Enki
* x
* value
* var
* const
