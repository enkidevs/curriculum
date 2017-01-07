# Generators and Exceptions
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

---
## Content

Although generators can appear to be magical the code operating inside them is working synchronously. 

This means that error handling occurs as you would expect. 

For example we will catch and log out any exceptions:

```
function* getGenerator(){
    while(true){
    try{
	console.log("normal")
	yield;
    }
    catch(err){
    console.log("something bad happened: " +err);
    }
    }
}

g=getGenerator();
```

We can use generators throw method to create an exception. 

This exception occurs at the point where the generator is paused from the previous yield statement.

```
g.throw("bad error");
```
This is a lot simpler than how standard callbacks work!

---