---
author: stefan.stojanovic

levels:
  - basic
  
aspects:
  - new
    
type: normal

category: must-know
      
standards:
  javascript.aggregation-pipeline.0: 10
  javascript.aggregation-pipeline.1: 10
  javascript.aggregation-pipeline.2: 10
  javascript.aggregation-pipeline.5: 10 

links:

---
# Aggregation limit
---
## Content

The aggregation `$limit` stage is used to limit the number of documents you want to enter into the aggregation pipeline starting from the first.

Syntax:
```javascript
{$limit: <positive integer> }
```
The `<positive integer>` has to be a whole number.

For instance, Let's say we have a `pokemon` collection with 500 pokémon and want to aggregate only the first 3. We can that like so:
```javascript
db.pokemon.aggregate(
    { $limit : 3 }
)
```
Output:
```javascript
{
  "_id" : 1, 
  "name" : "Pikachu", 
  "type" : "Electric", 
  "power" : 231
}
{ 
  "_id" : 2, 
  "name" : "Bulbasaur", 
  "type" : "Grass", 
  "power" : 311 
}
{ 
  "_id" : 3, 
  "name" : "Charmander", 
  "type" : "Flame", 
  "power" : 199 
}
```

The `$limit` pipeline stage can also be used with `$match` and `$count`. Let's say we want to count the number of pokémon in the `pokemon` collection whose age is greater than 17. The `pokemon` collection has 500 pokémon, but we only want to see the age of the first 100.
```javascript
db.pokemon.aggregate(
  [
    {$match:
      { age: {$gt: 17}}
    },
    {$limit: 100},
    {$count: "first100"}
  ] 
)
```
Output:
```javascript
{ 
  "first100" : 57
}
```

---
## Practice

What is the `$limit` aggregation stage used for?

???

Which of the 2 examples below is a valid `$limit` stage?  

???
```javascript
A: {$limit: 5}
B: {$limit: -5}
```

* To limit the number of documents you want to aggregate
* `A`
* To limit the number of stages for the aggregation
* `B`

---
## Revision

Let's say we have a collection named `shoes` with 50000 documents. Each shoe has a `size` and `color` field.

Count the number of shoes, for the first `500`, where the size is less than or equal to `12` and output the result in a field named `kidsShoes`.

```javascript
db.???.aggregate(
  [
    {$match:
      {???: {???: 12}}
    },
    {???: ???},
    {$count: ???}
  ] 
)

//{ 
//  "kidsShoes" : 177
//}
```

* `shoes`
* `size`
* `$lte`
* `$limit`
* `500`
* `"kidsShoes"`
* `color`
* `SHOES`
* `%limit`