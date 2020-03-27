---
author: alexjmackey

type: normal

category: must-know

aspects:
  - introduction
  - workout

---
# Object - Part 2

---
## Content

Object's properties can also be functions.

For example, we might add a function to our person object to print out a greeting message to the console:

```javascript
let per = {
  firstName: "alex",
  lastName: "smith",

  sayHi: function () {
    console.log("hello");
  },
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
function Person(firstName, lastName) {
  this.firstName = firstName;
  this.lastName = lastName;
}

let p1 = new Person("john", "smith");
let p2 = new Person("joe", "smith");
```

You can even implement inheritance in JavaScript by building on this, but this is a more advanced technique.

---
## Practice

Fill in the gaps of the following constructor function such that the code below works as intended:

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

* obj.methodName();
* obj.methodName;
* methodName(obj);
 
