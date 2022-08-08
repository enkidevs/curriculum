---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# $last


---

## Content

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

> ⚠️ If our grouping has only one document, `$first` and `$last` would give out the same output.


---

## Practice

Fill in the code to find the `name` of the last document for each `type` group of pokémon, sort them by their `type` and output them in a field called "nameOfLast".

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

- `$group`
- `$type`
- `nameOfLast `
- `$last`
- `$Type`
- `$Group`


---

## Revision

Which of these is not a valid accumulator for the `$group` stage?

???

- `$medium`
- `$first`
- `$last`
- `$min` 
- `$max`
- `$push`
- `$sum`
 
