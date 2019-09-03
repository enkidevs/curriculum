---
author: Stefan-Stojanovic

levels:
  - beginner
  
aspects:
  - introduction

type: normal

category: must-know

standards: 
  mongodb.crud.22: 10
  mongodb.crud.23: 10

links:

---
# Deleting documents 2
---
## Content

Next to using the `db.collection_name.deleteOne()` or `.deletetMany()` methods to delete a single or multiple documents, we can use the `db.collection_name.findOneAndDelete()` or `db.collection_name.remove()` methods.

The `.findOneAndDelete()` method can be used to search through a collection and delete only the first documents found based on the specified query. 

For instance, the bellow query searches for the first pokémon(document) whose `power` is greater than `1000` and deletes it:
```javascript
db.pokemon.findOneAndDelete(
   { "power": {$gt : 1000} }
)

```
Output:
```javascript
{
	"_id" : 807,
	"name" : "Zeraora",
	"type" : "Electric",
	"power" : 3012
}
```

**Note:** When executed, the query returns the document that was deleted.

### `.remove()`

The `.remove()` method can be used to delete a single document, multiple or all documents at once based on the specified criteria.
Syntax:
```javascript
db.collection.remove(
   <query>,
   <justOne>
)
```

To delete all documents from a collection:
```javascript
db.pokemon.remove({})
```

To delete a single or multiple documents based on criteria:
```javascript
db.pokemon.remove( 
	{ "power": { $eq: 40 } } 
)
```
Output:
```javascript
WriteResult({ "nRemoved" : 11 })
```

In the above example, we have deleted all documents whose `power` field equals exactly `40`.

**Note:** The output of the `.remove()` method, whether it is deleting a single, multiple or all documents will always display as `WriteResult({"nRemoved": NUMBER})`. The `NUMBER` is the number of documents deleted.

To delete exactly one document based on specified criteria we need to add `true` or `1` for the `justOne` boolean parameter.

When using `.remove()` to delete a singular document, it works the same way as the `.findOneAndDelete()` method by deleting the first matching document.

**Note:** The `justOne` parameter is false by default.

Example:
```javascript
db.pokemon.remove( 
	{ "type": "Fire" },
	true 
)
```
Output:
```javascript
WriteResult({ "nRemoved" : 1 })
```

---
## Practice

Delete all documents in the `pokemon` collection whose `type` equals `Water`.
```javascript
db.pokemon???( 
	{ "???": "Water" } 
)
```

Remove all documents within the `pokemon` collection.
```javascript
???.???.???(???)
```

* `.remove`
* `type`
* `db`
* `pokemon`
* `remove`
* `{}`
* `all`
* `[]`
* `deleteAll`
