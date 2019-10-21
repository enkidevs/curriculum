---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic
  
aspects:
  - introduction
  - new

type: normal

category: how to

---

# Aggregation With Accumulators 3

---
## Content

### `$push`

Syntax:
```javascript
{ $push: <expression> }
```

The `$push` operator is used with the `$group` stage to return an array of values for each group of documents with the same key.

For instance, let's say we have a `pokemon` collection where each pokémon has a `type` and `name` field. We can use the `$push` operator to push the `name` field of each pokemon within the same group (`type`) and output an array of names for each `type`.

Example where there are only 3 types of pokémon:
```javascript
db.pokemon.aggregate([
  {
    $group: {
      _id: "$type",
      namesPerGroup: {
        $push: { name: "$name" }
      }
    }
  }
]);
```
Output:
```javascript

{ "_id": "Psychic",
 "namesPerGroup": 
  [
    { "name": "Mewtwo" },
    { "name": "Mew" } 
  ] 
},
{ "_id": "Normal", 
  "namesPerGroup": 
   [ 
     { "name": "Porygon" }, 
     { "name": "Castform" } 
   ] 
},
{ "_id": "Water", 
  "namesPerGroup": 
   [ 
     { "name": "Squirtle" }, 
     { "name": "Tentacruel" }, 
     { "name": "Tentacool" }, 
     { "name": "Blastoise" } 
   ] 
}
```

In the above example, we used the `$group` stage to group documents by their `type` field and then we used the `$push` operator to push the `name` field and value of each document in each grouping as a single array of values per group.


---
## Practice

Fill in the missing code to group all documents in the `pokemon` database by their `type` and push the names of each pokémon from the same `type` into a single array per `type`. Name the resulting array `"namesPerGroup"`.

```javascript
db.pokemon.aggregate([
  {
    ???: {
      _id: "???",
      ???: {
        ???: { name: "$name" }
      }
    }
  }
]);
```

* `$group`
* `$type`
* `namesPerGroup`
* `$push`
* `Names per group`
* `array`
* `push`
* `type`
