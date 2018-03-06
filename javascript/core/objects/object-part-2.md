# Object - Part 2
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

standards:
  js.data-types-structures.3: 10
  js.data-types-structures.4: 10

tags:
  - introduction
  - workout

---
## Content

Object's properties can also be functions.

For example we might add a function to our person object to print out a greeting message to the console:

```
var per = {
    firstName: "alex",
    lastName: "smith",

    sayHi: function(){
       console.log("hello");
    }
};
```
You can then invoke the function with:
```
per.sayHi();
// hello
```

**Constructor Functions**

It is common to use functions to create new objects.

This allows you to encapsulate object creation similar to a class constructor:

```
function Person(firstName,lastName){
  this.firstName = firstName;
  this.lastName = lastName;
}

var p1= new Person("john","smith");
var p2= new Person("joe","smith");
```
You can even implement inheritance in JavaScript by building on this but this is a more advanced technique.

---
## Revision

You can invoke an object's method by writing:

???
*ob.methodName();
*ob.methodName;
*methodName(ob);
