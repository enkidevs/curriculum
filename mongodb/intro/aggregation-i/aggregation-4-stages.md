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

# Aggregation With $skip, $limit, $match and $count

---
## Content

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

Now, consider this example:
```js
db.pokemon.aggregate([
  { $limit: 50 },
  { $skip: 300 },
  { $match: { power: { $gt: 400 } } },
  { $count: "result" }
]);
```

Although the shell won't show an error, you won't get an output either. Let's try and see why that is.

Switching the order of the stages would lead to the following process:
1. We limit the number of documents entering the aggregation pipeline to the first 50
2. We skip the first 300 documents from the collection
3. We match the documents to fit a criteria
4. We count the remaining documents in the pipeline

Because we first limit the number of documents to 50, we then try to skip more documents than there are in the pipeline. For this reason, you would get no output.

---
## Practice

Knowing that the `pokemon` collection has a total of 10 documents, choose the query that produces the correct output:

```js
// A
db.pokemon.aggregate([
  {
    $skip: 5,
    $limit: 5
  },
  { $count: "result" }
]);

// B
db.pokemon.aggregate([
  { $skip: 5 },
  { $limit: 5 },
  { $count: "result" }
]);

// C
db.pokemon.aggregate([
  { 
    $limit: 5,
    $skip: 5 
  },
  { "count": "result" }
]);

// D
db.pokemon.aggregate([
  { $limit: 5 },
  { $skip: 5 },
  { $count: "result" }
]);

// Output:
// {
//   "result": 5
// }
```

???

* B
* A
* D
* C
