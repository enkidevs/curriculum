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

# Aggregating With `$add`

---
## Content

When working with databases, you're bound to encounter a case in which you need to add, subtract or perform any other arithmetic operation. MongoDB provides many operators suited for this use case that we will discuss in this workout.

Let's start off with one of the simples arithmetic operations, addition. In MongoDB, you have to use the `$add` operator whenever you want to add two or more expressions. The syntax looks like this:

```javascript
{ 
  $add:  
  [ 
    <expression1>, 
    <expression2>, 
    ... 
  ] 
}
```

Let's say we have a `pokemon` collection where each pokémon has 3 power fields: `"Basic"` ,`"Strong"` and `"Ultimate"`. Each field has its own power "level" (number). Here are two example documents:

```javascript
{ 
  "Name": "Pikachu",
  "Basic": 101,
  "Strong": 211,
  "Ultimate": 500 
}
{ 
  "Name": "Raichu", 
  "Basic": 171,
  "Strong": 314,
  "Ultimate": 667 
}
```

We can use the `$add` operator to calculate the total strength of all 3 powers:

```javascript
db.pokemon.aggregate([
  {
    $project: {
      Name: 1,
      totalPowerStrength: {
        $add: [
          "$Basic",
          "$Strong",
          "$Ultimate"
        ]
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
  "Name": "Pikachu", 
  "totalPowerStrength": 812 
}
{ 
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "Name": "Raichu", 
  "totalPowerStrength": 1152 
}
```

In the example above, we have used the project stage to only display the `Name` field, along with a new field called `totalPowerStrength` where the added values will be stored and displayed.

---
## Practice

In MongoDB, we can use the ??? operator to perform addition. The minimum number of expressions that can be used is ???.

* `$add`
* 2
* `$addition`
* `$sum`
* 3
* 1