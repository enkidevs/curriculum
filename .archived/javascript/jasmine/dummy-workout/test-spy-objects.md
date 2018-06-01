---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

tags:

  - testing

links:

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/24321307/what-is-the-difference-between-createspy-and-createspyobj){website}

---
# Test Spy Objects

---
## Content

`jasmine.createSpyObj` is a function used to create spies when an array of strings is passed to it. It returns an object with the property for each string which is a *spy*.

Declaring an array of string in a `beforeEach` function with calls:

```JavaScript
describe("creating multiple spies", 
         function() {
  var spyArray;

  beforeEach(function() {
    spyArray = jasmine.createSpyObj(
       'spyArray', ['one', 'two', 'three']);
    spyArray.one();
    spyArray.three(3);
  });
```
Then using *`expect`* functions comparing the expected and actual values:
```JavaScript
it("creates a spy for each function" 
   function() {
   expect(spyArray.one).toBeDefined();
   expect(spyArray.two).toBeDefined();
   expect(spyArray.three).toBeDefined();
});

it("tracks if spies were called and any \
   arguments that were passed", function() {
   expect(spyArray.one).toHaveBeenCalled();
   expect(spyArray.two).not.
          toHaveBeenCalled();
   expect(spyArray.three).
          toHaveBeenCalledWith(3);
 });
});
```

---
## Practice

What must be passed to `jasmine.createSpyObj` for it return the spy? ???

* An array of strings.
* An int value representing the number of spies to create.
* A boolean flag of whether to create a spy or not.

---
## Revision

Which of these correctly creates a spy object?
???
* spyArr = jasmine.createSpyObj('spyArr', ['a', 'b', 'c']);
* spyArr = createSpyObj('spyArr', ['a', 'b', 'c']);
* spyArr = jas.createSpyObj('spyArr, ['one', two', 'three']);
* spyArr = jasmine.createSpyObj();