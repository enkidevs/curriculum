---
author: stefan.stojanovic

levels:
  - beginner
  - basic
  
aspects:
  - introduction
  - new

type: normal

category: must-know

standards:
  javascript.aggregation-pipeline.0: 10
  javascript.aggregation-pipeline.7: 10
   
links:
  
---
# Aggregation With Arithmetic Operators III
---
## Content

In the previous insights, we learned how to aggregate using the `$add`, `$subtract`, `$divide` and `$multiply` operators. Now, we are going to discuss the `$trunc` and `$round`.

`$trunc` - Used to truncate a number to a whole number or a desired decimal place 
`$round` - Used to round a number to a whole number or a desired decimal place

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

Now, let's say we have saved these `field:value` pairs with the `.insert()` method and now want to truncate them to a "nicer" value with less decimal points.

Example:
```javascript
db.test.aggregate([
  {
    $project: {
      truncatedPower: {
        $trunc: ["$minimumPower", 1]
      }
    }
  }
]);

```


---
## Practice

Match the explanation with the operator.

`$multiply` - ???
`$divide` - ???

* is an Arithmetic operator used to multiply any number of expressions with a minimum of 2.
* is an Arithmetic operator used to divide the 2nd expression from the first. (exactly 2 expressions can be used)
* is an Arithmetic operator used to multiply exactly 2 expressions.
* is an Arithmetic operator used to divide any number of expressions
