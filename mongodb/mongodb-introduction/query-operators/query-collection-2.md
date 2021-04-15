---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# `$in` & `$or`


---

## Content

Let's say we want to get all documents with their type equal to either `"Grass"` **or** `"Electric"`. We can do so by using the `$or` logical operator, or the `$in` comparison operator.

- `$or` is a logical operator used to match one or more values from at least two expressions.
- `$in` is a comparison operator used to match any values specified inside the given array like `$in: []`.

In our case, since we’re looking at different values for the same field (the `type` field), the `$in` operator is better suited since it is less verbose. Nevertheless, here are both examples:

Using the `$or` operator:

```javascript
db.pokemon.find({
  $or: [
    { type: "Electric" },
    { type: "Grass" }
  ]
});
```

Using the `$in` operator:

```javascript
db.pokemon.find({
  type: {
    $in: ["Grass", "Electric"]
  }
});
```

Output is the same for both examples:

```javascript
{
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ),
  "name": "Pikachu",
  "type": "Electric"
}
{
  "_id" : ObjectId(
    "5d9d8a6a0b24990f19398209"
  ),
  "name": "Bulbasaur",
  "type": "Grass"
}
{
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "name": "Raichu",
  "type": "Electric"
}
{
  "_id": ObjectId(
    "5d9d8b550b24990f1939820d"
  ),
  "name": "Ivysaur:",
  "type": "Grass"
}
// ...
```

Next to the `$or` and `$in` operators, there are a number of different operators that will be discussed later on.


---

## Practice

Find all the documents (pokémon) within the `pokemon` collection that have a `type` that's either `"Water"` or `"Fire"`.

```javascript
db.pokemon.???({
  type: {
    ???: ???
  }
});
```

- `find`
- `$in`
- `["Water", "Fire"]`
- `[{ type: "Water" }, { type: "Fire" }]`
- `search`
- `$or`


---

## Revision

Find all the documents within the `pokemon` collection that have a `type` that's either `"Water"` or `"Fire"`.

???

- `db.pokemon.find({ type: { $in: ["Water","Fire" ] } })`
- `db.Pokemon.find({ type: [ "Water","Fire" ] })`
- `db.pokemon.find({ $in: [ "Water","Fire" ] })`
- `db.pokemon.find({ $or: { type: ["Water","Fire"] } })`
