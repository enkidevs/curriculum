---
author: stefan-stojanovic

levels:
  - beginner
  - basic
  
aspects:
  - introduction
  - new

type: normal

category: must-know

links:
  
---
# Aggregation With Arithmetic Operators III
---
## Content

In the previous insights, we learned how to aggregate using the `$add`, `$subtract`, `$divide` and `$multiply` operators. Now, we are going to discuss the `$trunc` and `$round`.

`$trunc` - Used to truncate a number to a whole number or the desired decimal place 
`$round` - Used to round a number to a whole number or the desired decimal place

### $trunc

Syntax:
```javascript
{ 
  $trunc:  
  [ 
    <number>, 
    <place>
  ] 
}
```

In the previous insight, we used the `$divide` operator to calculate the `minimumPower` for each pokémon.

Output documents from previous insight:
```javascript
{ 
  "_id": 1,
  "Name": "Pikatchu", 
  "minimumPower": 63.30769230769231 
}
{ 
  "_id": 2, 
  "Name": "Raichu", 
  "minimumPower": 50.80769230769231 
}
```

Now, let's say we have saved these `key:value` pairs with the `.insert()` method and now want to truncate them to a "nicer" value with fewer decimal points.

Example:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      truncatedPower: {
        $trunc: ["$minimumPower", 1]
      }
    }
  }
]);
```
Output:
```javascript
{ "_id" : 2, "truncatedPower" : 50.8 }
{ "_id" : 1, "truncatedPower" : 63.3 }
```
**Note:** The `,1` in `$trunc: ["$minimumPower", 1]` means it will truncate to 1 decimal point.

If we wanted to truncate without any decimal points, we would write it as `$trunc: ["$minimumPower"]`  or `$trunc: ["$minimumPower", 0]`.

Output:
```javascript
{ "_id" : 2, "truncatedPower" : 50}
{ "_id" : 1, "truncatedPower" : 63}
```

Similarly, if we wanted to truncate to any different decimal point, we would just add the corresponding number in the aggregation.

**Note:** The `$trunc` operator works on both positive and negative numbers.

Example output if `50.80769230769231` was negative:
```javascript
{ "_id" : 2, "truncatedPower" : -50.8 }
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
They operate the same way, except that `$round` rounds the number up/down to the desired decimal point, whereas the `$trunc` only truncates it.

Let's use the same document as above:
```javascript
{ 
  "_id": 1,
  "Name": "Pikatchu", 
  "minimumPower": 63.30769230769231 
}
{ 
  "_id": 2, 
  "Name": "Raichu", 
  "minimumPower": 50.80769230769231 
}
```

Example without decimal points:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      roundedPower: {
        $round: ["$minimumPower"]
      }
    }
  }
]);
```
Output:
```javascript
{ "_id" : 2, "roundedPower" : 51 }
{ "_id" : 1, "roundedPower" : 63 }
```
**Note:** `$round: ["$minimumPower"]` = `$round: ["$minimumPower", 0]` 
If we wanted to round with any decimal point, we would write it as `$round: ["$minimumPower", NUMBER_HERE]` 

Example with `$round: ["$minimumPower", 2]`:
```javascript
{ "_id" : 2, "roundedPower" : 50.81}
{ "_id" : 1, "roundedPower" : 63.31}
```

**Note:** Just like the `$trunc` operator, the `$round` operator also works on both positive and negative numbers.

### $round and $trunc

Both the `$round` and `$trunc` operators can take negative numbers as input.

Using the same document as above we will truncate with a negative number.
Example with negative input:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      truncatedPower: {
        $trunc: ["$minimumPower", -1]
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
{ "_id" : 2, "roundedPower" : 50 }
{ "_id" : 1, "roundedPower" : 63 }

// Output with a negative input
{ "_id" : 2, "roundedPower" : 50 }
{ "_id" : 1, "roundedPower" : 60 }
```

As you can see in the example above, the value is truncated starting from the left of the decimal, as opposed to the right when the input is positive.

If the input was equal or exceeded the digit count of our inputed value, the resulting number would be 0.

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
