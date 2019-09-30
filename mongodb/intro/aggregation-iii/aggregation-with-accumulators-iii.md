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

links:
  
---
# Aggregation With Accumulators 3
---
## Content

### $Push

Syntax:
```javascript
{ $push: <expression> }
```

The `$push` operator is used with the `$group` stage to return an array of values for each group of documents with the same key.

For instance, let's say we have a `pokemon` collection where each pokemon has a `type` and `name` field. We can use the `$push` operator to push the `name` field of each pokemon within the same group (`type`) and output an array of names for each `type`.

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


### $sum

Syntax:
```javascript
{ $sum: <expression> }
```

The `$sum` operator is used to calculate the `$sum` of all values of each document per specified group key. 

For instance, let's say each pokémon also has a `power` field in our `pokemon` database. We can use the `$sum` operator to calculate the total `power` of all pokemon within each group (`type`).

Example:
```javascript
db.pokemon.aggregate([
  {
    $group: {
      _id: "$type",
      sumOfPowers: {
        $sum: { $add: "$power" }
      }
    }
  }
]);
```
Output:
```javascript
{ "_id": "Psychic", "sumOfPowers": 1200 }
{ "_id": "Normal", "sumOfPowers": 121 }
{ "_id": "Water", "sumOfPowers": 1466 }
```

In the example above, we grouped the documents by their `type` field and used the `$sum` operator to add (`$add`) all powers together and output them as a single document called `sumOfPowers`.

---
## Practice

Fill in the missing code to group all documents in the `pokemon` database by their `type` and push the names of each pokemon from the same `type` into a single array per `type`. Name the resulting array `"namesPerGroup"`.

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

db.pokemon.aggregate(
   [
     {
       ???:
         {
           _id: "???",
           ???: { ???:  { name: "$name" } }
         }
     }
   ]
)
```

* `$group`
* `$type`
* `namesPerGroup`
* `$push`
* `Names per group`
* `array`
* `push`
* `type`

---
## Revision

What is the `$sum` operator used for in the `$group` aggregation stage?

???

* It is used to calculate the sum of all values of each document per specified group key. 
* it is used to calculate the sum of all values of all groups and output a single value field.
* Used to calculate the total number of fields within each group.
* Used to calculate the total number of field in the collection.