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

# Querying with `findOneAndReplace`

---
## Content

A similar method to `findOneAndUpdate()` is the `findOneAndReplace()`. 

Unlike the first method, which finds the first document and *updates* the content based on the specified criteria, the `findOneAndReplace()` method also finds the first document, but instead of *updating*, it *replaces* it with a newly specified document.

For instance, let us say one of our documents was no longer viable and we wanted to remove it and replace it with a new one. We can do so like this:

```javascript
db.pokemon.findOneAndReplace(
  { power: { $eq: 350 } },
  {
    "_id": ObjectId(
      "5d9d8e800b24990f19398223"
    ),
    name: "Mewtoo",
    type: "Unknown",
    power: 700
  }
)
```

Output:
```javascript
{ 
  "_id": ObjectId(
    "5d9d8dcb0b24990f1939821f"
  ), 
	"name": "Electrode", 
	"type": "Electric", 
	"power": 350, 
	"spells": 
	[ 
		"Seed Bomb", 
		"Bite", 
		"Hydro-Pump" 
	] 
}
```

Just like with the `findOneAndUpdate()` method, if we don't add `returnNewDocument: true`, our query would display the original document.

```javascript
db.pokemon.findOneAndReplace(
  { power: { $eq: 350 } },
  {
    "_id": ObjectId(
      "5d9d8e800b24990f19398223"
    ),
    name: "Mewtoo",
    type: "Unknown",
    power: 700
  },
  { returnNewDocument: true }
)
```

Output:
```javascript
{
	"_id": ObjectId(
    "5d9d8e800b24990f19398223"
  ),
	"name": "Mewtoo",
	"type": "Unknown", 
	"power": 700
}
```

---
## Practice

Find the first document within the `pokemon` collection with a `power` greater than `400` and decrease the `power` by `135`.
```javascript
db.pokemon.???(
  { "power": ???},
  { ???: { "power": -135 } },
)
```

Fill in the blanks to find the first document with a `type` of `"Water"` and replace it with the document listed below:
```javascript
db.pokemon.???(
  { "type": ???},
  {
	"name": "Charizard",
	"type": "Fire", 
	"power": 999
  }
)
```

Which command has to be added to our queries to display the updated/replaced document as opposed to the original one? 

???

* `findOneAndUpdate`
* `{ $gt: 400 }`
* `$inc`
* `findOneAndReplace`
* `"Water"`
* `{ returnNewDocument: true }`
* `{ returnNew: true }`
* `update`
* `replace`
* `$dec`

---
## Revision

Which of these is not a valid MongoDb query method?

???

* `db.collection_name.insertMultiple()`
* `db.collection_name.insertMany()`
* `db.collection_name.insertOne()`
* `db.collection_name.insert()`
