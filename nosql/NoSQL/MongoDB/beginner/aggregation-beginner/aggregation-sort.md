---
author: stefan.stojanovic

levels:
  - beginner
  - basic
  
aspects:
  - introduction
  - new

type: normal

category: must-know

standards:
  javascript.aggregation-pipeline.0: 10
  javascript.aggregation-pipeline.1: 10
  javascript.aggregation-pipeline.3: 10
  javascript.aggregation-pipeline.4: 10
  javascript.aggregation-pipeline.5: 10
   
links:
  
---
# Aggregation $sort
---
## Content

The `$sort` aggregation stage is used to sort all the documents you want to enter into the aggregation pipeline. 
Syntax:
```javascript
{
  $sort: 
  { <field1>: <sort order>, 
    <field2>: <sort order> 
    ... 
  } 
}
```
The `field` is the field you want the documents to be sorted by.
The `<sort order>` is the order of the documents.

Possible values for <sort order> are:
- `1` for ascending order.
- `-1` for descending order.

For instance, the
```javascript
db.pokemon.aggregate(
    { $sort : {name:1}}
)
```
would sort all pokémon by name in ascending order. Whereas the
```javascript
db.pokemon.aggregate(
    { $sort : {age:-1}}
)
```
Would sort them by age in decending order.

The `$sort` pipeline stage can also be used with `skip`, `$limit`,and/or `$match` stages. We can also use it with `$count` but there is no purpose since the result is counted and outputted as a number.

```javascript
db.pokemon.aggregate(
  [
    { $skip : 130 },
    { $limit : 22 },
    { $sort : {power:-1}},
    { $match: {power:{$gt: 400}}}
  ]
)
```

Output:
```javascript
{ 
    "_id" : 150, 
    "name" : "Mewtwo", 
    "type" : "Psychic", 
    "power" : 800
}
{ 
    "_id" : 146, 
    "name" : "Moltres", 
    "type" : "Fire", 
    "secondType" : "Flying", 
    "power" : 404 
}
```
In the above example, we skipped the first `130` documents and limited the aggregation to `22` documents after that one. Next, we sorted the documents by `power` in descending order and set to match only those that have a `power` level greater than 400.

---
## Practice

What is the `$sort` aggregation stage used for?

???

Possible values for `$sort`?

???

* To sort documents in ascending or descending order based on the specified field
* `1` and `-1`
* To sort documents by the number of fields they have
* `1`, `0` and `-1`