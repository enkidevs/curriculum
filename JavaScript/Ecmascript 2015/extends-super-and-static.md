# Extends, Super and Static
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

---
## Content

The Extends keyword allows you to inherit from another class. Super keyword allows us to access functionality on the parent.

The below example creates a new class called Engineer that inherits from Person and calls Person's constructor. It also has a method called greet that will call the parent’s sayHello method:

```
var e= new Engineer("alex", 35);
class Engineer extends Person {
  constructor(name, age){
   super(name)
   this.age = age;
 }
 greet: function(){
super.sayHello();

}
}
```

**Static**

The static keyword creates a method on the class type itself and is often used for utility methods as allows them to be called without instantiating the class:

```
class UtilityMethods {
  static log(){
 	console.log("hello");
  }
};

UtilityMethods.log();
```

If you instantiate the class, you cannot call static methods on the instantiated class:

```
var a = new UtilityMethods()
a.log();
```
---