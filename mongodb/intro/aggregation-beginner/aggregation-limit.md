---
author: Stefan-Stojanovic

levels:
  - basic

aspects:
  - new

type: normal

category: must-know

standards:
  mongodb.aggregation-pipeline.0: 10
  mongodb.aggregation-pipeline.1: 10
  mongodb.aggregation-pipeline.2: 10
  mongodb.aggregation-pipeline.5: 10

---
# Aggregation limit
---
## Content

The aggregation `$limit` stage is used to limit the number of documents you want to enter into the aggregation pipeline, starting from the first.

Syntax:
```javascript
{ $limit: <positive integer> }
```
The `<positive integer>` has to be a whole number.

For instance, let's say we have a `pokemon` collection with 500 pokémon and we want to aggregate only the first 3. We can do that like this:
```javascript
db.pokemon.aggregate({ $limit: 3 })
```
Output:
```javascript
{
  "_id": 1,
  "name": "Pikachu",
  "type": "Electric",
  "power": 231
}
{
  "_id": 2,
  "name": "Bulbasaur",
  "type": "Grass",
  "power": 311
}
{
  "_id": 3,
  "name": "Charmander",
  "type": "Flame",
  "power": 199
}
```

The `$limit` pipeline stage can also be used with `$match` and `$count`. Let's say we want to count the number of pokémon in the `pokemon` collection that have an age greater than 17. The `pokemon` collection has 500 pokémon, but we are only interested in the first 100.
```javascript
db.pokemon.aggregate([
  { $match: { age: { $gt: 17 } } },
  { $limit: 100 },
  { $count: "first100" }
])
```
Output:
```javascript
{
  "first100": 57
}
```

---
## Practice

What is the `$limit` aggregation stage used for?

???

Which of the 2 examples below is a valid `$limit` stage?

???
```javascript
// A
{ $limit: 5 }
// B
{ $limit: -5 }
```

* To limit the number of documents you want to aggregate
* `A`
* To limit the number of stages for the aggregation
* `B`

---
## Revision

Let's say we have a collection named `shoes` with 50000 documents. Each shoe has a `size` and `color` field.

Count the number of shoes, for the first 500, where the size is less than or equal to 12. Output the result in a field named `kidsShoes`.

```javascript
db.???.aggregate([
  { $match: { ???: { ???: 12 } } },
  { ???: ??? },
  { $count: ??? }
])

// {
//   "kidsShoes" : 177
// }
```

* `shoes`
* `size`
* `$lte`
* `$limit`
* `500`
* `"kidsShoes"`
* `color`
* `SHOES`
* `%limit`
