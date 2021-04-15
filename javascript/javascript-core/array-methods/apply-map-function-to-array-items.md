---
author: Dral
type: normal
category: must-know
tags:
  - functional-programming arrays
  - introduction
  - workout
  - deep
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Apply `map` Function to Array Items


---

## Content

Using `.map` will apply a function to every element in the array, and return an array with the results.  

```javascript
[1,2,3,4].map(x => x * 2)
// => [2,4,6,8]
```

This is not limited to simple transformations.  Any features of functions can be used within a `mapper function`.

```javascript
['Jake', 'Jack', 'Mike'].map(
  name => `Hello ${name}`
)

// ['Hello Jake',
//  'Hello Jack',
//  'Hello Mike']
```


---

## Practice

Create a new array by returning the square of each element:

```javascript
var arr = [1,2,3,4,'enki'].???(x => x*x);
// the result will be [1,4,9,16,???]
```

- map
- NaN
- 32
- 'enkienki'
- reduce
- iterate
- return


---

## Revision

Which of these `Array` methods will produce an array of the same length, after applying a function to each element? ???

- map()
- filter()
- splice()
- reduce()
 
