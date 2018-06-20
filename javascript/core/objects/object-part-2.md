---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  javascript.data-types-structures.3: 10
  javascript.data-types-structures.4: 10
  javascript.evaluate-expressions.6: 10
  javascript.evaluate-expressions.7: 10

tags:
  - introduction

aspects:
  - introduction


---
# Object - Part 2

---
## Content

Object's properties can also be functions.

For example, we might add a function to our person object to print out a greeting message to the console:

```javascript
var per = {
    firstName: "alex",
    lastName: "smith",

    sayHi: function(){
       console.log("hello");
    }
};
```

You can then invoke the function with:

```javascript
per.sayHi();
// hello
```

### Constructor Functions

It is common to use functions to create new objects.

This allows you to encapsulate object creation similar to a class constructor:

```javascript
function Person(firstName,lastName){
  this.firstName = firstName;
  this.lastName = lastName;
}

var p1 = new Person("john","smith");
var p2 = new Person("joe","smith");
```

You can even implement inheritance in JavaScript by building on this, but this is a more advanced technique.

---
## Practice

Fill in the gaps of the following constructor function such that the code below it works as intended:

```javascript
function ???(name) {
  this.name = ???;
  this.??? = {
    ???: ???() {
      console.log('Hello there')
    }
  }
}

const flash = new Superhero('Flash')
flash.superpowers.greet()
// Hello there
```

* Superhero
* name
* superpowers
* greet
* function
* hello
* console
* log
* Flash
* new
* superhero
* powers

---
## Revision

You can invoke an object's method by writing:

???

* ob.methodName();
* ob.methodName;
* methodName(ob);
 
