---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Querying a Collection


---

## Content

To perform queries means to search through a database or collection and return a result matching a specified condition.

In MongoDB, we have *query operators* that can be used to specify different conditions for your queries.

For instance, let's say we have a `pokemon` collection with more than 200 pokémon documents. We know that each pokémon has an `_id`, `type`, `name` and `secondType` field, and we want to display all the pokémon that have the type `"Grass"`. We can do that like so:

```javascript
db.pokemon.find({
  type: "Grass"
});
```

Output:

```javascript
{
  "_id" : ObjectId(
    "5d9d8a6a0b24990f19398209"
  ),
  "name": "Bulbasaur",
  "type": "Grass",
  "secondType": "Poison"
}
{
   "_id": ObjectId(
      "5d9d8b550b24990f1939820d"
    ),
  "name": "Ivysaur",
  "type": "Grass",
  "secondType": "Poison"
}
{
  "_id": ObjectId(
    "5d9d8b6c0b24990f1939820e"
  ),
  "name": "Venusaur",
  "type": "Grass",
  "secondType": "Poison"
}
{
  "_id": ObjectId(
    "5d9d8ec00b24990f19398226"
  ),
  "name": "Snorlax",
  "type": "Grass",
  "secondType": "Normal"
}
// ...
```

If we wanted to display all the pokémon of type `"Grass"` whose `secondType` equals `"Normal"`, we would do:

```javascript
db.pokemon.find({
  type: "Grass",
  secondType: "Normal"
});
```

Output:

```javascript
{
  "_id": ObjectId(
    "5d9d926c0b24990f19398228"
  ),
  "name": "Kangaskhan",
  "type": "Grass",
  "secondType": "Normal"
},
{
  "_id": ObjectId(
    "5d9d92910b24990f19398229"
  ),
  "name": "Chikorita",
  "type": "Grass",
  "secondType": "Normal"
},
{
  "_id": ObjectId(
    "5d9d8ec00b24990f19398226"
  ),
  "name": "Snorlax",
  "type": "Grass"
  "secondType": "Normal"
}
// ...
```

The above search returns only the documents that have `type` equal to `"Grass"` and `secondType` equal to `"Normal"`.


---

## Practice

Fill in the blanks to create a simple query that finds all `"Mud"` type pokémon in the `pokemon` collection.

```js
db.???.find({
  ???: ???
});
```

- pokemon
- type
- "Mud"
- Pokemon
- TYPE
- Mud
