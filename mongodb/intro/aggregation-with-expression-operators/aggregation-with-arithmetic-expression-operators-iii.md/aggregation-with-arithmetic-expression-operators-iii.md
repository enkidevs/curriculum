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

# Aggregation With Arithmetic Expressions Operators III

---
## Content

### **`$add` and `$subtract`**

Now that we know how to use each operator, we can also combine them.

Using the same documents and examples from the previous 2 insights, let's calculate how stronger the `"Ultimate"` power is compared to the sum of the other two. 

Example:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      Name: 1,
      ultimateMinusOtherTwo: {
        $subtract: [
          "$Ultimate",
          { $add: ["$Basic", "$Strong"] }
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
  "ultimateMinusOtherTwo": 188 
}
{ 
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "Name": "Raichu", 
  "ultimateMinusOtherTwo": 182 
}
```

**Note:** When adding or subtracting, we do not need to add existing fields for the computations, we can also add an existing field and a literal to perform the calculation.

Example of subtracting `7` from the `"Basic"` `power`:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      Name: 1,
      basicMinusSeven: {
        $subtract: ["$Basic", 7]
      }
    }
  }
]);
```

---
## Practice

True or False:

When adding or subtracting expressions it is not possible to add a literal as an expression: ???

* False.
* True.
