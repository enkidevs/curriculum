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

# Aggregation With Accumulators 4

---
## Content

### `$sum`

Syntax:
```javascript
{ $sum: <expression> }
```

The `$sum` operator is used to calculate the `$sum` of all values of each document per specified group key. 

For instance, let's say each pokémon also has a `power` field in our `pokemon` database. We can use the `$sum` operator to calculate the total `power` of all pokémon within each group (`type`).

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

Fill in the missing code to group all documents in the `pokemon` database by their `type` and calculate the total `power` of all pokémon within each group. Output the result in a field called `sumOfPowers`.
```javascript
db.pokemon.aggregate([
  {
    ???: {
      _id: "???",
      ???: {
        ???: { $add: "$power" }
      }
    }
  }
]);
```

* `$group`
* `$type`
* `sumOfPowers`
* `$sum`
* `totalSum`
* `array`
* `SUM`
* `type`

---
## Revision

What is the `$sum` operator used for in the `$group` aggregation stage?

???

* It is used to calculate the sum of all values of each document per specified group key. 
* it is used to calculate the sum of all values of all groups and output a single value field.
* Used to calculate the total number of fields within each group.
* Used to calculate the total number of field in the collection.
