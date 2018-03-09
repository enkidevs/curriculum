---
author: Dral

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

tags:

  - functional-programming arrays




---
## Content
# Apply `map` function to array items

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

