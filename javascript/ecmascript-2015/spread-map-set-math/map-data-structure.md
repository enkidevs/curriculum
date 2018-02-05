# Map (data structure)
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - '[ponyfoo.com](https://ponyfoo.com/articles/es6-maps-in-depth){website}'
  
  - '[MDN - Map](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map){website}'

---
## Content

map is a new type of key/value object. 

It is common to use an object to store a set of keys and values:

```
var obj={
   firstName: "John",
   lastName: "Smith"
}
```

Using this approach however the "key" values can only ever be strings, it is not as easy as it could be to iterate over all the values and you end up having to exclude inbuilt object properties such as toString.

Maps allow keys and values to be other objects (yes even DOM elements!) and you can iterate over the items with constructs such as *for of* loops.

Let's create a map and assign keys and values:

```
var map = new Map();
var str = "A",
    func = function (x) {return x*2};

map.set(str, "a");
map.set(func, "b");
```

We can then use the keys to retrieve values:

```
map.get(func); //b
```

We can test if a value is stored in a map using the has operator

```
map.has(str); //true
```

To delete an entry use the delete method:
```
map.delete(str);
```

And the map can be emptied using clear:
```
map.clear();
```
