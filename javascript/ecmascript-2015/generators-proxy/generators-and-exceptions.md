---
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

inAlgoPool: false


links:

  - '[MDN - Generators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Generator){website}'
  - '[MDN - Exception Handling](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Generator/throw){website}'


---

# Generators and Exceptions

---
## Content

All code inside a generator despite appearances works  synchronously.

This means that error handling occurs as you would expect.

The example below will catch and log out any exceptions:

```
function* getGenerator(){
 while(true){
 try{
  console.log("normal")
  yield;
 }
 catch(err){
 console.log(
 "something bad: " + err
 );
 }
 }
}

g=getGenerator();
```

We can use generators **throw** method to create an exception.

The exception occurs at the point where the generator is paused from the previous yield statement.

```
g.throw("bad error");
```

