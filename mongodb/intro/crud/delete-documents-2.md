---
author: Stefan-Stojanovic

levels:
  - beginner
  
aspects:
  - workout
  - deep


type: normal

category: how to

---

# Delete documents with `remove()`

---
## Content

The `remove()` method can be used to delete a single, multiple or all documents at once based on the specified criteria. The syntax is:
```javascript
db.collection.remove(
  <query>,
  <justOne>
)
```

To delete all documents from a collection, you would use:
```javascript
db.pokemon.remove({})
```

To delete documents based on criteria:
```javascript
db.pokemon.remove({ 
	power: { $eq: 40 } 
})
```

Output:
```javascript
WriteResult({ "nRemoved": 11 })
```

In the above example, we have deleted all documents whose `power` field equals exactly `40`.

**Note:** The output of the `remove()` method, whether it is deleting a single, multiple or all documents, will always be `WriteResult({"nRemoved": NUMBER})`. The `NUMBER` is the number of documents deleted.

To delete exactly one document based on specified criteria we need to add `true` or `1` for the `justOne` boolean parameter.

When using `remove()` to delete a single document, it works the same way as the `findOneAndDelete()` method by deleting the first matching document.

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
WriteResult({ "nRemoved": 1 })
```

---
## Practice

Delete all documents in the `pokemon` collection whose `type` equals `"Water"`.
```javascript
db.pokemon.???( 
	{ "???": "Water" } 
)
```

Remove all documents within the `pokemon` collection.
```javascript
???.???.remove(???)
```

* `remove`
* `type`
* `db`
* `pokemon`
* `{}`
* `all`
* `[]`
* `deleteAll`
* `delete`

---
## Revision

Which one is not a valid remove method in MongoDB?

???

* `removeAll()`
* `remove()`
* `deleteOne()`
* `deleteMany()`

