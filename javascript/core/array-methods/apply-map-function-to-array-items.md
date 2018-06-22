---
author: Dral

levels:
  - basic
  - advanced
  - medium

type: normal

category: must-know

standards:
  javascript.data-types-structures.2: 10
  javascript.data-types-structures.3: 10
  javascript.data-types-structures.6: 10
  javascript.functions.4: 10

tags:
  - functional-programming arrays
  - introduction
  - workout
  - deep

aspects:
  - introduction
  - workout
  - deep

---

# Apply `map` function to array items

---
## Content

Using `.map` will apply a function to every element in the array, and return an array with the results.  
```
[1,2,3,4].map(x => x * 2)
// => [2,4,6,8]
```


This is not limited to simple transformations.  Any features of functions can be used within a `mapper function`.

```
['Jake', 'Jack', 'Mike'].map(
  name => `Hello ${name}`
)

// ['Hello Jake',
//  'Hello Jack,
//  'Hello Mike']
```

---
## Practice

Map the following array to return the square of each element:
```javascript
var arr = [1,2,3,4,'map'].map(x => ???);
// the result will be [1,4,9,16,???]
```

* x*x
* NaN
* x^2
* null
* x+x

---
## Revision

You have to modify the elements of an array after a single,certain rule. The best way to do it is using ??? .


* map()
* filter()
* splice()

