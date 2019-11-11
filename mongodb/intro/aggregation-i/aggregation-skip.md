---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - new
  - workout

type: normal

category: how to

links:
  - '[official-documentation](https://docs.mongodb.com/manual/reference/operator/aggregation/skip/){documentation}'

---

# Aggregation $skip

---
## Content

A similar aggregation pipeline stage to `$limit` is the `$skip` stage.

The `$limit` stage limits the number of documents you want to enter into the aggregation pipeline starting from the first, whereas the `$skip` stage skips the specified number of documents starting from the first and processes all the rest.

Syntax:
```javascript
{ $skip: <positive integer> }
```

For instance, let's say we have a `pokemon` collection with 10 pokémon and want to aggregate only the last 2. We can do that like so:
```javascript
db.pokemon.aggregate({
  // skip the first 8 pokemon
  $skip: 8 
});
```
Output:
```javascript
{
  "_id": ObjectId(
    "5d9d8bde0b24990f19398212"
  ),
  "name": "Blastoise",
  "type": "Water",
  "power": 667
},
{
  "_id": ObjectId(
    "5d9d8bf80b24990f19398213"
  ),
  "name": "Caterpie",
  "type": "Bug",
  "power": 120
}
```

The `$skip` pipeline stage can also be used with `$limit`, `$count` and/or `$match`.

```javascript
db.pokemon.aggregate([
  { $skip: 8 },
  { $limit: 1 }
])
```
Output:
```javascript
{
  "_id": ObjectId(
    "5d9d8bde0b24990f19398212"
  ),
  "name": "Blastoise",
  "type": "Water",
  "power": 667
},
```

In the above example, we skipped the first 8 pokémon and aggregated only 1 after that.

---
## Practice

What is the `$skip` aggregation stage used for?

???

Which of the 2 examples below is a valid `$skip` stage?

???

```js
// A
{ $skip: 9.9 }
// B
{ $skip: 99 }
```

* To skip a specified number of documents to be aggregated starting from the first
* `B`
* To skip the number of stages the documents will go through
* `A`

---
## Revision

Let's say we have a collection named `games` with 100 documents. Display the 55th and 56th game using aggregation.

```javascript
db.games.???(
  { ???: 54 },
  { ???: ??? }
)
```

* `aggregate`
* `$skip`
* `$limit`
* `2`
* `GAMES`
* `58`
* `100`
* `document`
