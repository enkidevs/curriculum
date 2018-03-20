---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:

  - js.data-types-structures.3: 10

  - js.data-types-structures.4: 10

tags:

  - introduction

  - workout


links:

  - '[Object-oriented JS](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/Object-oriented_JS){website}'


---

# Object - Part 1

---
## Content

JavaScript has a special type called *Object* which is a collection of keys and values.
 
Pretty much everything apart from primitive values inherit from this special type.

**Creating objects**

There are a couple of ways to create objects in JavaScript.

Probably the most common is with the object initializer method:
```
var per = {
   firstName:"john",
   lastName:"smith"
};
```

**Accessing object properties**

Objects have properties which can be both primitive values and functions. 

These properties are generally accessed via dot notation.

We can access our person objects name with the dot syntax:
```
console.log(per.firstName); //john
```

We can also access properties using the array syntax. 

This can be useful when you don’t know the name of the property you want and want to dynamically change it at runtime.
```
var propName="firstName";
console.log(per[propName]);
```

We can even add properties anytime we want to our objects:

```
per.age="40";
per["homeTown"]="London";
```

---
## Practice

Consider the following object:
```
var car = {
  model: "AwsomeCar",
  color: "blue",
  noDoors: 4
};
var test = "model";
```
Would the following line print "model"?
```
console.log(car.test); // ???
```

* no
* yes

---
## Revision

Which line adds a new property to an object that looks like this:
```
var per = {
  firstName = "John",
  lastName = "Smith"
};
???
```

* `per.age = 40;`
* `var per.age = 40;`
* `per[age] = 40;`
* `per.addNewProperty(age,40);`

