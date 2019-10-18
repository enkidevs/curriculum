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

# Aggregation With Arithmetic Expressions Operators II

---
## Content

### **`$subtract`**

Syntax:
```javascript
{ 
  $substract:  
  [ 
    <expression1>, 
    <expression2> 
  ] 
}
```

Using the same documents as in the previous insight, we can use the `$subtract` operator to calculate how stronger the `"Ultimate"` `power` is compared to the `"Basic"` one for each pokémon.

**Note:** The expressions are calculated like so `<expression1>` - `<expression2>`.

Example:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      Name: 1,
      ultimateMinusBasic: {
        $subtract: ["$Ultimate", "$Basic"]
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
  "ultimateMinusBasic": 399 
}
{ 
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "Name": "Raichu", 
  "ultimateMinusBasic": 496 
}
```

---
## Practice

Match the correct explanation with the given operator.

`$subtract` - ???

* is an arithmetic operator used to subtract the second expression from the first (only 2 expressions can be used).
* is an arithmetic operator used to subtract any number of expressions.
