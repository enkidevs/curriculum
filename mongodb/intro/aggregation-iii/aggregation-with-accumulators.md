---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic
  
aspects:
  - introduction
  - new

type: normal

category: how to

---

# Aggregation With Accumulators

---
## Content

There are many possible operators that can be used when aggregating a MongoDB database. Some of these operators are specific to the `$group` aggregation stage, and are referred to as *Accumulators*.

Some of these are:
- `$first`
- `$last`
- `$min`
- `$max`
- `$push`
- `$sum`	

### `$first`

Syntax:

```javascript
{ $first: <expression> }
```

The `$first` accumulator is used to find the first value of each document from the group of documents with the same key.

For instance, let's say we have a `pokemon` database with thousands of pokémon, and each of them has a `type` and `name` fields.

All pokémon have one of the possible types: Water, Fire, Rock, Normal, etc. However, all of them have a unique `name`.

We can use the `$group` stage to group them by their `type`, and then use the `$first` operator to find out the `name` for the first pokémon of each `type`.

By first we mean the first document entered in the database for the selected grouping.

**Note:** When using the `$first` operator within the `$group` stage, it is best to use it together with the `$sort` aggregation stage.

Example:
```javascript
db.pokemon.aggregate([
  {
    $group: {
      _id: "$type",
      nameOfFirst: { $first: "$name" }
    }
  },
  { $sort: { _id: 1 } }
]);
```
Output:
```javascript
{ "_id": "Bug", "nameOfFirst": "Caterpie" }
{ "_id": "Electric", "nameOfFirst": "Pikachu" }
{ "_id": "Fairy", "nameOfFirst": "Togepi" }
{ "_id": "Fire", "nameOfFirst": "Moltres" }
{ "_id": "Flame", "nameOfFirst": "Charmander" }
{ "_id": "Grass", "nameOfFirst": "Bulbasaur" }
{ "_id": "Normal", "nameOfFirst": "Porygon" }
{ "_id": "Psychic", "nameOfFirst": "Mewtwo" }
{ "_id": "Rock", "nameOfFirst": "Geodude" }
{ "_id": "Water", "nameOfFirst": "Squirtle" }
```

In the example above, the `$first` operator found all documents of each grouping (in our case grouped by `type`), looked for the `name` of the first document of said `type`, and saved them to a new field called `"nameOfFirst"`. Next, the `$sort` sorted them by the selected grouping in alphabetically ascending order.

### `$last`

The `$last` operator behaves the same as the `$first` operator except that it looks for the last document instead of the first.

Example:
```javascript
db.pokemon.aggregate([
  {
    $group: {
      _id: "$type",
      nameOfLast: { $last: "$name" }
    }
  },
  { $sort: { _id: 1 } }
]);
```
Output:
```javascript
{ "_id": "Bug", "nameOfLast": "Caterpie" }
{ "_id": "Electric", "nameOfLast": "Magneton" }
{ "_id": "Fairy", "nameOfLast": "Togepi" }
{ "_id": "Fire", "nameOfLast": "Moltres" }
{ "_id": "Flame", "nameOfLast": "Charizard" }
{ "_id": "Grass", "nameOfLast": "Bellsprout" }
{ "_id": "Normal", "nameOfLast": "Castform" }
{ "_id": "Psychic", "nameOfLast": "Mew" }
{ "_id": "Rock", "nameOfLast": "Omanyte" }
{ "_id": "Water", "nameOfLast": "Blastoise" }
```

**Note** If our grouping has only one document, `$first` and `$last` would give out the same output.

---
## Practice

Fill in the code to find the `name` of the first document for each `type` group of pokémon, sort them by their `type` and output them in a field called "nameOfFirst".

```javascript
db.pokemon.aggregate([
  {
    ???: {
      _id: "???",
      ???: { ???: "$name" }
    }
  },
  { $sort: { _id: 1 } }
]);
```

* `$group`
* `$type`
* `nameOfLast `
* `$first`
* `$Type`
* `$Group`

---
## Revision

Which of these is not a valid accumulator for the `$group` stage?

???

* `$medium`
* `$first`
* `$last`
* `$min` 
* `$max`
* `$push`
* `$sum`
