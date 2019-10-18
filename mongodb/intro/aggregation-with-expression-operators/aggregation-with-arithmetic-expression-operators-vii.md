---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic
  
aspects:
  - introduction
  - new

type: normal

category: feature

---

# Aggregation With Arithmetic Operators VII

---
## Content

`$trunc` - Used to truncate an expression to a whole number or the desired decimal place.
`$round` - Used to round an expression to a whole number or the desired decimal place.

### **`$round`**

The syntax for `$round` is the same as for `$trunc`. 

Syntax:
```javascript
{ 
  $round:  
  [ 
    <number>, 
    <place>
  ] 
}
```
They operate similarly, but `$round` is used to round the number up or down to the desired decimal point.

Let's use the same document as above:
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

Example without decimal points:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      roundedPower: {
        $round: ["$initialPower"]
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
  "roundedPower": 63
}
{   
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "roundedPower": 51
}
```

**Note:** `$round: ["$initialPower"]` = `$round: ["$initialPower", 0]` 
If we wanted to round with any decimal point, we would write it as `$round: ["$initialPower", NUMBER_HERE]` 

Example with `$round: ["$initialPower", 2]`:
```javascript
{   
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "roundedPower": 50.81
}
{   
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ), 
  "roundedPower": 63.31
}
```


---
## Practice

Match the explanation with the operator.

`$round` - ???

* is an arithmetic operator used to round a positive or negative number up or down to the desired decimal point.
* is an arithmetic operator only used for rounding positive integers. 
