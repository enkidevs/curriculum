---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - deep
  - workout

type: normal

category: how to

links:
  - '[Official Documentation](https://docs.mongodb.com/manual/reference/operator/query-comparison/){documentation}'
---

# Querying a Collection Using Ranges

---
## Content

In the previous insight we learned how we can query categorical data[1] using the `$or` and `$in` operators.
In this insight we introduce operators that help us query discrete data by specifying value ranges.

These operators are:
- `$lt` means less than the specified value (`<` is the mathematical counterpart)
- `$lte` means less than or equal to the specified value (`<=` is the mathematical counterpart)
- `$gt` means greater than the specified value (`>` is the mathematical counterpart)
- `$gte` means greater than or equal to the specified value (`>=` is the mathematical counterpart)

Let's say we have a `pokemon` collection where each pokémon has a `power` field which specifies their strength.

Now, we want to look through the `pokemon` collection and find all the pokémon that have their `power` level greater than `250`. We can do so like this:

```javascript
db.pokemon.find({ 
  power: { 
    $gt: 250 
  } 
});
```

Output:

```javascript
{
  "_id" : ObjectId(
    "5d9d8a6a0b24990f19398209"
  ),
  "name": "Bulbasaur",
  "type": "Grass",
  "secondType": "Poison",
  "power": 311
}
{
  "_id": ObjectId(
    "5d9d8b550b24990f1939820d"
  ),
  "name": "Ivysaur:",
  "type": "Grass",
  "secondType": "Poison",
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
{
  "_id": ObjectId(
    "5d9d8e640b24990f19398222"
  ),
  "name": "Moltres",
  "type": "Fire",
  "secondType": "Flying",
  "power": 404
}
// ...
```

The other 3 operators, `$lt`, `$lte` and `$gte`, are used in the exact same way as the `$gt` operator.

```javascript
db.pokemon.find({ 
  power: { 
    $gte: 250 
  } 
});

db.pokemon.find({ 
  power: { 
    $lt: 250 
  } 
});

db.pokemon.find({ 
  power: { 
    $lte: 250 
  } 
});
```

You can also use a combination of the above operators to create more precise queries. For instance, to find all pokémon that are `1` or less years old and have power greater than `350`:

```javascript
db.pokemon.find({
  power: { $gt: 350 },
  age: { $lte: 1 }
});
```

Output:
```javascript
// ...
{
  "_id": ObjectId(
    "5d9d8e640b24990f19398222"
  ),
  "name": "Moltres",
  "type": "Fire",
  "secondType": "Flying",
  "power": 404
}
{
  "_id": ObjectId(
    "5d9d8e9a0b24990f19398224"
  ),
  "name": "Mew",
  "type": "Psychic",
  "age": 1,
  "power": 404
}
// ...
```

**Note**: If we wanted the query above to find only the documents where one of the values is true, we would have to add the `$or` logical operator.

---
## Practice

Match the operator with the description:

`$lt` : ???
`$lte`: ???
`$gt` : ???
`$gte`: ???

* Less than
* Less than or equal to
* Greater than
* Greater than or equal to

---
## Revision

Create a query to find all documents within the `pokemon` collection whose `age` falls in the range 23-31, including the bounds.

```javascript
db.pokemon.???({ 
  ???: { ???: 23, ???: 31 }
});
```

* `find`
* `age`
* `$gte`
* `$lte`
* `$lt`
* `$gt`
* `%and`

---
## Footnotes

[1:Categorical and discrete data]
By categorical data we mean variables that represent a characteristic, and that might not have a logical order. By discrete data we mean variables that are countable, and that can be bounded by a range of values.