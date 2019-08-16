---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

aspects:
  - introduction
  - workout

inAlgoPool: false

links:
  - '[ponyfoo.com](https://ponyfoo.com/articles/es6-maps-in-depth){website}'
  - '[MDN - Map](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map){website}'

---
# Map (data structure)

---
## Content

Map is a new type of key/value object.

It is common to use an object to store a set of keys and values:

```javascript
var obj = {
   firstName: "John",
   lastName: "Smith"
}
```

Using this approach however the "key" values can only ever be strings, it is not as easy as it could be to iterate over all the values and you end up having to exclude inbuilt object properties such as toString.

Maps allow keys and values to be other objects (yes even DOM elements!) and you can iterate over the items with constructs such as *for of* loops.

Let's create a map and assign keys and values:

```javascript
var map = new Map();
var str = "A",
    func = function (x) {return x*2};

map.set(str, "a");
map.set(func, "b");
```

We can then use the keys to retrieve values:

```javascript
map.get(func); //b
```

We can test if a value is stored in a map using the has operator

```javascript
map.has(str); //true
```

To delete an entry use the delete method:

```javascript
map.delete(str);
```

And the map can be emptied using clear:

```javascript
map.clear();
```

---
## Practice

Complete the missing method calls in the following snippets such that the logs hold:

```javascript
const myMap = new Map()

myMap.???(4, 'enki')

console.log(myMap.???(4))
// enki
console.log(myMap.???(4))
// true
```

* set
* get
* has
* add
* push
* contains
* contain
* delete
* clear

---
## Revision

Complete the missing method calls in the following snippets such that the logs hold:

```javascript
const myMap = new Map()

myMap.???(???, 'enki')
console.log(myMap)
// Map(4) {4 => "enki"}

console.log(myMap.???(4))
// true

myMap.???
console.log(myMap)
// Map(0) {}

```

* set
* 4
* has
* clear()
* delete()
* add
* push
* contains
* empty()
* set()
* add()
 
