---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - new

type: normal

category: must-know

standards:
  javascript.aggregation-pipeline.0: 10
  javascript.aggregation-pipeline.5: 10
  javascript.aggregation-pipeline.9: 10

links:

---
# Aggregation sortByCount
---
## Content

In the previous insight, we learned how to aggregate using the `$group` aggregation pipeline stage. Now we are going to discuss the `$sortByCount` aggregation stage.

The `$sortByCount` aggregation stage is used to group documents by a specified expression, count how many documents each group has and sort the documents by count in descending order.

Syntax:
```javascript
{ $sortByCount:  <expression> }
```

Let's say we have a `pokemon` collection with `500` pokémon. Each pokémon has an `_id`, `name`, `type` and `power` field. However, there are some pokémon that also have a `secondType` field. We want to count and sort all pokémon by their `secondType` field. We can do so, like this:

```javascript
db.pokemon.aggregate(
  {
    $sortByCount: "$secondType"
  }
)
```
Output:
```javascript
{ "_id" : null, "count" : 344 }
{ "_id" : "Poison", "count" : 36 }
{ "_id" : "Ground", "count" : 18 }
{ "_id" : "Steel", "count" : 29 }
{ "_id" : "Flying", "count" : 41 }
{ "_id" : "Water", "count" : 32 }
```

As you can see in the output of the example above, there is a `null` field with a count of `344`. Those are documents(pokémon) without a `secondType` field and are counted as well.

Next, we can use the `$match` aggregation stage to only match documents of certain `type` and perform the `$sortByCount: "$secondType"` for documents that match our specified `type`.

For instance, let's say we want to count and sort documents by their `secondType`, but only documents where the `type` is `Water`. We can do so like this:
```javascript
db.pokemon.aggregate(
  [
    {
      $match:{type:"Water"}
    },
    {
      $sortByCount: "$secondType"
    }
  ]
  )
```
Output:
```javascript
{ "_id" : "Poison", "count" : 3 }
{ "_id" : null, "count" : 33 }
```
As you can see in the example above, there are only `3` pokémon who have a `type:"Water"` and a `secondType:"Poison"` and `33` pokémon whose `secondType` is `"Poison"` but the `type` isn't `"Water"`
Or, we can only count and sort documents where the `power` is greater than or equal to `300`.
```javascript
db.pokemon.aggregate(
  [
    {
      $match:{power:{$gte:300}}
    },
    {
      $sortByCount: "$secondType"
    }
  ]
)
```
Output:
```javascript
{ "_id" : "Poison", "count" : 3 }
{ "_id" : null, "count" : 91 }
```
---
## Practice

What is the `$sortByCount` aggregation stage used for?

???

True or false?
The syntax for the `$sortByCount `stage is `{ $sortByCount:  <expression> }`

* To group, count and sort files in descending order by a specified expression
* True
* To sort aggregation stages in ascending order and count the number of aggregation stages each document passed through
* False

---
## Revision

Let's say we have a collection named `students` with 2000 documents. Each student has a `name`, `studentId` and `averageGrade` field. Count and sort all documents whose `averageGrade` is greater than `90` in descending order.


```javascript
db.???.aggregate(
  [
    {
      ???:{???:{$gt:90}}
    },
    {
      ???: "$averageGrade"
    }
  ]
)
```

* `students`
* `$match`
* `averageGrade`
* `$sortByCount`
* `$count`
* `$find`
* `STUDENTS`
* `name`
* `studentId`
