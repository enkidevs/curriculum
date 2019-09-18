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
# Aggregation With Object Expression operators
---
## Content

2 Object expression operators can be used with aggregation in MongoDB.
These are `$mergeObjects` and `$objectToArray`.

### $mergeObjects

Syntax:
```javascript
{ $mergeObjects: <object> }
```

The `$mergeObjects` aggregation operator can be used to aggregate a collection, merge objects from multiple documents and output them as a single document.

The `$mergeObjects` operator ignores any `null` values. Also, if all values are `null` the aggregation would just return an empty document. 

**Note:** The `$mergeObjects` operator does not modify the original documents.
 The aggregation combines the documents and outputs a new temporary document.

Let's say we have these 4 documents in our database:
```javascript
{
 _id: 1,
 name: "Pikatchu",
 type: "Electric",
 power: 501,
 spells: {
   Basic: "Lightning",
   Strong: "Bolt"
 }
 },
 {
  _id: 2,
  name: "Raichu",
  type: "Electric",
  power: 404,
  spells: {
   Passive: "Shock",
   Ultimate: "Destruction"
  }
 },
 {
 _id: 3,
 name: "Squirtle",
 type: "Water",
 power: 342,
 spells: {
   Basic: "Water-gun",
   Strong: "Blast"
 }
 },
 {
 _id: 4,
 name: "Blastoide",
 type: "Water",
 power: 533,
 spells: {
   Passive: "Water-Shield",
   Ultimate: "Water-Cannon"
 }
}
```  

We can use the `$mergeObjects` operator within the `$group` aggregation stage to group the documents by their `type` field and merge the `spells` object fields into a new single object field(`groupedSpells`) with values from both documents.

Example aggregation:
```javascript
db.pokemon.aggregate([
  {
    $group: {
      _id: "$type",
      groupedSpells: {
        $mergeObjects: "$spells"
      }
    }
  }
]);
])
```
Output document:
```javascript
{
 _id: "Water",
 groupedSpells: {
  Basic: "Water-gun",
  Strong: "Blast",
  Passive: "Water-Shield",
  Ultimate: "Water-Cannon"
 }
},
{
  _id: "Electric",
  groupedSpells: {
   Basic: "Lightning",
   Strong: "Bolt",
   Passive: "Shock",
   Ultimate: "Destruction"
 }
}
```

In the example above, the outputted document was grouped by the `type` field, and the `spells` object was merged as a single object field. Because our objects had different value-pairs, they were just added to the new object field. 

However, if for instance we had fields with the same name in both objects like the documents bellow:
```javascript
{
 _id: 3,
 name: "Squirtle",
 type: "Water",
 power: 342,
 spells: {
   Basic: "Water-gun",
   Strong: "Blast"
 }
},
{
 _id: 4,
 name: "Blastoide",
 type: "Water",
 power: 533,
 spells: {
   Basic: "Water-Shield",
   Strong: "Water-Cannon"
 }
}
```
And we run the same aggregation, our output would look like this:
```javascript
{
 _id: "Water",
 groupedSpells: {
  Basic: "Water-Shield",
  Strong: "Water-Cannon"
 }
},
```

As you can see in the example above, because both objects had fields with the same name (`Basic` and `Strong`), our aggregation merged the objects in a single object with the values of the last document overwriting the values of any previous one.

---
## Practice

What is the `$mergeObjects` aggregation operator used for?

???

* To merge objects within multiple documents and output a single document with the combined object
* To merge documents together and sort the object fields
* To merge objects and output all values from each object separated by a comma
* To merge and count all objects 
