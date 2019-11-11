---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

aspects:
  - introduction
  - new
  - workout

type: normal

category: how to

---

# Aggregation $project Part 2

---
## Content

The `$project` stage can also be used to include or exclude specified fields within an array.

For instance, let's say we have a `pokemon` collection where each pokémon has the `_id`, `name`, `type`, `power` fields and an `ability` array field. In the array there are 3 fields: `"Basic"`, `"Strong"` and `"Ultimate"`. We can use the `$project` stage to only include the `name`, `type` and `"Ultimate"` `ability` in the aggregation.

Example document:
```javascript
{
  "_id": ObjectId(
    "5d9d8e1e0b24990f19398221"
  ),
  "name": "Omanyte",
  "type": "Rock",
  "power": 303,
  "ability": [
    {
      "Basic": "Seed Bomb"
    },
    {
      "Strong": "Bite"
    },
    {
      "Ultimate": "Hydro-Pump"
    }
  ]
}
```
```javascript
db.pokemon.aggregate([
  {
    $project: {
      _id: 0,
      name: 1,
      "ability.Ultimate": 1
    }
  }
])
```
Output:
```javascript
{
  "name": "Omanyte",
  "type": "Rock",
  "ability": [
    {
      "Ultimate": "Hydro-Pump"
    }
  ]
}
```

Furthermore, we can use the `$project` stage to add a new array field to a document. For instance, let's say we have a document where there are 5 different abilities in fields called `ability1`, `ability2` ...`ability5`. We can use the `$project` stage to combine all 5 abilities and return them as an `ability` array.

Document:
```javascript
{
  "_id": ObjectId(
    "5d9d8b8c0b24990f1939820f"
  ),
  "name": "Charmander",
  "ability1": "Throw",
  "ability2": "Grab",
  "ability3": "Stab",
  "ability4": "Claw",
  "ability5": "Shock"
}
```
```javascript
db.pokemon.aggregate([
  {
    $project: {
      abilities: [
        "$ability1",
        "$ability2",
        "$ability3",
        "$ability4",
        "$ability5"
      ]
    }
  }
])
```
Output:
```javascript
{
  "_id": ObjectId(
    "5d9d8b8c0b24990f1939820f"
  ),
  "name": "Charmander",
  "abilities": [
    "Throw",
    "Grab",
    "Stab",
    "Claw",
    "Shock"
  ]
}
```
---
## Practice

Let's say we have a `pokemon` collection where each pokémon has a `name`, `_id`, `type`, `power` and an `abilities` array field:

```javascript
{
  "_id": ObjectId(
    "5d9d8ba70b24990f19398210"
  ),
  "name": "Charizard",
  "type": "Flame",
  "power": 651,
  "abilities": [
    {
      "Basic": "Fire Breath"
    },
    {
      "Strong": "Bite"
    },
    {
      "Ultimate": "Napalm"
    }
  ]
}
```

Aggregate the collection, exclude the `_id` field and only include the `power` and `name` fields, as well as the `"Ultimate"` ability.

```js
db.pokemon.???([
  {
    ???: {
      _id: ???,
      ???: 1,
      power: ???,
      "???.???": 1
    }
  }
])
```

* `aggregate`
* `$project`
* `0`
* `name`
* `1`
* `abilities`
* `Ultimate`
* `find`
* `locate`
* `ultimate`
* `%project`

---
## Revision

Let's say we have a `shoes` collection with `5000` shoes of all sizes. Each shoe has 5 sizes saved in fields called `size1`, `size2`...`size5`. Create an aggregation that will combine all 5 shoe sizes in a new array called `sizes`.

```javascript
db.???.???([
  {
    ???: {
      ???: [
        "$size1",
        "$size2",
        "$size3",
        "$size4",
        "$size5"
      ]
    }
  }
])
```

* `shoes`
* `aggregate`
* `$project`
* `sizes`
* `SHOES`
* `find`
* `$group`
* `SIZES`
* `%project`
* `%sizes`
