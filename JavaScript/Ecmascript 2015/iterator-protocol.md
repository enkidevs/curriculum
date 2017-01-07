# Iterator Protocol
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

In our example above we haven’t implemented all of the iterator protocol or agreement.
 
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

		if(nextIndex < numbers.length){
		var valueToReturn = numbers[nextIndex];
		nextIndex++;
		
		return {
			value: valueToReturn,
			done: false
		}
		}
		else{
		return{ done: true}
		}
       }
    };
```

Iterables

Javascript has a number of built in objects that are defined as iterables such as arrays, strings, maps and sets. When an object is iterable it defines how it will work with language features such as for..of loops.

In order to be iterable an object must implement the iterable protocol which means that it must have a property marked with [Symbol.iterator]

Let`s try using the iterator we defined previously in a for..of loop:

```
var it = getIterator()
for(var i of it){
   console.log(i); 
//TypeError: it[Symbol.iterator] is not a function
}
```
This error occurs as we didn’t conform to the iterable protocol so JavaScript doesn’t know how to work with our iterator.

Let's fix this now by returning an object with a property marked with [Symbol.iterator]:

```
function getIterator (){
    var numbers = [1,2,3,4,5];
    var nextIndex = 0;    
   
  	return {
	[Symbol.iterator]() {

	return{
              next: function(){

		if(nextIndex < numbers.length){
		var valueToReturn = numbers[nextIndex];
		nextIndex++;
		
		return {
			value: valueToReturn,
			done: false
		}
		}
		else{
		return{ done: true}
		}
       }
	}
	}
	}
}
```
	
Our iterator will now function as expected.
We could even use it with the spread operator:

```
console.log([...it]) //[1,2,3,4,5]
```

---