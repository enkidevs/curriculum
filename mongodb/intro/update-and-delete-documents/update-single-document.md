---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - introduction

type: normal

category: how to

---

# Updating a document

---
## Content

In MongoDB, we can use the `updateOne()` method to update a single document, and the `updateMany()` method to update multiple documents at once.

### Update a single document

The `updateOne()` method has 3 parameters `(filter, update, options)`.

The `filter` is the criteria used for selecting the document you want to edit.

The `update` parameter contains the changes that we want to apply to the document. Commonly, we do this with MongoDB [update operators](https://docs.mongodb.com/manual/reference/operator/update/#id1) such as `$set` or `$rename`. For example, `$set` will either update a value for a field that exists or create a new field with that value if it doesn’t.

The `options` parameter is used for adding more options to the update method and will be discussed in a later workout.

Let's say we have a `pokemon` collection where one of the pokémon's type is misspelled.

```javascript
db.pokemon.find({ _id: 8 })
```

Output:

```javascript
{
  "_id": 8,
  "name": "Venusaur",
  "type": "Grasz"
}
```

If we wanted to change that pokémon's `"type"` from `"Grasz"` to `"Grass"`, we can update the document with the `$set` operator through any of its properties like so:

```javascript
db.pokemon.updateOne(
  { _id: 8 },
  { $set: { type: "Grass" } }
);

// OR

db.pokemon.updateOne(
  { name: "Venusaur" },
  { $set: { type: "Grass" } }
);

// OR

db.pokemon.updateOne(
  { type: "Grasz" },
  { $set: { type: "Grass" } }
);
```

The output in all three cases is:

```javascript
{
  "nMatched": 1,
  "nUpserted": 0,
  "nModified": 1
}
```

To check if the document has been updated:

```javascript
db.pokemon.find({ _id: 8 })
```

Output:

```javascript
{
  "_id": 8,
  "name": "Venusaur",
  "type": "Grass"
}
```

---
## Practice

How would you change the `name` of a pokémon from "Tyran" to "Tyranitar"?

```js
db.pokemon.???(
  { ???: ??? },
  { ???: { name: "Tyranitar" } }
);
```

* `updateOne`
* `name`
* `"Tyran"`
* `$set`
* `$update`
* `Name`
* `$change`
* `updateSingle`

---
## Revision

Finish the code below to change the `type` of the misspelled "Firee" pokémon in the `pokemon` collection to be of `type` "Fire".

```javascript
db.pokemon.???(
  { type: ??? },
  { ???: { type: ??? } }
);
```

* `updateOne`
* `"Firee"`
* `$set`
* `"Fire"`
* `$arrange`
* `updateCollection`
* `fire`
