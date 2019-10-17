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

# Querying with `findOneAndUpdate()`

---
## Content

Thus far we learned to use `insertOne()` and `insertMany()` to create document(s), `updateOne()` and `updateMany()` to update documents, or find to search for them, among other things. Besides these, MongoDB gives us a few more methods to use to find and modify documents.

The `findOneAndUpdate()` method has the following signature:

```js
findOneAndUpdate(
  filter, 
  update, 
  options
);
```

Similarly to `updateOne()`, this method allows us to search through collection for a document matching the given `filter` and modify the first one using the provided `update`. The only required arguments are `filter` and `update`, and we will focus on these for this insight.

For instance, the query below searches for the first pokémon of `type: "Water"` and increases its `power` by 15:
```javascript
db.pokemon.findOneAndUpdate(
  { type: "Water" },
  { $inc: { power: 15 } }
)
```

Output:
```javascript
{
  "_id": ObjectId(
    "5d9d8bc20b24990f19398211"
  ),
	"name": "Squirtle",
	"type": "Water",
	"power": 233,
	"spells": 
	[
		"Poison",
		"Growth",
		"Solar-Beam"
	]
}
```

**Note:** When executed, the query returns the original version of the document by default. To display the modified version of the document upon executing the query, you need to add `returnNewDocument: true`.

In the above example, we added 15 to the `power` field. This time let's decrease the `power` by 14:
```javascript
db.pokemon.findOneAndUpdate(
  { type: "Water" },
  { $inc: { power: -14 } },
  { returnNewDocument: true }
)
```

Output:
```javascript
{
  "_id": ObjectId(
    "5d9d8bc20b24990f19398211"
  ),
	"name": "Squirtle",
	"type": "Water",
	"power": 234,
	"spells": 
	[
		"Poison",
		"Growth",
		"Solar-Beam"
	]
}
```

**Note:** The `$inc` operator is used to either increase or decrease the value of the specified field. If the field doesn't exist, it will be created with the value specified with the `$inc` operator.

You might be wondering what the difference between the `findOneAndUpdate()` and `updateOne()` methods are. The first difference is that the `findOneAndUpdate()` method returns the document that will be updated (or the updated document) while the `updateOne()` method returns a document that contains the following:
- `matchedCount` that contains the number of matched documents
- `modifiedCount` that contains the number of modified documents
- `upsertedId` that contains the `_id` of the upserted[1] document

The second, and more important, difference is that the `updateOne()` method (as well as `update()` and `updateMany()`) performs an atomic update[2]. When using `findOneAndUpdate()` method, we retrieve the content of the document and then we update it. In this case, we are more interested on the content rather than the success of the transaction.

---
## Practice

Find the first document within the `pokemon` collection with a `power` greater than `400` and decrease the `power` by `135`.
```javascript
db.pokemon.???(
  { "power": ???},
  { ???: { "power": -135 } },
)
```

* `findOneAndUpdate`
* `{ $gt: 400 }`
* `$inc`
* `update`
* `findAndUpdate`
* `replace`
* `$dec`

---
## Footnotes

[1:Upserting]
Upserting represents inserting a document in our collection if it does not already exist, or updating it if it does. MongoDB checks your collections for a matching `_id`, and if it finds one, it updates the corresponding document. If it doesn't find a matching `_id`, it creates a new document.

[2:Atomicity]
By an atomic transaction we mean that in a series of database operations, either **all operations occur**, or **nothing occurs**. Basically, we are more interested in the transaction to occur, rather than the content of the transaction.