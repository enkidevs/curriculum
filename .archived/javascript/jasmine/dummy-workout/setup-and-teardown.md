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
    [medium.com](https://medium.com/angularjs-meetup-south-london/angular-unit-testing-with-jasmine-24795a44998e#.pvhiw0667){website}

---
# Setup and Teardown

---
## Content

`beforeEach` and `afterEach` are Jasmine globals to prevent duplicated setup and teardown code. 

`beforeEach` function is called once before each spec in the describe block.

 The `afterEach` function is called once after each describe block. 

```JavaScript
describe("A suite with setup and teardown"),
  function() {
    var int;
    beforeEach({
      int = 1;
      int++;
    });
    afterEach({
      int--;  
    });
    it("any test can be carried out",
       function() {
       expect(int).toEqual(2);
  });
};
```

The `this` keyword is used to share variables between beforeEach, it, and afterEach. Each of these functions have the same `this` object.

```JavaScript
describe("Using the 'this' keyword",
  function() {
    beforeEach(function() {
      this.int = 5;
    });
    it("'this' can also share states",
      function() {
        expect(this.int).toEqual(5);
        this.check = "passing state";
    });
    afterEach(function() {
      console.log(this.check);
    }
  }
)
```

---
## Practice

Which of these is declared properly? ???

```javascript
// Option A
beforeEach({
   x++;
});

// Option B
afterEach{(
   x--;
)};

// Option C
before({
   x++;
});
```

* Option A
* Option B
* Option C

---
## Revision

Which of the two following methods are *not* Jasmine globals? ??? ???
* before()
* after()
* beforeEach()
* afterEach()
* beforeAll()
* afterAll()