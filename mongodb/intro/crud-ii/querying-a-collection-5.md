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

Thus far we learned to use `insertOne` and `insertMany` to create document(s), `updateOne` and `updateMany` to update documents, or find to search for them, among other things. Besides these, MongoDB gives us a few more methods to use to find and modify documents.

The `findOneAndUpdate` method has the following signature:

```js
findOneAndUpdate(
  filter, 
  update, 
  options
);
```

Similarly to `updateOne`, this method allows us to search through collection for a document matching the given `filter` and modify the first one using the provided `update`. 
, and the `options` argument is used to control the `findOneAndUpdate()` method. The only required arguments are `filter` and `update`, and we will focus on these for this insight.

For instance, the query below searches for the first pokémon of `type: "Water"` and increases its `power` by `15`:
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