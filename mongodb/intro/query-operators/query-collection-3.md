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

# Querying a Collection Using Ranges Continued

---
## Content

We are are going to discuss how to define a range between two values using a combination of the 4 previously explained operators.

Let's say we want to find all the pokémon whose `power` ranges between 250 and 350. Initially, you would be tempted to write this:

```javascript
db.pokemon.find({
  power: { $gt: 250 },
  power: { $lt: 350 }
});
```

Which will output the following:
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
// ...
```

Notice how all the results have their `power` lower than 350 but some of the results do not have their `power` greater than 250. This is because we are overwriting the `power: { $gt: 250 }` query with the `power: { $lt: 350 }` query. The correct way of writing is:

```js
db.pokemon.find({
  power: {$gt: 250, $lt: 350}
});
```

Now, we are displaying the pokémon (documents) within the specified range.

Output of the above example:
```javascript
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
    "5d9d8b550b24990f1939820d"
  ),
  "name": "Ivysaur:",
  "type": "Grass",
  "power": 335
}
{
  "_id": ObjectId(
    "5d9d8ce90b24990f19398219"
  ),
  "name": "Tentacruel",
  "type": "Water",
  "secondType": "Poison",
  "power": 333
}
// ...
```

**Note**: The order of the operators does not matter (`$lt`, `$lte`, `$gt` and `$gte`). This means the two examples below would give the exact same output:

```javascript
// Example 1:
db.pokemon.find({
  { power: { $gte: 250, $lte: 350 } }
});

// Example 2:
db.pokemon.find({
  { power: { $lte: 350, $gte: 250 } }
});
```

---
## Practice

Which of the following represents the correct way of selecting documents that fit within a defined range:

```js
// A
db.collection.find({
  field: {$lt: 100},
  field: {$gt: 1}
});
// B
db.collection.find({
  field: {$lt: 100, $gt: 1}
});
// C
db.collection.find({
  field: { {$lt: 100}, {$gt: 1} }
});
```

???

* B
* A
* C

---
## Revision

Create a query to find all documents within the `pokemon` collection whose `age` falls in the range 23-31 (including the bounds).

```javascript
db.pokemon.???({
  ???: { ???: 23, ???: 31}
});
```

* `find`
* `age`
* `$gte`
* `$lte`
* `$gt`
* `$lt`
* `aggregate`
* `accumulate`