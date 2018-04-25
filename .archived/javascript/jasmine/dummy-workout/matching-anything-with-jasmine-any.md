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
    [www.joezimjs.com](http://www.joezimjs.com/javascript/javascript-unit-testing-with-jasmine-part-2/
    ){website}

---
# Matching anything with `jasmine.any`

---
## Content

`jasmine.any` compares the type of objects. 

This is useful where you are not interested in an objects specific values  just that it is a specific type such as a number. This is often used with Jasmine `spies`.

`jasmine.any` takes a constructor or class name as its expected value and is used with standard matchers:

```JavaScript
describe("jasmine.any",function(){
 it("matches any value",function(){
     expect(1)
    .toEqual(jasmine.any(Number));    
    
     expect("Enki")
    .toEqual(jasmine.any(String));    
  });
});
```

`jasmine.any` works by checking the `constructor` property all JavaScript objects inherit from their *prototype*:

```JavaScript
var num = 10;
num.constructor===Number; //true

```

---
## Practice

Complete the code snippet so that both tests return true and pass:

```
describe('jasmine testing', function(){
  it('matching anything', function(){
    // Test 1
    expect('e')
     .???(jasmine.any(Number));
      
    // Test 2
    expect(15)
     .toEqual(jasmine.???(???));
   });
});
```
* not.toEqual
* any
* Number 
* int
* toEqual 
* false
* notEqual
* equals