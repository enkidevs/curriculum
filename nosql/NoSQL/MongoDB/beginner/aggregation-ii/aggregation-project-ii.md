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
  
   
links:
  
---
# Aggregation project 2
---
## Content

The `$project` stage can also be used to include or exclude specified fields within an array.

For instance, let's say we have a `pokemon` collection where each pokémon has an `_id`,`name`,`type`,`power` fields and an `ability` array field.
In the array there are 3 fields; `Basic`, `Strong` and `Ultimate`. We can use the `$project` stage to only include the `name`, `type` and `Ultimate` `ability` in the aggregation.

Example document:
```javascript
{ 
  "_id" : 138, 
  "name" : "Omanyte", 
  "type" : "Rock", 
  "power" : 303, 
  "ability" : [ 
    { 
      "Basic" : "Seed Bomb" 
    }, 
    { 
      "Strong" : "Bite" 
      }, 
    { 
      "Ultimate" : "Hydro-Pump" 
    }
  ] 
}
```
```javascript
db.pokemon.aggregate(
  [
    {
      $project:{
        _id:0,
        name:1,
        "ability.Ultimate":1
      }
    }
  ]
)
```
Output:
```javascript
{ 
  "name" : "Omanyte", 
  "type" : "Rock", 
  "power" : 303, 
  "ability" : [
    { 
      "Ultimate" : "Hydro-Pump" 
    }
  ] 
}
```

Furthermore, we can use the `$project` stage to add a new array field to a document. For instance, let's say we have a document where there are 5 different abilites in fields called `ability1`,`ability2`...`ability5`. We can use the `$project` stage to combine all 5 abilities and return them as an `ability` array.

Document:
```javascript
{
_id:3,
"name" : "Charmander",
"ability1" : "Throw",
"ability2" : "Grab", 
"ability3" : "Stab", 
"ability4" : "Claw", 
"ability5" : "Shock" 
}
```
```javascript
db.collection.aggregate( 
  [ 
    { 
      $project: {
         abilities: [ 
           "$ability1", 
           "$ability2",
           "$ability3", 
           "$ability4",
           "$ability5" 
        ]
      } 
    }
  ] 
)
```
Output:
```javascript
{ 
  "_id" : 3, 
  "name" : "Charmander",
  "abilities" : [ 
    "Throw", 
    "Grab", 
    "Stab", 
    "Claw", 
    "Shock" 
  ] 
}
```
---
## Practice

