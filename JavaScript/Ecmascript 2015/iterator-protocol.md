# Iterator Protocol
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

inAlgoPool: false

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

In our previous example above we have not implemented all of the iterator protocol or agreement.
 
There is an issue with our current implementation - what happens when have iterated through all the values?

The iterator protocol defines that we should also return a boolean property called **done** that indicates when we have iterated through the entire sequence.

You can think of the iterator contract as having the following structure:

```
Iterator {
    next() : {value, done);
}
```

Let’s modify our return statement to use this:

```
//code omitted
return {
 next: function(){
  if(nextIndex < num.length){
  var valueToReturn = num[nextIndex];
  nextIndex++;
		
 return {
  value: valueToReturn,
  done: false
 }
}
else{
 return {done: true}
}
}
};
```

---