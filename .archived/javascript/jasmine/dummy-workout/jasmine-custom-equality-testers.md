---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

inAlgoPool: false

category: must-know

tags:

  - testing

links:

  - >-
    [books.google.co.uk](https://books.google.co.uk/books?id=WNmtCAAAQBAJ&pg=PA66&lpg=PA66&dq=custom+equality+testers+jasmine&source=bl&ots=PVJUoIkOEp&sig=FlgUdGy2xtn31ucBcLjB_QIc9y0&hl=en&sa=X&ved=0ahUKEwiXjaPAvLjKAhXJfRoKHX9xBQIQ6AEINjAE#v=onepage&q&f=false){website}

---
# Jasmine Custom Equality Testers

---
## Content

A *custom equality tester* allows you to determine how Jasmine identifies two objects to be *equal*. 

A *custom equality tester* always takes in two arguments (the objects to compare) and must return *true* if objects are equal, *false* if they are not and *undefined* if the custom tester cannot compare them.

To create a *custom equality tester* that will return two objects as equal if they are both strings:

```JavaScript
var custom = 
function(stringA, stringB) {	
   if (typeof stringA == "string" &&
       typeof stringB == "string") {       
       return true;
   }
};

```
Before we can use our *custom equality tester* it needs to be registered in the *`beforeEach`* function within a *suite*.
```JavaScript
describe("custom", function() {
//equality tester created above

beforeEach(function() {
   jasmine
   .addCustomEqualityTester(custom);
});
		
it("string test", function() {
    expect("abc").toEqual("def");
});
  
});

```

---
## Practice

A custom equality tester must take ??? arguments as parameters, return ??? if the objects are equal, and ??? if they cannot be compared.

* 2
* true
* undefined
* 1
* 0
* -1
* false
* null