---
author: stefan.stojanovic

levels:
  - beginner
  
aspects:
  - introduction
    
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
  - '[link to official documentation](https://enki.com)'
---
# query-documents-2
---
## Content

Last insight we learned how to query documents and use the `$in` and `$or` operators.

Now we will learn how to use the `$lt`, `$lte`, `$gt` or `$gte` comparison operators to find documents more precisely.

- `$lt` less than the specified value
- `$lte` less than or equal to the specified value
- `$gt` greater than the specified value
- `$gte` greater than or equal to the specified value

Let's say we have a `pokemon` collection where each pokémon has a `power` field which specifies their strength.

Now we want to look through the `pokemon` collection and find all the pokémon that have their `power` level greater than 250. We can do so like this:

```javascript
db.pokemon.find(
    {power: {$gt: 250}}
)
```
Output
```javascript
{
    "_id" : 2,
    "name" : "Bulbasaur", 
    "type" : "Grass", 
    "secondType" : "Poison", 
    "power" : 311 
}
{ 
    "_id" : 7, 
    "name" : "Ivisaur:",
    "type" : "Grass", 
    "secondType" : "Poison", 
    "power" : 335 
}
{ 
    "_id" : 73, 
    "name" : "Tentacruel", 
    "type" : "Water", 
    "secondType" : "Poison", 
    "power" : 333 
}
{ 
    "_id" : 146, 
    "name" : "Moltres", 
    "type" : "Fire", 
    "secondType" : "Flying", 
    "power" : 404 
}
...
```

The other 3 operators, `$lt`, `$lte` and `$gte` are used in the exact same way as the `$gt` operator.

```javascript
db.pokemon.find(
    {power: {$gte: 50}}
)
```

```javascript
db.pokemon.find(
    {power: {$lt: 333}}
)
```
```javascript
db.pokemon.find(
    {power: {$lte: 500}}
)
```

You can also use a combination of the above operators to create more precise queries. 

For instance:
```javascript
db.pokemon.find(
    {
        power: {$gt: 350}
        age: {$lte: 1}
    }
)
```
In the example above, the query would find all documents whoose power level is greater than 350 and all documents whoose age is less than or equal to 1.

Output:
```javascript
...
{ 
    "_id" : 146, 
    "name" : "Moltres", 
    "type" : "Fire", 
    "secondType" : "Flying", 
    "power" : 404 
}
{ 
    "_id" : 151, 
    "name" : "Mew", 
    "type" : "Psychic", 
    "age" : 1, 
    "power" : 404 
}
...
```

**Note**: If we want the query above to find only the documents where both values are true, we would have to add the `$and` logical operator. More on this in the next insight.

---
## Practice

Match the operator with the description:

`$lt` : ???
`$lte`: ??? 
`$gt` : ???
`$gte`: ???

* Less than 
* Less than or equal to 
* Greater than 
* Greater than or equal to

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
