---
author: dean
type: normal
category: pattern
tags:
  - introduction
  - workout
  - deep
  - prototype
  - methods
  - class
  - object
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Prototype Methods


---

## Content

Prototypes are objects with properties that other objects inherit. Therefore, any methods defined by the prototype are also inherited, and can be used by the inheriting object.

As a result, the object that inherits from the prototype object is essentially a subclass of the prototype.

```javascript
function Animal(name) {
  this.name = name;
  this.feline = true;
  this.hasFur = true;
}

// Inherited prototype method
Animal.prototype.sayName = function() {
  console.log("My name is " +this.name);
}

function Cat(name) {
  this.name = name;
}

// Cat becomes a subclass of Animal
// and inherits its properties/methods
Cat.prototype = new Animal();
var Kitty = new Cat("Kitty");

Kitty.sayName();
// "My name is Kitty"
```


---

## Practice

Complete the following snippet to output “I enjoy studying”:

```javascript
function Hobby(hobby){
   this.hobby = hobby;
}
Hobby.???.??? = function(){
   console.log("I enjoy " + this.hobby);
}
 
function MyHobby(hobby){
   this.hobby = hobby;
}
   
???.prototype = new Hobby();
var student = new MyHobby("studying");
student.sayHobby();
```

- prototype
- sayHobby
- MyHobby
- studying
- printHobby


---

## Revision

An object in JavaScript that can be inherited from is called ???.

- prototype
- variable
- function
 
