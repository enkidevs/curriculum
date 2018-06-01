---
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: tetris

category: tip

---
# Welcome to Mutant High

---
## Content

Is the function pure, or does it mutate?

A function is pure if it returns a new entity without modifying any existing data.

A function mutates if it modifies an existing entity, rather than returning a new one.

---
## Game Content

mutate:pure
```true
arr.length
%exp
Just accessing an array's `length` property is considered **pure**.

However, assigning it a new value (e.g. `arr.length = 0`) will mutate (truncate) the array.
%

Array.from(arr)
%exp
The `Array.from()` method creates a new `Array` instance from an array-like or iterable object.
%
arr.concat([0])
%exp
`concat` is used to merge two arrays into a new one, not modifying the existing arrays.
%
arr.includes(0)
%exp
`includes` checks if the argument is included on the array called upon.

This array is not modified.
%
arr.join(',')
%exp
This method joins all elements of an array into a string, not modifying the array.
%
arr.slice(1)
%exp
This method will return a portion of the initial array as a new array.

This is a **pure** function.
%
arr.toString()
%exp
The `toString` method return a new string, representing the elements of the array.
%
arr.indexOf(0)
%exp
`indexOf` returns the first index at which a given element can be found in the array.
It doesn't mutate the array.
%
arr.every(x => true)
%exp
This method checks if all elements in the array pass the test implemented by the function passed as argument.
No array mutation happens here.
%
arr.keys()
%exp
This method returns a new `Array` **Iterator** that contains the keys for each index in the array.

This is a **pure** function.
%
arr.map(x => 0)
%exp
The `map()` method returns a **new array**, each element of the initial array being passed through the provided function, resulting in a element of the new array.
%
arr.reduce((x, y) => y)
%exp
The `reduce()` method applies a function against an accumulator and each element in the array (from left to right) to reduce it to a single value.

This function is **pure**.
%
arr.slice()
%exp
`slice()` is a **pure** function.
%
Object.assign({b: 1}, obj)
%exp
`Object.assign` copies properties' values from an initial object (second argument) to a target one (first argument).

Because `obj` serves as source, its content won't be modified.
%
Object.create(obj)
%exp
`Object.create` will create and return a **new** object.
%
Object.is(obj, {})
%exp
The `Object.is()` method determines whether two values are the same value.

This is a **pure** function.
%
obj.valueOf()
%exp
The `valueOf()` method returns the primitive value of the specified object.

No data mutation will result from this operation.
%
obj.toString()
%exp
The `toString()` method will return a string representation of the object, but not mutating it.
%

Object.keys(obj)
%exp
`Object.keys()` method will return a **new** array containing the properties' names of the given object.
%

obj.name
%exp
Accessing an object's property (e.g. `name`) will not mutate it.
%

```

```false

arr[0] = 0
%exp
Setting a new value for an object's property (`0`) will mutate it.

Note that in **JavaScript**, arrays are also objects.
%

arr.push(0)
%exp
The `push()` method will insert a new element into an array, thus mutating it.
%

arr.pop()
%exp
The `pop()` method will remove an element from an array, modifying it.
%

arr.reverse()
%exp
The `reverse()` function will reverse the order of elements in an array.

This is a **impure** function as the initial array is modified.
%

arr.shift()
%exp
The `shift()` method will remove the first element from an array and return it.

This method mutates the given array.
%
arr.sort()
%exp
The `sort()` method will sort the element of an array in place.

This is a **impure** function.
%

arr.copyWithin(0, 1)
%exp
The `copyWithin()` method copies array elements within the array, to and from specified positions.

This method will mutate the given array.
%

arr.fill(0)
%exp
The `fill()` method fills all the elements of an array from a start index to an end index with a given value.

This is an **impure** function.
%

arr.splice(1)
%exp
The `splice()` method changes the contents of an array by removing existing elements and/or adding new elements.
%
arr.unshift()
%exp
The `unshift()` method adds one or more elements to the beginning of an array and returns the new length of the array.

This will mutate the array.
%
delete arr[0]
%exp
The `delete` operator removes a property from an object, mutating it.
%
Object.assign(obj, {b: 1})
%exp
Because `obj` is the **target** object, its content will be mutated.
%
Object.freeze(obj)
%exp
The `Object.freeze()` method freezes an object: that is, prevents new properties from being added to it.

However, this method is **impure**.
%
Object.seal(obj)
%exp
`Object.seal()` will freeze an object like using `Object.freeze()`, yet sealed objects can have existing properties modified afterwards.

This is an **impure** method.
%
delete obj.name
%exp
The `delete` operator removes a property from an object, mutating it.
%
obj.name = ''
%exp
Setting a new value (`''`) for an object's property (`name`) will mutate it.
%
```
