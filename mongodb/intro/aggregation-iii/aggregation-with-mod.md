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

# Aggregation With $mod

---
## Content

The aggregation `$mod` operator is used to calculate the `modulus` (remainder) when dividing 2 numbers.

Syntax:
```javascript
{ $mod: 
  [ 
    <expression1>, 
    <expression2> 
  ] 
}
```

For instance, let's say we have a `pokemon` database where each pokémon has a `power` and `age` field. Each pokemon can evolve into a greater and stronger one. The way they evolve is by casting a specific number of spells, which is determined by the remainder of `power` divided by `age`.

```javascript
db.pokemon.aggregate([
  {
    $project: {
      spellsToCast: {
        $mod: ["$power", "$age"]
      }
    }
  }
]);
```
Output:
```javascript
{   
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ),
  "spellsToCast" : 18
}
{   
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ), 
  "spellsToCast" : 26
}
```

In the example above, we used the `$mod` to calculate how many spells each pokémon has to cast to evolve into a better version of itself.

---
## Practice

What is the `$mod` aggregation operator used for?

???

* To return the remainder of the division of 2 numbers.
* To divide 2 numbers.
* To calculate the sum of 2 numbers.
* To multiply 2 numbers.
