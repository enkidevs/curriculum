---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - introduction
  - workout

type: normal

category: how to

---

# Querying a Collection Using $ne, $eq, and $nin

---
## Content

So far, we discussed how to query using one or a combination of these operators:

Comparison:
- `$gt`
- `$gte`
- `$lt`
- `$lte`
- `$in`

Logical:
- `$or`
- `$and`

Now, we are going to discuss the last 3 comparison operators:

- `$ne` not equal to the specified value
- `$eq` equal to the specified value
- `$nin` not equal to any value specified in an array

The `$ne` operator is used to find documents that don't match the value of the specified field. The query would also display documents which don't have the specified field.

For instance:
```javascript
db.pokemon.find({
  secondType: { $ne: "Rock" }
})
```
The query above would display all documents whose `secondType` is not `"Rock"`, and also documents that don't even have a `secondType` field.

The `$eq` operator is used to only find documents that match the value of the specified field. For instance:
```javascript
db.pokemon.find({
  type: { $eq: "Fire" }
})
```

This query finds only pokémon whose `type` is `"Fire"`. This is exactly the same as:
```javascript
db.pokemon.find({
  type: "Fire"
})
```

The `$nin` operator, which operates similarly to the `$ne` operator, is used to find all documents whose fields don't match the values in the specified array and the documents that don't have the specified field.
```javascript
db.pokemon.find({
  secondType: {
    $nin: ["Grass", "Fire"]
  }
})
```

Output:
```javascript
{
  "_id": ObjectId(
    "5d9d8ce90b24990f19398219"
  )
  "name": "Tentacruel"
  "type": "Water"
  "secondType": "Poison"
  "power": 333
}
{
  "_id": ObjectId(
    "5d9d8e090b24990f19398220"
  )
  "name": "Porygon"
  "type": "Normal"
  "power": 86
}
// ...
```

---
## Practice

Complete each query.

Find all pokémon whose `age` is exactly `41`:
```javascript
db.pokemon.find({
  ???: { ???: 41 }
})
```

Find all pokémon that don't have a `type` of either `Mud` or `Flying`:
```javascript
db.pokemon.find({
  ???: {
    ???: ["Mud", "Flying"]
  }
})
```

Find all pokémon whose `power` does not equal `500`:
```javascript
db.pokemon.find({
  ???: { ???: 500 }
})
```

* `age`
* `$eq`
* `type`
* `$nin`
* `power`
* `$ne`
* `$and`
* `$en`
* `$qe`

---
## Revision

Match the query operator with its explanation:

Not equal to the specified value: ???

Equal to the specified value: ???

Not equal to any value specified in an array: ???

Greater than or equal to a value: ???

Less than or equal to a value: ???

Greater than a value: ???

Less than a value: ???

* `$ne`
* `$eq`
* `$nin`
* `$gte`
* `$lte`
* `$gt`
* `$lt`
