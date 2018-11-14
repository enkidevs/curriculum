---
author: stefan.stojanovic

levels:
  - beginner
  
aspects:
  - new

type: normal

category: must-know
      
standards:
  javascript.aggregation-pipeline.0: 10
  javascript.aggregation-pipeline.2: 10
  javascript.aggregation-pipeline.5: 10
  
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

As you can see in the output of the example above, there is a `null` field with a count of `344`. Those are documents(pokémon) without a `secondType` and are counted as well.

---
## Practice

What is the `$sortByCount` aggregation stage used for?

???

* To group, sort and count 
* To sort documents based on the specifieed number
* To count the number of aggregation stages each document passes through
* `{$count: "$totalNumber"}`
* `{$count: ""}`
* `{$count: "total.Number"}`

---
## Revision

Let's say we have a collection named `students` with 2000 documents. Each student has a `name`, `studentId` and `averageGrade` field.

Count the number of students whose average grade is 95 or above and output the result in a field named `numOfExemplaryStudents`.

```javascript
db.???.aggregate(
  [ 
    {???: 
      { ???: {???: 95}}
    },
    {???: "numOfExemplaryStudents"}
  ]
)

//{ 
//  "numOfExemplaryStudent" : 731
//}
```

* `students`
* `$match`
* `averageGrade`
* `$gte`
* `$count`
* `$find`
* `STUDENTS`
* `name`
* `studentId`