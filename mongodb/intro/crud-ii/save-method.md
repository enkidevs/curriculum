---
author: Stefan-Stojanovic

levels:
  - beginner
  
aspects:
  - introduction
    
type: normal

category: must-know

---

# The save() command

---
## Content

The mongodb `save()` method can be used to either update/replace an existing document or insert a new one. The syntax is:

```javascript
db.collection.save(<document>)
```

If we specify an existing `_id` field for the `save()` method, it will work like the `update()` method and replace the document matching the specified `_id` field with the newly specified one.

### Replacing a document

Let's say we have a document where some information is wrong:
```javascript
{
  "_id": ObjectId(
    "5d9d8b8c0b24990f1939820f"
  ),
  "name": "Chharmander", 
  "type": "Mud", 
  "power": 199
}
```

To replace it with a new document with the corrected information, we can do so like this:
```javascript
db.pokemon.save({
  "_id": ObjectId(
    "5d9d8b8c0b24990f1939820f"
  ),
  "name": "Charmander",
  "type": "Flame",
  "power": 430
})
```

Output:
```javascript
WriteResult({
  "nMatched": 1,
  "nUpserted": 0,
  "nModified": 1
})
```

The `nMatched: 1` means that the `save()` method has matched a single document.
The `nUpserted: 0` means that no documents were inserted into the collection.
The `nModified: 1` means that a single document was modified.

### Adding a new document with an `_id` field

To add a new document to an existing collection, we can add an `_id` field whose value doesn't match any document, like so:
```javascript
db.pokemon.save({
  "_id": 777,
  "name": "RandomPokemon",
  "type": "Adaptable",
  "power": 123321
})
```

Output:
```javascript
WriteResult({
  "nMatched": 0,
  "nUpserted": 1,
  "nModified": 0,
  "_id": 777
})
```

The `nMatched:0` means 0 documents were matched.
The `nUpserted: 1` means one new document was inserted into the collection.
The `nModified: 0` means 0 documents were modified.
The `"_id": 777` is the `_id` we specified in our save method.

### Adding a new document without an `_id` field

Last but not least, we can add a new document to the collection without specifying an `_id` field. If a document is added this way, a new `ObjectID` is created by default.
Example:
```javascript
db.pokemon.save({
  "name": "Unknown",
  "type": "Unknown"
})
```

Output:
```javascript
WriteResult({ "nInserted": 1 })
```

How the document looks:
```javascript
{ 
  "_id": 
    ObjectId("5d68a9beb63e7f6619512670"),
  "name": "Unknown",
  "type": "Unknown"
}
```

---
## Practice

Use the `save()` method to insert a new document that has 17 for its `_id` and is named `"new document"`:

```javascript
db.pokemon.save({
  ???: ???,
  ???: "new document"
})
```

Use the `save()` method to replace an existing document whose `_id` is `3` and add a new `type` field which takes `"NewType"` as a value. 

```javascript
db.pokemon.save({
  "_id": ???,
  "name": "NewName",
  ???: ???
})
```

Use the `save()` method to insert a new document without the `_id` field:

```javascript
???   
```


* `"_id"`
* `17`
* `"name"`
* `3`
* `"type"`
* `"NewType"`
* `db.pokemon.save({ "name": "NoName" })`
* `db.pokemon.save({ "_id":false, "name": "NoName" })`

---
## Revision

What is the MongoDB `save()` method used for?

???

* `To either update/replace an existing document or insert a new one.`
* `Only to save a new document.`
* `Only to update.`
* `To save a new copy of the specified collection.`
