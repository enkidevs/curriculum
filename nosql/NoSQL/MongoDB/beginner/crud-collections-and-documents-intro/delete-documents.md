---
author: stefan.stojanovic

levels:
  - beginner
  
aspects:
  - introduction
    
type: normal

category: must-know

standards: 
  javascript.crud.9: 10
  javascript.crud.10: 10
  javascript.crud.11: 10

links:

---
# delete document
---
## Content

To delete a document in MongoDB you can use either the  `db.collection_name.deleteOne()`, `db.collection_name.remove()` or `db.collection_name.deleteMany()` method.

### Delete a Single Document

To delete a single document you should use the `db.collection_name.deleteOne()` method.

Let's say we want to delete a pokemon named `Snorlax` from the `pokemon` collection. We can easily do so like this:

```javascript
db.pokemon.deleteOne(
{
    name:"Snorlax",
}
)
```
Output:
```javascript
{ 
    "acknowledged" : true,
    "deletedCount" : 1
}
```

Next, if we wanted to delete a pokemon of type `Grass` where there are more than one of them, the

```javascript
db.pokemon.deleteOne(
{
    type:"Grass"
}
)
```
method, would only delete the first pokémon(document) of that type. On the other hand, if we wanted to delete all pokémon of that type, we would need to use the `db.pokemon.deleteMany()` method.
 
### Delete Multiple Documents

To delete multiple documents within the `pokemon` collection, we need to use the `db.pokemon.deleteMany()` method.

For instance, here we delete all pokémon of type `Grass`:
```javascript
db.pokemon.deleteMany(
{
    type:"Grass"
}
)
```
Output:
```javascript
{ 
    "acknowledged" : true, 
    "deletedCount" : 5
}
```

Furthermore, you can also delete all documents within a collection by using the `db.pokemon.deleteMany()` method with no paramaters.
```javascript
db.pokemon.deleteMany({})

or

db.pokemon.deleteMany()
```
Output:
```javascript
{
   "acknowledged" : true,
    "deletedCount" : 12 
}
```

---
## Practice

Delete the first document in the `pokemon` table of type `Fire`.
```javascript
???.pokemon.???(
{
    ???:"???"
}
)
```
Delete all documents within the `pokemon` collection: ???

* `db`
* `deleteOne`
* `type`
* `Fire`
* `db.pokemon.deleteMany({})`
* `db.pokemon.delete({})`
* `db.pokemon.deleteAll()`
* `database`
* `deleteMany`
* `FIRE`

---
## Revision

Delete a single document within the `pokemon` collection with the name "Abraxas":
```javascript
db.pokemon.delete???(
{
    ??? : ???
}
)
```

Delete all documents within the `pokemon` collection with a type "Ghost": 
```javascript
db.pokemon.delete???(
{
    ??? : ???
}
)
```

Delete all documents within the `pokemon` collection: ???

* `One`
* `name`
* `"Abraxas"`
* `Many`
* `type`
* `"Ghost"`
* `db.pokemon.deleteMany({})`
* `db.pokemon.delete({})`
* `db.pokemon.deleteAll()`