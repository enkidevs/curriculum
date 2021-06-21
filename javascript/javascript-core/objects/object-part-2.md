---
author: alexjmackey
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Object - Part 2


---

## Content

Object's properties can also be functions.

> 💡 A function that is a property of an object is referred to as that object's *method*.

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

You can invoke an object's method by writing:

???

- obj.methodName();
- obj.methodName;
- methodName(obj);


---

## Revision

Fill in the gaps of the following constructor function such that the code below works as intended:

```javascript
function ???(name) {
  this.name = ???;
  this.??? = {
    ???: function() {
      console.log(
        "Hi, I'm " + name
      );
    }
  }
};

const flash = new Superhero('Flash');
flash.superpowers.greet();
// Hi, I'm Flash
```

- Superhero
- name
- superpowers
- greet
- hello
- console
- log
- Flash
- new
- superhero
- powers
 
