---
author: Stefan-Stojanovic

aspects:
  - introduction

type: normal

category: must-know

links:

---
# Querying An Array With The $size operator
---
## Content

Next to the `$all` array query operator, there are 2 more array specific ones.
  - `$size`
  - `$elemMatch`

The `$size` is used to match arrays that contain a specific "size"(number) of elements.

The `$elemMatch` is used to specify special conditions and is used on more advanced queries, like querying for nested arrays. This will be discussed in a later workout related to `Nested arrays`.

Let's say we have these 4 documents in our `pokedex` database:
```js
{
  _id: ObjectId("5d9d8a6a0b24990f19398209"),
  name: "Bulbasaur",
  type: "Grass",
  power: 311,
  spells: ["Seed Bomb", "Bite", "Hydro-Pump"]
},
{
  _id: ObjectId("5d9d8b8c0b24990f1939820f"),
  name: "Charmander",
  type: "Flame",
  power: 430,
  spells: ["Poison", "Growth", "Solar-Beam"]
},
{
  _id: ObjectId("5df389d397b15a71714c7592"),
  name: "Zubat",
  type: "Poison",
  power: 344,
  spells: ["Bite"]
},
{
  _id: ObjectId("5df3a23197b15a71714c7593"),
  name: "Golbat:",
  type: "Poison",
  power: 613,
  spells: ["Bite", "Sonic Wave"]
}
```

We can use the `$size` operator to find these documents based on the size of their `spells` array.
Example 1:
```js
db.pokedex.find({
  spells: {
    $size: 2
  }
})
```
Output:
```js
{
  _id: ObjectId("5df389d397b15a75df3a23197b15a71714c75931714c7592"),
  name: "Golbat:",
  type: "Poison",
  power: 613,
  spells: ["Bite", "Sonic Wave"]
}
```
Example 2:
```js
db.pokedex.find({
  spells: {
    $size: 3
  }
})
```
Output:
```js
{
  _id: ObjectId("5d9d8a6a0b24990f19398209"),
  name: "Bulbasaur",
  type: "Grass",
  power: 311,
  spells: ["Seed Bomb", "Bite", "Hydro-Pump"]
},
{
  _id: ObjectId("5d9d8b8c0b24990f1939820f"),
  name: "Charmander",
  type: "Flame",
  power: 430,
  spells: ["Poison", "Growth", "Solar-Beam"]
}
```

As you can see in `Example 2`, the `$size` operator ignores the contents of the array and only looks for the specified size of the array. The `spells` array can have the same values or completely different ones. 


---
## Practice

Find all documents in the `pokedex` collection that have a `spells` array of size `4`.

```javascript
db.pokedex???({
  ???: {
    ???: ???
  }
})
```

* `.find`
* `spells`
* `$size`
* `4`
* `$arraySize`
* `$length`
* `.search`
