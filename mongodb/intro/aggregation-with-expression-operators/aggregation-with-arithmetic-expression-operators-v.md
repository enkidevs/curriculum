---
author: Stefan-Stojanovic

levels:
  - beginner
  
aspects:
  - new

type: normal

category: how to

---

# Aggregation With Arithmetic Expression Operators V

---
## Content

### **`$divide`**

Syntax:
```javascript
{ 
  $divide:  
  [ 
    <expression1>, 
    <expression2> 
  ] 
}
```

Using the same documents as in the previous insight, we can use the `$divide` operator to calculate the initial power of each `pokemon` by dividing the `power` field by the `age` field (this way we can find the `power` of a pokémon when their age is one).

**Note:** The expressions are calculated like so `<expression1>` / `<expression2>`.

Example:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      Name: 1,
      initialPower: {
        $divide: ["$Power", "$Age"]
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
  "initialPower": 63.30769230769231 
}
{ 
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "Name": "Raichu", 
  "initialPower": 50.80769230769231 
}
```

**Note:** Just like with the `$add`, `$subtract` and `$multiply` operators, the expressions do not have to be existing fields, they can also be any literals.

---
## Practice

Match the explanation with the operator.

`$divide` - ???


* is an arithmetic operator used to divide the 2nd expression to the first (exactly 2 expressions can be used).
* is an arithmetic operator used to divide any number of expressions.
