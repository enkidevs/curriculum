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
  javascript.aggregation-pipeline.5: 10

links:

---
# What-is-aggregation
---
## Content

Aggregations are operations that look through a database or collection, process the data in various ways and return a computed result as a single document. How the result is computed depends on which operators and stages are used in the aggregation.

There are three ways to perform aggregations in MongoDB.
  - Aggregation pipeline
  - Map-reduce function
  - Single-purpose aggregation methods

In this workout, we will only discuss the aggregation pipeline.

The syntax for aggregating a collection is : `db.collection.aggregate(pipeline, options)`
The syntax for aggregating a database is :`db.aggregate(pipeline, options)`

The `pipeline` part is mandatory. It is an array of at least one, or more, pipeline stages and can have 1 or more operations.
The `options` part is optional and will be discussed later on.

The aggregation pipeline is where all the documents from a collection or a database are grouped together and sent through a pipeline where they are transformed after each specified stage into an aggregated result.

The stages are ways of processing data.

For instance, let's say we have a collection named `pokemon` with 500 pokémon where each one has a `power` field. Now, we want to find and display the pokémon whose `power` is smaller than or equal to 200. We can do so like this:

```javascript
db.pokemon.aggregate(
  [ 
    {$match: 
      {power: {$lte: 200}}
    }
  ]
)
```
Output:
```javascript
{ 
    "_id" : 3, 
    "name" : "Charmander", 
    "type" : "Flame", 
    "power" : 199 
}
{   
    "_id" : 175, 
    "name" : "Togepi", 
    "type" : "Fairy", 
    "power" : 0
}
{   
    "_id" : 351, 
    "name" : "Castform", 
    "type" : "Normal", 
    "power" : 35 
}
...
```

The `$match` pipeline stage is used to filter through a database or collection and only pass fields that match the specified value. In our case, `{ power: {$lte: 200}}` we are matching pokémon that have a `power` level that is lower than or equal to `200`.

---
## Practice

Which aggregation pipeline stage is used to filter through and only aggregate fields matching a specified value?

```javascript
???
```

* `$match`
* `$count`
* `$select`
* `$only`

---
## Revision

Aggregate the `pokemon` collection and only match pokémon whose power level is greater than or equal to `101`.

```javascript
db.pokemon.???(
  [ 
    {???: 
      {power: {???: 101}}
    }
  ]
)
```

* `aggregate`
* `$match`
* `$gte`
* `$lte`
* `$filter`
* `$gt`
* `match`