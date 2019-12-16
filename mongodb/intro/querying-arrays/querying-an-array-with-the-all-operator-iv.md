---
author: Stefan-Stojanovic

aspects:
  - introduction

type: normal

category: must-know

links:

---
# Querying An Array With The $all Operator
---
## Content

Now that we know how to query an array for a single value, let's increase the value count and add additional query operators for a more precise query.

Querying the same database as before [1].

```js
db.pokedex.find({
  spells: ["Seed Bomb", "Bite", "Hydro-Pump"]
});
```
The above method searches for any documents that contain the `spells` field and looks only for the documents that have "Seed Bomb" as the first value, "Bite" as the second and "Hydro-Pump" as the third value. Giving us the output:

```javascript
{
  _id: ObjectId("5d9d8a6a0b24990f19398209"),
  name: "Bulbasaur",
  type: "Grass",
  power: 311,
  spells: ["Seed Bomb", "Bite", "Hydro-Pump"]
},
```

If we wanted to search which array contains the above 3 values, regardless of the order they are in, we would do so by adding the `$all` operator. 

**Note:** The `$all` operator behaves similarly to the `$and` operator (discussed in the `Querying Operators` workout).

```javascript
db.pokedex.find({
  spells: {
    $all: ["Seed Bomb", "Bite", "Hydro-Pump"]
  }
})
```

Output:
```javascript
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
}
```

**Note:** The below two methods give the exact same result.(Any documents with a `spells` array containing the "Bite" value)
```javascript
// Method 1
db.pokedex.find({
  spells: {
    $all: ["Bite"]
  }
})

// Method 2
db.pokedex.find({ 
  spells: "Bite" 
})
```
Output:
```javascript
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
However, the method below:
```javascript
db.pokedex.find({
  spells: {
    $all: "Bite"
  }
})
```
is invalid and gives an error.

---
## Practice

Find all documents in the `pokedex` collection that have "Poison" and "Growth" values in any order in their `spells` array.

```javascript
db.pokedex.find({
  ???: {
    ???: ???
  }
})
```

* `spells`
* `$all`
* `["Poison", "Growth"]`
* `"Poison", "Growth"`
* `.search`
* `Spells`


---
## Footnotes

[1:Previous Documents]
Here are the documents used in the previous insight:
```javascript
// Previous Documents
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
