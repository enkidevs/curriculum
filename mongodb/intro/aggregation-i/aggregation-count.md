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

# Aggregation $count

---
## Content

In the previous insight, we learned how to aggregate using the `$match` aggregation pipeline stage. Now, we are going to discuss the `$count` aggregation stage.

The `$count` aggregation stage is used to count the number of documents that entered the specified stage.

Syntax:
```javascript
{
  $count: "<string>"
}
```

The `<string>` is the name of the field where the output will be displayed. The string cannot start with a `$`, contain a `.` or be empty.

```javascript
// Ok:
{$count: "totalNumber"}
{$count: "a"}
{$count: "num"}
{$count: "1"}

// Not ok:
{$count: "$totalNumber"}
{$count: ""}
{$count: "total.Number"}
```

We will use the same example as in the previous insight, only this time we will add the `$count` stage.

```javascript
db.pokemon.aggregate([
  { $match: { power: { $lte: 200 } } },
  { $count: "numOfWeakPokemon" }
])
```
Output:
```javascript
{
  "numOfWeakPokemon": 3
}
```

In the previous example, our aggregation returned a document that displayed all the records which matched the specified value. However, since we added the `$count` stage, the result passes both the `$match` and `$count` stage, and then the computed result is displayed.

If we were to only use the `$count` stage, it would count the total number of documents located inside the collection.

```javascript
db.pokemon.aggregate({
  $count: "numOfPokemon"
})
```
Output:
```javascript
{
  "numOfPokemon": 500
}
```

---
## Practice

What is the `$count` aggregation stage used for?

???

Which string can be used as the name of the output field for the `$count` aggregation stage?

```javascript
???
```

* To count the number of remaining documents in the aggregation pipeline
* `{ $count: "totalNumber" }`
* To sort documents based on the specified number
* To count the number of aggregation stages each document passes through
* `{ $count: "$totalNumber" }`
* `{ $count: "" }`
* `{ $count: "total.Number" }`

---
## Revision

Let's say we have a collection named `students` with 2000 documents. Each student has a `name`, `studentId` and `averageGrade` field.

Count the number of students whose average grade is `95` or above and output the result in a field named `numOfExemplaryStudents`.

```javascript
db.students.???([
  {
    ???: { ???: { ???: 95 } }
  },
  { ???: "numOfExemplaryStudents" }
])

// {
//   "numOfExemplaryStudent" : 731
// }
```

* `aggregate`
* `$match`
* `averageGrade`
* `$gte`
* `$count`
* `$find`
* `STUDENTS`
* `name`
* `studentId`
