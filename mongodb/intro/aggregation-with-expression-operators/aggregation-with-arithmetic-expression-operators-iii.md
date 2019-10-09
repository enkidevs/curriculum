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

# Aggregation With Arithmetic Operators III

---
## Content

In the previous insights, we learned how to aggregate using the `$add`, `$subtract`, `$divide` and `$multiply` operators. Now, we are going to discuss the `$trunc` and `$round` operators.

`$trunc` - Used to truncate an expression to a whole number or the desired decimal place.
`$round` - Used to round an expression to a whole number or the desired decimal place.

### $trunc

Syntax:
```javascript
{
  $trunc: [<number>, <place>];
}
```

In the previous insight, we used the `$divide` operator to calculate the `initialPower` for each pokémon.

Output documents from previous insight:
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

Now, let's say we have saved these `key: value` pairs with the `.insert()` method. We want to truncate them to a value with fewer decimal points.

Example:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      truncatedPower: {
        $trunc: ["$initialPower", 1]
      }
    }
  }
]);
```

Output:
```javascript
{
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "truncatedPower": 50.8
},
{
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ),
  "truncatedPower": 63.3
}
```
**Note:** The `,1` in `$trunc: ["$initialPower", 1]` means that the value will be truncate to 1 decimal point.

If we wanted to truncate without any decimal points, we would write it as `$trunc: ["$initialPower"]`  or `$trunc: ["$initialPower", 0]`.

Output:
```javascript
{   
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "truncatedPower": 50
}
{   
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ), 
  "truncatedPower": 63 
}
```

Similarly, if we wanted to truncate to any different decimal point, we would just add the corresponding number in the aggregation.

**Note:** The `$trunc` operator works on both positive and negative numbers.

Example output if we had `-50.80769230769231` as a value:
```javascript
{   
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "truncatedPower": -50.8
}
```

### $round

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
They operate the same way, except that `$round` is used to round the number up or down to the desired decimal point, whereas `$trunc` is only used to truncate the value.

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

**Note:** Just like the `$trunc` operator, the `$round` operator also works on both positive and negative numbers.

### $round and $trunc

Both the `$round` and `$trunc` operators can take negative numbers as input.

Using the same document as above, we will truncate with a negative number.

Example with negative input:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      truncatedPower: {
        $trunc: ["$initialPower", -1]
      }
    }
  }
]);
```

```javascript
// Numbers used for input
63.30769230769231 
50.80769230769231 

// Previous output
{   
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "truncatedPower": 50
}
{  
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ), 
  "truncatedPower": 63
}

// Output with a negative input
{   
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "truncatedPower": 50
}
{  
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ), 
  "truncatedPower": 60
}
```

As you can see in the example above, the value is truncated starting from the left of the decimal, as opposed to starting from the right when the input is positive.

If the input was equal or exceeded the digit count of our inputted value, the resulting number would be 0.

**Note:** The negative input works the same for both `$trunc` and `$round`.

---
## Practice

Match the explanation with the operator.

`$round` - ???
`$trunc` - ???

* is an Arithmetic operator used to round a positive or negative number up or down to the desired decimal point.
* is an Arithmetic operator used to truncate a positive or negative number to the desired decimal point.
* is an Arithmetic operator only used for rounding positive integers. 
* is an Arithmetic operator only used to truncate a positive integer.

---
## Revision

Fill in the missing code to successfully truncate the `initialPower` field to 0 decimal points.

```javascript
db.pokemon.aggregate([
  {
    $project: {
      truncatedPower: {
        ???: [???]
      }
    }
  }
]);
```

* `$trunc`
* `"$initialPower"`
* `$truncate `
* `"$initialPower", 2"`
