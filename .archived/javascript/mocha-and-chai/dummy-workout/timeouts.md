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

  - '[mochajs.org](http://mochajs.org/#hooks){website}'

---
# Timeouts

---
## Content

Timeouts can be applied at both *suite level* and *test level*. 

Suite-level timeouts can be applied to entire test suites. All nested suites and test cases will inherit this. 

In comparison, test-level timeouts are applied to individual test cases.


Invoking `this.timeout(0)` disables timeouts altogether. Mocha uses a default timeout of *2000ms*. 

```JavaScript
describe('suite level timeouts', () => {
  this.timeout(250);

  it('timeout < 250ms', (done) => {
    setTimeout(done, 125);
  });
})
```
Test-specific timeouts can be applied like in the following example:
```JavaScript
describe('test level timeouts', () => {
  it('timeout < 1000ms', (done) => {
    this.timeout(1000);
    setTimeout(done, 500);
  });
});
```

---
## Practice

Suite-level timeouts can be applied to ???. All nested suites and test cases will ??? this. Test-level timeouts are applied to ???.

* entire test suites
* inherit
* individual test cases
* everything
* forget
* functions
* some test cases

---
## Revision

How do you disable timeouts altogether?

```
???.???(???);
```
* this
* timeout
* 0
* destroy
* 2000
* stop
* cancel