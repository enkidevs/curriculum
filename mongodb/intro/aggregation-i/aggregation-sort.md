---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

aspects:
  - introduction
  - new
  - workout

type: normal

category: how to

---

# Aggregation $sort

---
## Content

The `$sort` aggregation stage is used to sort all the documents you want to enter into the aggregation pipeline. The syntax looks like this:
```javascript
{
  $sort:
  { field1: sort order,
    field2: sort order
    // ...
  }
}
```
The `field` represents the field you want the documents to be sorted by.

The `sort order` is the order of the documents. The possible values for `sort order` are:
- `1` for ascending order.
- `-1` for descending order.

For instance, this command:
```javascript
db.pokemon.aggregate({
  $sort: { name: 1 }
})
```
Would sort all pokémon by name in ascending order. On the other hand, this command:
```javascript
db.pokemon.aggregate({
  $sort: { age: -1 }
})
```
Would sort them by age in descending order.

The `$sort` pipeline stage can also be used with `skip`, `$limit`,and/or `$match` stages. We can also use it with `$count`, but there is no purpose since the result is counted and outputted as a number.

```javascript
db.pokemon.aggregate([
  { $skip: 130 },
  { $limit: 22 },
  { $sort: { power: -1 } },
  { $match: { power: { $gt: 400 } } }
])
```

Output:
```javascript
{
  "_id": ObjectId(
    "5d9d8e800b24990f19398223"
  ),
  "name": "Mewtwo",
  "type": "Psychic",
  "power": 800
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
```
In the above example, we skipped the first `130` documents and limited the aggregation to `22` documents after that one. Next, we sorted the documents by `power` in descending order and set to match only those that have a `power` level greater than 400.

---
## Practice

What is the `$sort` aggregation stage used for?

???

What are the possible values for `$sort`?

???

* To sort documents in ascending or descending order based on the specified field
* `1` and `-1`
* To sort documents by the number of fields they have
* `1`, `0` and `-1`


---
## Revision

Fill in the code below to sort all documents in the `pokemon` database in an ascending order by their `age`.

```javascript
db.???.aggregate({
  ???: { age: ??? }
})
```

* `pokemon`
* `$sort`
* `1`
* `Pokemon`
* `-1`
* `0`
