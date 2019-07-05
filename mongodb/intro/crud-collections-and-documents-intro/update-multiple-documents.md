---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - introduction

type: normal

category: must-know

standards:
  javascript.crud.3: 10
  javascript.crud.7: 10
  javascript.field-update-operators.0: 10

links:

---
# Update multiple documents

---
## Content

The  `updateMany()` method is used to update multiple documents.

The `updateMany()` method has the same 3 parameters as the `updateOne` method; `(filter, update, options)`.

Let's say we have a `pokemon` collection with 2 Pokémon of `type` `Fire`.

```javascript
db.pokemon.find({ "type": "Fire" })
```

Output:

```javascript
{
  "_id" : 3,
  "name" : "Charmander",
  "type" : "Fire"
}
{
  "_id" : 6,
  "name" : "Charizard",
  "type" : "Fire"
}
```

If we wanted to change their `type` to `"Flame"`, we can do that like so:

```javascript
db.pokemon.updateMany(
  { type: "Fire" },
  { $set: { type: "Flame" } }
);
```
Output:

```javascript
{
  "acknowledged" : true,
  "matchedCount" : 2,
  "modifiedCount" : 2
}
```

If we check the `pokemon` collection for  `"type": "Flame"` Pokémon we would get:

```javascript
db.pokemon.find({ "type": "Flame" })
```

Output:

```javascript
{
  "_id" : 3,
  "name" : "Charmander",
  "type" : "Flame"
}
{
  "_id" : 6,
  "name" : "Charizard",
  "type" : "Flame"
}
```

---
## Practice

Which command is used for updating several documents at once:

```javascript
db.mycollection.???
```

* `updateMany()`
* `updateOne()`
* `addOne()`
* `addMany()`
* `updateMultiple()`
* `updateSingle()`

---
## Revision

Finish the code below to change the `type` of all "Mud" Pokémon in the `pokemon` collection to be of `type` "Dirt".

```javascript
db.pokemon.???(
  { type: ??? },
  { ???: { type: ??? } }
);
```

* `updateMany`
* `"Mud"`
* `$set`
* `"Dirt"`
* `$arrange`
* `.updateCollection`
* `mud`
* `dirt`
