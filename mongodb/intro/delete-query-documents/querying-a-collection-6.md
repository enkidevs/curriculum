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

# Querying with `findOneAndReplace()`

---
## Content

As the name suggests, the `findOneAndReplace()` method makes use of a constrain to find a document, and replaces it with a newly specified document.

This is best explained through an example. Let's say that we want to replace a document that is no longer viable. We can do so like this:

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
);
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

By default, our query returns the original document (the one that will be replaced). If you wanted to return the new document, you'd have to add `returnNewDocument: true` in your query.

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

Fill in the blanks to find the first document with a `type` of `"Water"` and replace it with the document listed below:
```javascript
db.pokemon.???(
  { "type": ???},
  {
    "name": "Charizard",
    "type": "Fire", 
    "power": 999
  }
);
```

Which command has to be added to our queries to display the updated/replaced document as opposed to the original one? 

???

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
