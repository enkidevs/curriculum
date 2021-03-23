---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [Object-oriented
    JS](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/Object-oriented_JS){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
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
let person = {
  firstName: "john",
  lastName: "smith"
};
```

**Accessing object properties**

Objects have properties which can be both primitive values and functions.

These properties are generally accessed via dot notation.

We can access our `person` object's name with the dot syntax:

```js
console.log(person.firstName);
// "john"
```

We can also access properties using the array syntax.

This can be very useful, especially when you do not know the name of the property you want to dynamically change at runtime .

```js
let propName = "firstName";
console.log(person[propName]);
```

We can even add properties anytime we want to our objects:

```js
// using dot notation
person.age = "40";

// using bracket notation
person["homeTown"] = "London";
```


---

## Practice

Consider the following object:

```js
let car = {
  model: "AwesomeCar",
  color: "blue",
  noDoors: 4
};

let test = "model";
```

Would the following line print `"model"`?

```js
console.log(car.test); 
// ???
```

- no
- yes


---

## Revision

Which line adds a new property to an object that looks like this:

```js
let person = {
  firstName = "John",
  lastName = "Smith"
};

???
```

- `person.age = 40;`
- `let person.age = 40;`
- `person[age] = 40;`
- `person.addNewProperty(age, 40);`
 
