---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - introduction

type: normal

category: how to

---
# Update a single document

---
## Content

To update a document in MongoDB you should use either the `updateOne()` or the `updateMany()` method.

The `updateOne()` method is used to update a single document, and the `updateMany()` method is used to update multiple documents at once.

### Update a single document

The `updateOne()` method has 3 parameters `(filter, update, options)`.

The `filter` is the criteria used for selecting the document you want to edit.

The `update` is the new modification for the value of the selected document. Possible values for modification are `$rename`, `$set` and `$unset`(we will only use the `$set` value in this workout). `$set` is used to replace a value for the selected field of the document. If the selected field doesn't exist, `$set` will create a new one with the specified value.

The `options` parameter is used for adding more options to the update method and will be discussed in a later workout.

Let's say we have a `pokemon` collection where one of the Pokémon's type is misspelled.

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

If we wanted to change that Pokémon's `"type"` from `"Grasz"` to `"Grass"`, we can update the document with the `$set` modification through any of its properties like so:

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

Output:

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

How would you change the `name` of a pokemon with `"_id": 38` to "Tyranitar"?

```js
db.pokemon.updateOne(
  { _id: 38 },
  { $set: { name: "Tyranitar" } }
);
```

* `updateOne()`
* `_id`
* `38`
* `$set`
* `$update`
* `"_id"`
* `"38"`
* `updateSingle()`

---
## Revision

Finish the code below to change the `type` of the misspelled "Firee" Pokémon in the `pokemon` collection to be of `type` "Fire".

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
* `.updateCollection`
* `fire`
