---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - introduction
  - workout

type: normal

category: must-know

---

# Create a document

---
## Content

### Add Single Document

To add a document in MongoDB, you need to use the `db.mycollection.insertOne()` method.

```javascript
db.pokemon.insertOne({
  _id: 1,
  name: "Pikachu",
  type: "Electric"
})
```

Output:

```javascript
{
  "acknowledged": true,
  "insertedId": 1
}
```

**Note:** If there is no `pokemon` collection, a new one will be created. Also, if you don't specify an `_id` when adding a new document, an `_id` with an `ObjectId` value will be added by MongoDB. `ObjectId`s will be discussed later on.

### Add Multiple Documents

To add multiple documents to the `pokemon` database, you need to pass an array of pokémon (documents) to the `db.pokemon.insertMany()` method.

```javascript
db.pokemon.insertMany([
  {
    _id: 2,
    name: "Bulbasaur",
    type: "Grass"
  },
  {
    _id: 3,
    name: "Charmander",
    type: "Fire"
  },
  {
    _id: 4,
    name: "Squirtle",
    type: "Water"
  }
])
```

Output:

```javascript
{
  "acknowledged": true,
  "insertedIds": [ 2, 3, 4 ]
}
```

---
## Practice

Method used to add a single document: ???

Method used to add multiple documents: ???

* `insertOne()`
* `insertMany()`
* `insertSingle()`
* `insertMultiple()`
* `insertDocument()`
* `insertDocuments()`

---
## Revision

Complete the following code to add 3 documents to the `pokemon` database.

```javascript
db.pokemon.???([
  {
    ???: 2,
    name: "Bulbasaur",
    type: "Grass"
  },
  {
    _id: 3,
    ???: "Charmander",
    type: "Fire"
  },
  {
    _id: 4,
    name: "Squirtle",
    ???: "Water"
  }
])
```

* `insertMany`
* `_id`
* `name`
* `type`
* `insertOne`
* `1`
* `id`
* `_name`
* `_type`

---
## Quiz

### Do you know how to create a new document in MongoDB?

Choose the correct code that creates a new document in the `pokemon` collection.

???

* `db.pokemon.insertOne( {_id:13, name:"Psyduck", type:"water"} )`
* `db.Pokemon.insertOne( {_id:13, name:"Psyduck", type:"water"} )`
* `db.pokemon.insertDocument( {_id:13, name:"Psyduck", type:"water"} )`
* `db.Pokemon.insertDocument( {_id:13, name:"Psyduck", type:"water"} )`
