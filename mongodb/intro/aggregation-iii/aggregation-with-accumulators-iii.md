---
author: Stefan-Stojanovic

levels:
  - beginner
  
aspects:
  - new

type: normal

category: how to

---

# Aggregation With Accumulators 2

---
## Content

### `$max`

Syntax:
```javascript
{ $max: <expression> }
```

The `$max` accumulator is used to find the maximum value. When used with the `$group` stage, we can find the maximum value of each document from the group of documents with the same key.

For instance, the `pokemon` database has thousands of pokémon, and each of them has a `type` and `power` field.

All pokémon have one of the possible types: Water, Fire, Rock, Normal, etc. However, all have different `power` levels.

We can use the `$group` stage to group them by their `type`, and then use the `$max` operator to determine which `type` of pokémon has the highest `power`.

Example:
```javascript
db.pokemon.aggregate([
  {
    $group: {
      _id: "$type",
      highestPower: { $max: "$power" }
    }
  }
]);
```
Output:
```javascript
{ "_id": "Unknown", "highestPower": null }
{ "_id": "Bug", "highestPower": 120 }
{ "_id": "Psychic", "highestPower": 800 }
{ "_id": "Normal", "highestPower": 86 }
{ "_id": "Rock", "highestPower": 502 }
{ "_id": "Fire", "highestPower": 404 }
{ "_id": "Electric", "highestPower": 501 }
{ "_id": "Flame", "highestPower": 665 }
{ "_id": "Grass", "highestPower": 500 }
{ "_id": "Fairy", "highestPower": 0 }
{ "_id": "Water", "highestPower": 667 }
```
**Note:** If one of the documents (pokémon) in our database doesn't have a value for the field, the `$max` operator returns `null`.

### `$min`

The `$min` operator behaves the same as the `$max` operator except that it looks for the lowest (minimum) value instead of the highest (maximum) value.

Example:
```javascript
db.pokemon.aggregate([
  {
    $group: {
      _id: "$type",
      lowestPower: { $min: "$power" }
    }
  }
]);
```

Output:
```javascript
{ "_id": "Unknown", "lowestPower": null }
{ "_id": "Bug", "lowestPower": 120 }
{ "_id": "Psychic", "lowestPower": 400 }
{ "_id": "Normal", "lowestPower": 35 }
{ "_id": "Rock", "lowestPower": 251 }
{ "_id": "Fire", "lowestPower": 404 }
{ "_id": "Electric", "lowestPower": 231 }
{ "_id": "Flame", "lowestPower": 430 }
{ "_id": "Grass", "lowestPower": 100 }
{ "_id": "Fairy", "lowestPower": 0 }
{ "_id": "Water", "lowestPower": 233 }
```

Example with both operators:
```javascript
db.pokemon.aggregate([
  {
    $group: {
      _id: "$type",
      lowestPower: { $min: "$power" },
      highestPower: { $max: "$power" }
    }
  }
]);
```

Output:
```javascript
// ...
{   
  "_id": "Water",
  "lowestPower": 233, 
  "highestPower" : 667 
}
// ...
```

---
## Practice

Fill in the missing code to group all documents in the `pokemon` collection by their `type`, and find the min and max power level of each type and output them in fields called `lowestPower` and `highestPower`.

```javascript
db.pokemon.aggregate([
  {
    ???: {
      _id: "???",
      ???: { ???: "$power" },
      ???: { $max: "???" }
    }
  }
]);
```

* `$group`
* `$type`
* `lowestPower`
* `$min`
* `highestPower`
* `$power`
* `$minimum`
* `$maximum`
* `power`
