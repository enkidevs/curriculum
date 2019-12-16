---
author: Stefan-Stojanovic

aspects:
  - introduction

type: normal

category: must-know

links:

---
# Querying An Array part 2
---
## Content

In the previous insight, we showed you how to search for a specific element within an array regardless of its position in the array and the number of values in that array.

```js
db.pokedex.find( { spells: "Bite" } )
```

Now, let's say we wanted to find which document has an array with an exact number and order of elements.

Using the same example from the previous insight, let's say we wanted to find which document contains only the "Bite" spell. 

To do this, all we have to do is add `[]` around our `"Bite"` value, like so:
```js
// Search for an array containing the "Bite" value
db.pokedex.find( { spells: "Bite" } )

// Search for an array containing only the "Bite" value
db.pokedex.find( { spells: ["Bite"] } )
```
The first input searches for a "Bite" value regardless of the amount of values in the array.

The second one searches for the document whose `spells` array only has the value "Bite" in it and nothing else.

**Note:** For easier comprehension of querying arrays, we will be using the same documents from the  previous insight. **(The documents are in the footnotes of every insight of this workout under Previous Documents[1])**

Output of 2nd example:
```javascript
{
  _id: ObjectId("5df389d397b15a71714c7592"),
  name: "Zubat:",
  type: "Poison",
  power: 344,
  spells: ["Bite"]
}
```


---
## Practice

Find all documents in the `pokedex` collection that only have the `"Poison"` value in their `spells` array.

```javascript
db.pokedex???( 
  { ???: ??? } 
)
```

* `.find`
* `spells`
* `["Poison"]`
* `"Poison"`
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
