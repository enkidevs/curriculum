---
author: Stefan-Stojanovic

levels:
  - basic

aspects:
  - deep
  - workout

type: normal

category: must-know

standards:
  javascript.crud.3: 10
  javascript.comparison-operators.4: 10
  javascript.logical-operators.1: 10

links:

---
# Querying a collection

---
## Content

To perform queries is to search through a database or collection and return a result matching a specified condition.

In MongoDB, there are a group of *query operators* and *projection operators* that can be used to specify different conditions for your queries.

For instance, let's say we have a `pokemon` collection with more than 200 pokémon documents.

We know that each pokémon has an `_id`, `type`, `name` and `secondaryType` fields, and we want to display all the pokémon with a type `Grass`. We can do that like so:

```javascript
db.pokemon.find({
  type: "Grass"
});
```

Output:

```javascript
{
  "_id" : 2,
  "name" : "Bulbasaur",
  "type" : "Grass"
  "secondaryType" : "Poison"
}
{
   "_id" : 7,
  "name" : "Ivisaur:",
  "type" : "Grass"
  "secondaryType" : "Poison"
}
{
  "_id" : 8,
  "name" : "Venusaur:",
  "type" : "Grass"
  "secondaryType" : "Poison"
}
{
  "_id" : 333,
  "name" : "Snorlax",
  "type" : "Grass"
  "secondaryType" : "Normal"
}
...
```

If we wanted to display all the pokémon of type `Grass` whose secondType equals `Normal`, we would do:

```javascript
db.pokemon.find({
  type: "Grass",
  secondaryType: "Normal"
});
```

Output:

```javascript
{
  "_id" : 156,
  "name" : "Kangaskhan",
  "type" : "Grass"
  "secondaryType" : "Normal"
},
{
  "_id" : 199,
  "name" : "Chikorita",
  "type" : "Grass"
  "secondaryType" : "Normal"
},
{
  "_id" : 333,
  "name" : "Snorlax",
  "type" : "Grass"
  "secondaryType" : "Normal"
}
...
```

The above search displays only the documents that have a type `Grass` and secondaryType `Normal`.

Let's say that now we want to display all documents that have a type `Grass` or `Electric`. We can do so by using the `$or` logical operator or the `$in` comparison operator.

- The `$or` operator is a logical operator used to match 1 or more values from at least 2 expressions.
- The `$in` operator is a comparison operator used to match any values specified inside the given array like `$in: []`.

In our case, since we are looking at different types, the `$in` operator is more suited. Nevertheless, here are both examples:

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

The Output is the same for both examples:

```javascript
{
  "_id" : 1,
  "name" : "Pikachu",
  "type" : "Electric"
}
{
  "_id" : 2,
  "name" : "Bulbasaur",
  "type" : "Grass"
}
{
  "_id" : 26,
  "name" : "Raichu",
  "type" : "Electric"
}
{
   "_id" : 7,
  "name" : "Ivisaur:",
  "type" : "Grass"
}
...
```

Next to the `$or` and `$in` operators, there are a number of different operators that will be discussed later on.

---
## Practice

Find all the documents (pokémon) within the `pokemon` collection that have a `type` that's either `Water` or `Fire`.

```javascript
db.pokemon.???({
  type: {
    ???: ???
  }
});
```

* `find`
* `$in`
* `["Grass", "Fire"]`
* `[{ type: "Grass" }, { type: "Fire" }]`
* `search`

---
## Revision

Find all the documents within the `pokemon` collection that have a `type` that's either `Water` or `Fire`.

???

* `db.pokemon.find({ type: { $in: ["Water","Fire" ] } })`
* `db.Pokemon.find({ type: [ "Water","Fire" ] })`
* `db.pokemon.find({ $in: [ "Water","Fire" ] })`
* `db.pokemon.find({ $or: { type: ["Water","Fire"] } })`

