---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - new
  - workout

type: normal

category: how to

---

# Aggregation $group Part 2

---
## Content

Next to summing values with the `$sum` accumulator, there are many more accumulators we can use for the `$group` aggregation pipeline stage.

One good example is using the `$avg` accumulator to calculate averages. For instance, let's say we want to group all pokémon by their `type` and calculate the average `power` for all pokémon of each `type`. We can do so like this:
```javascript
db.pokemon.aggregate([
  {
    $group: {
      _id: "$type",
      averagePower: {
        $avg: "$power"
      }
    }
  }
])
```
Output:
```javascript
{ "_id": "Bug", "averagePower": 120 }
{ "_id": "Psychic", "averagePower": 600 }
{ "_id": "Normal", "averagePower": 60.5 }
{ "_id": "Rock", "averagePower": 352 }
{ "_id": "Electric", "averagePower": 344.83333333}
{ "_id": "Flame", "averagePower": 432 }
{ "_id": "Grass", "averagePower": 296.2 }
{ "_id": "Fairy", "averagePower": 0 }
{ "_id": "Fire", "averagePower": 404 }
{ "_id": "Water", "averagePower": 366.5 }
```

Next, we can use the `$min` and `$max` accumulators to calculate the lowest and highest power level for each `type` of pokémon. We will save the weakest in a field called `w`, and the strongest in a field called `s`.
```javascript
db.pokemon.aggregate([
  {
    $group: {
      _id: "$type",
      w: { $min: "$power" },
      s: { $max: "$power" }
    }
  }
])
```
Output:
```javascript
{ "_id": "Bug", "w": 15, "s": 120 }
{ "_id": "Psychic", "w": 401, "s": 800}
{ "_id": "Normal", "w": 35, "s": 86 }
{ "_id": "Rock", "w": 251, "s": 502 }
{ "_id": "Electric", "w": 231, "s": 486 }
{ "_id": "Flame", "w": 199, "s": 665 }
{ "_id": "Grass", "w": 100, "s": 500 }
{ "_id": "Fairy", "w": 0, "s": 0 }
{ "_id": "Fire", "w": 404, "s": 404 }
{ "_id": "Water", "w": 233, "s": 667 }
```

Furthermore, even though the `_id` field in the `$group` stage is mandatory, we can set the expression as `null` and not group documents but still use accumulators to aggregate the collection.

For instance, we can set the `_id` as `null` and calculate the sum of all powers, or the average age of all pokémon, or the highest or lowest `power`/`age`, etc.

Sum:
```javascript
db.pokemon.aggregate([
  {
    $group: {
      _id: null,
      totalPower: { $sum: "$power" }
    }
  }
])
```
Output:
```javascript
{ 
  "_id": null,
  "totalPower": 878921
}
```
Average:
```javascript
db.pokemon.aggregate([
  {
    $group: {
      _id: null,
      averagePower: { $avg: "$power" }
    }
  }
])
```
Output:
```javascript
{ 
  "_id": null, 
  "averagePower": 391.7016
}
```
Min and max:
```javascript
db.pokemon.aggregate([
  {
    $group: {
      _id: null,
      youngest: { $min: "$age" },
      oldest: { $max: "$age" }
    }
  }
])
```
Output:
```javascript
{ 
  "_id": null, 
  "youngest": 1, 
  "oldest": 89
}
```
---
## Practice

Group and calculate the average `power` of all pokémon within the `pokemon` collection. Return the result in a field called `"averagePower"`.

```javascript
db.???.???([
  {
    ???: {
      ???: null,
      ???: { ???: "$power" }
    }
  }
])
```

* `pokemon`
* `aggregate`
* `$group`
* `_id`
* `averagePower`
* `$avg`
* `$average`
* `$power`
* `Pokemon`
* `find`
* `AveragePowers`


---
## Revision

Let's say we have a collection named `games` with 1000 documents. Each game has a `name`, `difficulty` and `type` field. Group all documents by their `type` and find out what is the lowest and what is the highest `difficulty` level for each `type`. Save them in fields called `low` and `max`.

```javascript
db.games.???([
  {
    ???: {
      ???: "$type",
      low: {
        ???: "$difficulty"
      },
      max: {
        ???: "$difficulty"
      }
    }
  }
])

// {"_id": "Playstation","low": 1,"max": 10}
// {"_id": "X-box","low": 2.1,"max": 9.4}
// {"_id": "PC","low": 0,"max": 9.1}
```

* `aggregate`
* `$group`
* `_id`
* `$min`
* `$max`
* `$minimum`
* `$maximum`
* `ID`
* `accumulate`
* `find`
* `$project`
