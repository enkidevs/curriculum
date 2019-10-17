---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - introduction

type: normal

category: how to

---

# Update multiple documents

---
## Content

The  `updateMany()` method is used to update multiple documents. This method has the same 3 parameters as the `updateOne` method: `(filter, update, options)`.

Let's say we have a `pokemon` collection with 2 pokémon of `type` `"Fire"`.

```javascript
db.pokemon.find({ type: "Fire" })
```

Output:

```javascript
{
  "_id": 3,
  "name": "Charmander",
  "type": "Fire"
}
{
  "_id": 6,
  "name": "Charizard",
  "type": "Fire"
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
  "acknowledged": true,
  "matchedCount": 2,
  "modifiedCount": 2
}
```

Now, if we check the `pokemon` collection for pokémon that have `"type": "Flame"` we would get:

```javascript
db.pokemon.find({ type: "Flame" })
```

Output:

```javascript
{
  "_id": 3,
  "name": "Charmander",
  "type": "Flame"
}
{
  "_id": 6,
  "name": "Charizard",
  "type": "Flame"
}
```

---
## Practice

How would you update all documents of `type: "Poison"` to be of `type: "Normal"`?

```js
db.pokemon.???(
  { ???: "Poison" },
  { ???: { type: ??? } }
);
```

* `updateMany`
* `type`
* `$set`
* `"Normal"`
* `updateMultiple`
* `$update`
* `Normal`
* `$update`

---
## Revision

Finish the code below to change the `type` of all "Mud" pokémon in the `pokemon` collection to be of `type` "Dirt".

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
* `updateCollection`
* `mud`
* `dirt`
