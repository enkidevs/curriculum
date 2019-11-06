---
author: Stefan-Stojanovic

levels:
  - beginner
  
aspects:
  - workout
  - deep

type: normal

category: best practice

---

# Projection

---
## Content

To retrieve a single, multiple or all documents from a specific collection in MongoDB, we can use the `db.collection_name.find()` method.

When using the `find()` method, all documents matching the specified criteria are displayed along with all of their fields.

Example:
```javascript
db.pokemon.find({
  type: "Electric"
})
```

Output:
```javascript
{ 
	"_id": ObjectId(
    "5d9d8c330b24990f19398214"
	), 
	"name": "Pikachu", 
	"type": "Electric", 
	"power": 231, 
	"spells":
	[
		"Poison", 
		"Growth", 
		"Solar-Beam" 
	] 
}
{ 
	"_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ), 
	"name": "Raichu", 
	"type": "Electric", 
	"power": 453, 
	"spells": 
		[ 
			{ 
				"Basic": "Hyper Beam" 
			}, 
			{ 
				"Strong": "Brick-Break" 
			}, 
			{ 
				"Ultimate": "Attract" 
			} 
		]
		 
}
// ...
```
Let's say we only wanted to display a particular field that matched our query. To do so, we need to use something called *projection*.

*Projection* is used on a query to specify which fields will be displayed and which won't upon executing the query. The syntax is:
```javascript
db.collection_name.find(
	{query},
	{projection}
)
```

### Specifying which fields to display

Using the same query as above, we are going to add *projection* to only display the `_id` and `name` fields of all documents whose `type` is `Electric`.
```javascript
db.pokemon.find(
  { type: "Electric" },
  { _id: 1, name: 1 }
)
```

Output:
```javascript
{
	"_id": ObjectId(
		"5d9d8c330b24990f19398214"
	),
	"name": "Pikachu"
},
{
	"_id": ObjectId(
		"5d9d8c3f0b24990f19398215"
	),
	"name": "Raichu"
}
```

### Specifying which fields NOT to display

Using the same query as above, we are going to add *projection* to omit the `_id`, `name` and `spells` fields and display all other fields for all documents whose `type` is `Electric`.
```javascript
db.pokemon.find(
  { type: "Electric" },
  { _id: 0, name: 0, spells: 0 }
)
```

Output:
```javascript
{ "type": "Electric", "power": 231 }
{ "type": "Electric", "power": 453 }
```

---
## Practice

What is *projection* used for?

???

* To specify which fields will and which won't be displayed upon executing the query.
* Only to specify which fields will be omitted from the query
* Only to specify which fields will be displayed upon executing the query
* To create a new document with the combined fields from all documents in the executed query

---
## Revision

Fill in the missing code below to only project(display) the `name` field for all documents whose `type` is `"Water"`.

```javascript
db.pokemon.find(
  { ???: "???" },
  {name: ???}
)
```


* `type`
* `Water`
* `1`
* `water`
* `0`
