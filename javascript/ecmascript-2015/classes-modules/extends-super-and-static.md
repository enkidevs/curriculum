---
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

inAlgoPool: false


links:

  - '[MDN - Extends](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes/extends){website}'
  - '[MDN - Super](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/super){website}'
  - '[MDN - Static](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes/static){website}'


---

# Extends, Super and Static

---
## Content

The **extends** keyword allows you to inherit from another class and the **super** keyword allows us to access functionality on the parent. 

The below example creates a new class called Engineer that inherits from Person calling Person's constructor with the super keyword.

Our Engineer class also has a method called greet that will call the parent classes sayHello method:

```
class Engineer extends Person {
 constructor(name, age){
  super(name)
  this.age = age;
 }

 greet: function(){
  super.sayHello();
 }
}

var e= new Engineer("alex", 35);
```

**Static**

The static keyword creates a method on the class type itself and is often used for utility methods as allows them to be called without instantiating the class:

```
class UtilityMethods {
  static log(){
 	console.log("hello enki");
  }
};

UtilityMethods.log();
```

Note if you instantiate a class with static methods then you cannot call static methods on the instantiated class:

```
var a = new UtilityMethods();
a.log(); //error
```

