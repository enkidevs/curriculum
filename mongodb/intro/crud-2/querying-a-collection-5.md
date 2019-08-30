---
author: stefan.stojanovic

levels:
  - beginner
  
aspects:
  - introduction

type: normal

category: must-know

standards: 

links:

---
# Querying a collection 
---
## Content

Next to using the `db.collection_name.insertOne()` or `.insertMany()` methods to create a document, or `.find()` to find a specific document, there are a couple of other more specific methods you can use to find and modify your documents.

The `.findOneAndUpdate()` method can be used to search through a collection and modify only the first documents found based on the specified query. 

For instance, the bellow query searches for the first pokémon of `type: "Water"` and increases its `power` by `15`:
```javascript
db.pokemon.findOneAndUpdate(
   { "type" : "Water" },
   { $inc: { "power" : 15 } }
)
```
Output:
```javascript
{
	"_id" : 4,
	"name" : "Squirtle",
	"type" : "Water",
	"power" : 233,
	"spells" : [
		"Poison",
		"Growth",
		"Solar-Beam"
	]
}
```

**Note:** When executed, the query returns the original version of the document by default. To display the modified version of the document upon executing the query, you need to add `returnNewDocument: true`.

In the above example, we added 15 to the `power` field. This time let's decrease the `power` by 14:
```javascript
db.pokemon.findOneAndUpdate(
   { "type" : "Water" },
   { $inc: { "power" : -14 } },
   {returnNewDocument: true}
)
```
Output:
```javascript
{
	"_id" : 4,
	"name" : "Squirtle",
	"type" : "Water",
	"power" : 234,
	"spells" : [
		"Poison",
		"Growth",
		"Solar-Beam"
	]
}
```
**Note:** The `$inc` operator, is used to either increase or decrease the value of the specified field, and if the field doesn't exist, it will be created with the value specified with the `$inc` operator.

A similar method to `.findOneAndUpdate()` is the `.findOneAndReplace()` method. 

Unlike the first method, which finds the first document and *updates* the content based on the specified criteria, the `.findOneAndReplace()` method also finds the first document, but instead of *updating* it, it *replaces* it with a newly specified document.

For instance, let us say one of our documents was no longer viable and we wanted to remove it and replace it with a new one, we can do so like this:

```javascript
db.pokemon.findOneAndReplace(
   { "power" : { $eq : 350 } },
   {
	    "_id" : 101,
		"name" : "Mewtoo",
		"type" : "Unknown", 
		"power" : 700
	}
)
```

Output:
```javascript
{ 
	"_id" : 101, 
	"name" : "Electrode", 
	"type" : "Electric", 
	"power" : 350, 
	"spells" : [ 
		"Seed Bomb", 
		"Bite", 
		"Hydro-Pump" 
	] 
}
```

Just like with the `.findOneAndUpdate()` method, if we don't add `returnNewDocument: true`, our query would display the original document.

```javascript
db.pokemon.findOneAndReplace(
   { "power" : { $eq : 350 } },
   {
	    "_id" : 101,
		"name" : "Mewtoo",
		"type" : "Unknown", 
		"power" : 700
	},
	{returnNewDocument: true}
)
```
Output:
```javascript
 {
	"_id" : 101,
	"name" : "Mewtoo",
	"type" : "Unknown", 
	"power" : 700
}
```


---
## Practice

Find the first document within the `pokemon` collection with a `power` greater than `400` and decrease the `power` by `135`.
```javascript
db.pokemon???(
   { "power" : ???},
   { ???: { "power" : -135 } },
)
```

Fill in the blanks to find the first document with a `type` of `Water` and replace it with the document listed below:
```javascript
db.pokemon???(
   { "type": ???},
   {
	    "_id" : 6,
		"name" : "Charizard",
		"type" : "Fire", 
		"power" : 999
	}
)
```
Which command has to be added to our queries to display the updated/replaced document as opposed to the original one: ???

* `.findOneAndUpdate`
* `{ $gt: 400}`
* `$inc`
* `.findOneAndReplace`
* `"Water"`
* `	{returnNewDocument: true}`
* `{returnNew: true}`
* `update`
* `replace`
* `$dec`
