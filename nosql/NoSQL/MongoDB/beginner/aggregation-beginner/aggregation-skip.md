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
  javascript.aggregation-pipeline.1: 10
  javascript.aggregation-pipeline.2: 10
  javascript.aggregation-pipeline.4: 10
  javascript.aggregation-pipeline.5: 10 

links:
  - '[link to official documentation](https://enki.com)'

---
# Aggregation $skip
---
## Content

A similar aggregation pipeline stage to `$limit`, is the `$skip` stage.

The `$limit` stage limits the number of documents you want to enter into the aggregation pipeline starting from the first. Whereas the `$skip` stage skips the specified number of documents starting from the first and enters all the rest.

Syntax:
```javascript
{$skip: <positive integer> }
```
The `<positive integer>` has to be a whole number.

For instance, Let's say we have a `pokemon` collection with 10 pokémon and want to aggregate only the last 2. We can that like so:
```javascript
db.pokemon.aggregate(
    { $skip : 8 }
)
```
Output:
```javascript
{
  "_id" : 9, 
  "name" : "Blastoise", 
  "type" : "Water", 
  "power" : 667
},
{ 
  "_id" : 10, 
  "name" : "Caterpie", 
  "type" : "Bug", 
  "power" : 120 
}
```

The `$skip` pipeline stage can also be used with `$limit`, `$count` and/or `$match`. 

```javascript
db.pokemon.aggregate(
    { $skip : 8 },
    { $limit : 1 }
)
```
Output:
```javascript
{
  "_id" : 9, 
  "name" : "Blastoise", 
  "type" : "Water", 
  "power" : 667
},
```
In the above example, we skipped the first 8 pokemon and aggregated only 1 after that.

Now we'll use all 4 stages learned in this workout.

We are going to aggregate the first `50` pokémon, starting from the 301, count how many have a `power` level greater than `400` and store the result in a field named `"result"`.
```javascript
db.pokemon.aggregate(
  [
    {$match:
      { power: {$gt: 400}}
    },
    {$skip: 300},
    {$limit: 50},
    {$count: "result"}
  ] 
)
```
Output:
```javascript
{ 
  "result" : 2
}
```

---
## Practice

What is the `$skip` aggregation stage used for?

???

Which of the 2 examples below is a valid `$skip` stage?  

???

A: {$limit: 9.9}
B: {$skip: 99}

* To skip a specified number of documents to be aggregated starting from the first
* `B`
* To skip the number of stages the documents will go through
* `A`

---
## Revision

Let's say we have a collection named `games` with 100 documents. Display the 55th and 56th game using aggregation.

```javascript
db.???.aggregate(
    { ??? : 54 },
    { ??? : ??? }
)
```

* `games`
* `$skip`
* `%limit`
* `2`
* `GAMES`
* `58`
* `100`
* `document`