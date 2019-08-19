---
author: alexjmackey

levels:
  - medium
  - advanced

type: normal

category: must-know

aspects:
  - introduction
  - new
  - workout

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

The below example creates a new class called `Engineer` that inherits from `Person` calling Person's constructor with the super keyword.

Our Engineer class also has a method called greet that will call the parent classes sayHello method:

```javascript
class Engineer extends Person {
  constructor(name, age) {
    super(name);
    this.age = age;
  }

  greet() {
    super.sayHello();
  }
}

var e = new Engineer("alex", 35);
```

### Static

The static keyword creates a method on the class type itself and is often used for utility methods as allows them to be called without instantiating the class:

```javascript
class UtilityMethods {
  static log() {
    console.log("hello enki");
  }
}

UtilityMethods.log();
```

Note if you instantiate a class with static methods then you cannot call static methods on the instantiated class:

```javascript
var a = new UtilityMethods();
a.log(); //error
```

---
## Practice

Given the class:

```javascript
class Utils {
  static NotFound404() {
    return new Error({
      statusCode: 404,
      message: "not found"
    });
  }
}
```

Which of the following method calls do you think is correct?

```javascript
throw Utils.NotFound404() //1
throw (new Utils()).NotFound404() // 2
throw new Utils().NotFound404() // 3
throw Utils().NotFound404() // 4
```

???

* 1
* 2
* 3
* 4

---
## Revision

Consider the following class:

```javascript
class Animal {
  constructor(name) {
    this.name = name;
  }
}
```

Fill in the next snippet such that the `Dog` class is a child of the `Animal` class. In addition, this class should call its parent's constructor, given the same arguments and have a static method `bark` which will print "Woof woof".

```javascript
??? ??? ??? ???{
  ???(name) {
    ???(name)
  }

  ??? ??? {
    console.log("Woof Woof")
  }
}
```

* class
* Dog
* extends
* Animal
* constructor
* super
* static
* bark()
* barks
* bark(name)
* bark:
* extend
* Bark
* super()
* parent
* childOf
 
