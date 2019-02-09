---
author: Bruno

levels:

  - advanced

type: normal

category: feature

aspects:
  - introduction
  - new
  - workout

tags:

  - ES6

links:

  - '[Object Literal Computed Property Keys](http://wiki.ecmascript.org/doku.php?id=harmony:object_literals#object_literal_computed_property_keys){documentation}'

---

# ES6 dynamic property keys in mongo-like set clauses

---
## Content

To update the third element of a nested array `items` you can use:
```
object.update({
  $set:{items:{3:{updated: true}}} 
})
```
But this becomes tricky when you have a variable `index` instead of a constant `3`.
Before ES6, you would typically need to write:
```
var expression = {}
expression[index] = {updated: true}
object.update({
 $set:{items:{expression}}
})
```
Now, with ES6, you can write directly:
```
object.update({$set:{
  items:{[index]:{updated: true}}
}})
```

---
## Practice

Using an index variable, write directly to an element of a nested array:

```
object.???({$set:{
  items:{[???]:{updated: true}}
}})
```

* `update`
* `index`
* `insert`
* `const`
* `add`
* `new`

---
## Revision

Update the second element of a nested array using **ES6** dynamic property keys:
```javascript
object.???({
  $???:{items:{2:{updated: true}}}
})
```

* `update`
* `set`
* `index`
* `change`
* `mod`
* `value`

 
