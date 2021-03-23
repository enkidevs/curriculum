---
author: dean
type: normal
category: pattern
tags:
  - introduction
  - workout
  - method
  - function
  - chaining
links:
  - >-
    [schier.co](http://schier.co/blog/2013/11/14/method-chaining-in-javascript.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Method Chaining


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

## Practice

Complete the missing gaps such that the log statements on the last lines will print the commented output.

```javascript

var Rectangle = function() {
  this.??? = null
  this.length = null
}

Rectangle.???
  .??? = function(width) {
    this.width = width
    ???
 }

???.prototype
  .setLength = function(length)  {
    this.??? = length
    return ???
  }

const r = (new Rectangle())
  .setWidth(20)
  .setLength(30)

console.log(r.length) // 30
console.log(r.width) //20

```

- width
- prototype
- setWidth
- return this
- Rectangle
- length
- this
- new
- setLength
- new
- return r
- r
- return
- return null
- return undefined
- return width


---

## Revision

How is method chaining typically enabled?

???

- Implementing methods that return this
- No need for implementation
- Updating the object to allow this
 
