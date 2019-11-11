---
author: Stefan-Stojanovic

levels:
  - basic

aspects:
  - new
  - workout

type: normal

category: how to

---

# Aggregation $limit

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
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ),
  "name": "Pikachu",
  "type": "Electric",
  "power": 231
}
{
  "_id" : ObjectId(
    "5d9d8a6a0b24990f19398209"
  ),
  "name": "Bulbasaur",
  "type": "Grass",
  "power": 311
}
{
  "_id": ObjectId(
    "5d9d8b8c0b24990f1939820f"
  ),
  "name": "Charmander",
  "type": "Flame",
  "power": 199
}
```

The `$limit` pipeline stage can also be used with `$match` and `$count`. Let's say we want to count the number of pokémon in the `pokemon` collection that have an age greater than 17. The `pokemon` collection has 500 pokémon, but we are only interested in the first 100.
```javascript
db.pokemon.aggregate([
  { $limit: 100 },
  { $match: { age: { $gt: 17 } } },
  { $count: "first100" }
])
```

Output:
```javascript
{
  "first100": 57
}
```

Note that the order of the pipeline stages matters. The stages are applied in a top-down manner. In the example above, the process is the following:
1. We limit the number of documents to be aggregated
2. We match the documents to fit a criteria
3. We count the remaining documents in the pipeline

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
db.shoes.???([
  { $match: { ???: { ???: 12 } } },
  { ???: ??? },
  { $count: ??? }
])

// {
//   "kidsShoes" : 177
// }
```

* `aggregate`
* `size`
* `$lte`
* `$limit`
* `500`
* `"kidsShoes"`
* `color`
* `%limit`
* `accumulate`
* `find`
