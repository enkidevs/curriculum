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
The `<positive integer>` has to be a whole number.

For instance, let's say we have a `pokemon` collection with 10 pokémon and want to aggregate only the last 2. We can do that like so:
```javascript
db.pokemon.aggregate({ $skip: 8 })
```
Output:
```javascript
{
  "_id": 9,
  "name": "Blastoise",
  "type": "Water",
  "power": 667
},
{
  "_id": 10,
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
  "_id": 9,
  "name": "Blastoise",
  "type": "Water",
  "power": 667
},
```
In the above example, we skipped the first 8 pokemon and aggregated only 1 after that.

Now, we'll use all 4 stages learned in this workout.

We are going to aggregate the first `50` pokémon starting from number 301. We want to count how many have a `power` level greater than `400` and store the result in a field named `"result"`.
```javascript
db.pokemon.aggregate([
  { $skip: 300 },
  { $limit: 50 },
  { $match: { power: { $gt: 400 } } },
  { $count: "result" }
])
```

Output:
```javascript
{
  "result": 2
}
```

Note that the order of the aggregation stages matters. In this example, the process is the following:
1. We skip the first 300 documents from the collection
2. We limit the number of documents entering the aggregation pipeline to 50
3. We match the documents to fit a criteria
4. We count the remaining documents in the pipeline

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
db.???.aggregate(
  { ???: 54 },
  { ???: ??? }
)
```

* `games`
* `$skip`
* `$limit`
* `2`
* `GAMES`
* `58`
* `100`
* `document`
