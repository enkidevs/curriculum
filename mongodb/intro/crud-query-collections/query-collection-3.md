---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - new

type: normal

category: must-know

standards:
  javascript.crud.3: 10
  javascript.comparison-operators.0: 10
  javascript.comparison-operators.1: 10
  javascript.comparison-operators.2: 10
  javascript.comparison-operators.3: 10
  javascript.logical-operators.0: 10

links:

---
# Querying a collection using $and
---
## Content

In the previous insight, we discussed how to query using the `$lt`, `$gt`, `$lte` and `$gte` operators.

Now, we are going to discuss how to find a range between two values using a combination of the 4 previously explained operators and the `$and` logical operator.

The `$and` logical operator is used to join 2 or more expressions together to query data more precisely. When we query with the `$and` operator, no matter the number of expressions located inside, all expressions have to evaluate to true.

Let's say we want to find all the pokémon whos `power` ranges between 250 and 350, we would need to use 2 or more of the above operators together with the `$and` operator to achieve so. If we would use them without `$and`, it would not give a range between the two values, but rather all values lower than and greater than the specified ones.

Example without `$and`:
```javascript
db.pokemon.find(
{
    power:{$gt:250},
    power:{$lt:450}
})
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
{
    "_id" : 150,
    "name" : "Mewtoo",
    "type" : "Psychic",
    "power" : 800
}
...
```
In the example above, the document with `"_id":1` doesn't satisfy the first expression, but it does satisfy the second, therefore it gets displayed.

On the other hand, the query with the `$and` operator below:
```javascript
db.pokemon.find(
    {$and:
        [
        {power: {$gt: 250}},
        {power:{$lt:350}}
        ]
    }
)
```
would only display pokémon(documents) within the specified range.

Output of the above example:
```javascript
{
    "_id" : 2,
    "name" : "Bulbasaur",
    "type" : "Grass",
    "power" : 311
}
{
    "_id" : 7,
    "name" : "Ivisaur:",
    "type" : "Grass",
    "power" : 335
}
{
    "_id" : 73,
    "name" : "Tentacruel",
    "type" : "Water",
    "secondType" : "Poison",
    "power" : 333
}
...
```

**Note**: The order of the operators does not matter(`$lt`, `$lte`, `$gt` and `$gte`). This means the two examples below would give the exact same output.

Example 1:
```javascript
db.pokemon.find(
    {$and:
        [
        {power: {$gte: 250}},
        {power: {$lte:350}}
        ]
    }
)
```
Example 2:
```javascript
db.pokemon.find(
    {$and:
        [
        {power: {$lte:350}},
        {power: {$gte: 250}}
        ]
    }
)
```

---
## Practice

Which logical operator is used together with 2 or more comparison operators to display a range of documents between two values?

* `$and`
* `$range`
* `$if`
* `$compare`

---
## Revision

Create a query to find all documents within the `pokemon` collection whose `age` falls in the range 23-31, including the bounds.

```javascript
db.pokemon???(
    {???:
        [
        {age: {???: 23}},
        {???:{???: 31}}
        ]
    }
)
```

* `.find`
* `$and`
* `$gte`
* `age`
* `$lte`
* `$lt`
* `$gt`
* `%and`
