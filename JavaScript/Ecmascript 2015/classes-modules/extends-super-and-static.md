# Extends, Super and Static
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

inAlgoPool: false

category: must-know

links:

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

---