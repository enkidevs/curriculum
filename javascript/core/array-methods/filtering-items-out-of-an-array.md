---
author: Dral

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

standards:
  javascript.data-types-structures.2: 10
  javascript.data-types-structures.3: 10
  javascript.data-types-structures.6: 10
  javascript.functions.4: 10

tags:
  - introduction
  - workout
  - functional-programming
  - arrays

aspects:
  - introduction
  - workout


---

# Filtering items out of an array

---
## Content

A common pattern to filter items from an array is the following:

```
let persons = [...];
let activated = [];
for(let person of persons) {
  if (person.isActived) {
    activated.push(person);
  }
}
```
However, using the `Array::filter` method is generally more concise and readable:

```
let persons = [...];
let activated = persons.filter(
  person => person.isActived
)
```

`.filter` can be applied to any array. It takes a predicate which should return a boolean, depending on whether or not the item should be preserved in the array.

```
[1,2,3,4].filter(x => x % 2);
// => [2,4]



```

---
## Practice

Complete the following snippet:
```javascript
var numbers = [0,1,2,3,4,5,6,7];
// div3 contains all numbers
// divisible with 3
var div3 = numbers.???( num =>
  num%3 ???);
```

* filter
* == 0
* != 0
* get

---
## Revision

`.filter`  can be used instead of ??? .


* for and if
* if
* for and alert
 
 