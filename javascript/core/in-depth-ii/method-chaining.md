---
author: dean

levels:

  - basic

  - advanced

  - medium

type: normal

category: pattern

standards:

  - js.functions.1: 10

  - js.functions.6: 10

  - js.execution-context.2: 10

tags:

  - introduction

  - workout

  - method

  - function

  - chaining


links:

  - '[schier.co](http://schier.co/blog/2013/11/14/method-chaining-in-javascript.html){website}'


---

# Method chaining

---
## Content

Method chaining allows multiple methods to be called one after the other on the same object.

```javascript
var foo = new Bar();
foo.setFirst('Fizz').setLast('Buzz');
// Two functions, called with one line
```

Method chaining is typically enabled by implementing methods that return `this` (the object itself):

```javascript
var Bar = function() {
  this.first = 'Not';
  this.last = 'FizzBuzz';
};

Bar.prototype.setFirst = function(first)
{
  this.first = first;
  // Returns the object
  return this;
};

Bar.prototype.setLast = function(last)
{
  this.last = last;
  return this;
};
```

---
## Revision

How is method chaining typically enabled?

???


* Implementing methods that return `this`
* No need for implementation
* Updating the object to allow this

