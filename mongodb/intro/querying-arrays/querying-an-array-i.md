---
author: Stefan-Stojanovic

aspects:
  - introduction

type: normal

category: must-know

links:

---
# Querying an array
---
## Content

Querying an array in a `mongodb` database is similar to querying without an array. You need to use the `.find()` method.

Let's say we wanted to find which document in our `pokedex` collection contains a "Bite" value in their `spells` array, regardless of their position in the array or the size of the array. We would need to use this method:

```js
db.pokedex.find( { spells: "Bite" } )
```

The `db.pokedex.find()` method searches all the documents in the `pokedex` collection. 

Adding ` { spells: "Bite" } ` makes our query look for any document with the `spells` array, and searches through that `spells` array for a `"Bite"` value.

Which gives us this output:

```js
{
  _id: ObjectId("5d9d8a6a0b24990f19398209"),
  name: "Bulbasaur",
  type: "Grass",
  power: 311,
  spells: ["Seed Bomb", "Bite", "Hydro-Pump"]
},
{
  _id: ObjectId("5d9d8b550b24990f1939820d"),
  name: "Ivysaur:",
  type: "Grass",
  power: 335,
  spells: ["Seed Bomb", "Hydro-Pump", "Bite"]
},
{
  _id: ObjectId("5df389d397b15a71714c7592"),
  name: "Zubat:",
  type: "Poison",
  power: 344,
  spells: ["Bite"]
}
```

There are numerous other ways we can use the `.find()` method to query an array which we will cover in the next few insights.

---
## Practice

Find all documents in the `pokedex` collection that have a `"Hydro-Pump"` value in the `spells` array.

```javascript
db.pokedex???( 
  { ???: "???" } 
)
```

* `.find`
* `spells`
* `Hydro-Pump`
* `.search`
* `Spells`
