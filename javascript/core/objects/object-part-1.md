---
author: alexjmackey

type: normal

category: must-know

links:
  - '[Object-oriented JS](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/Object-oriented_JS){website}'

aspects:
  - introduction
  - workout

---

# Object - Part 1

---
## Content

JavaScript has a particular type called *Object* which is a collection of keys and values.

Pretty much everything apart from primitive values inherit from this unique type.

**Creating objects**

There are a couple of ways to create objects in JavaScript.

Probably the most common is with the object initializer:

```js
let per = {
  firstName: "john",
  lastName: "smith"
};
```

**Accessing object properties**

Objects have properties which can be both primitive values and functions.

These properties are generally accessed via dot notation.

We can access our person objects name with the dot syntax:

```js
console.log(per.firstName); // "john"
```

We can also access properties using the array syntax.

This can be useful when you do not know the name of the property you want to change it at runtime dynamically .

```js
let propName = "firstName";
console.log(per[propName]);
```

We can even add properties anytime we want to our objects:

```js
// using dot notation
per.age = "40";

// using bracket notation
per["homeTown"] = "London";
```

---
## Practice

Consider the following object:

```js
let car = {
  model: "AwsomeCar",
  color: "blue",
  noDoors: 4
};

let test = "model";
```

Would the following line print `"model"`?

```js
console.log(car.test); // ???
```

* no
* yes

---
## Revision

Which line adds a new property to an object that looks like this:

```js
var per = {
  firstName = "John",
  lastName = "Smith"
};

???
```

* `per.age = 40;`
* `var per.age = 40;`
* `per[age] = 40;`
* `per.addNewProperty(age, 40);`
 
