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

  - '[github.com](https://github.com/mochajs/mocha/wiki/Spies){website}'

---
# Chai Spies

---
## Content

A *spy* is an object used to mock a function or object method to track and analyse the different calls made during a test.

You can create a spy upon a function.
```JavaScript
function toBeWatched () {
  // function code
}
var spy = chai.spy(toBeWatched);
```
You can place a spy on an object's method.
```JavaScript
var array = [ 1, 2, 3 ];
chai.spy.on(array, 'push', 'pop');
```
Or create a spy object.
```JavaScript
var spyObj = chai.spy.object([ 'push',
                               'pop' ]);
spyObj(5);
```
A number of assertions can be used with spies.
```JavaScript
expect(spy).to.have.been.called();
expect(spy).to.have.been.called.with('obj');
expect(spy).to.have.been.called.min(5);
```

---
## Practice

Complete the code to create a spy on an object's method:

```javascript
var arr = [1, 2, 3];
???.spy.???(arr, 'push', 'pop');
```

* chai
* on
* object
* obj
* spy
* spyObj

---
## Revision

Complete the snippet to create a simple spy upon a function:
```javascript
function toBeWatched() {
  //function code
}
var spy = ???.spy.(toBeWatched);
```

* chai
* spy
* on
* spyObj
* expect
* called