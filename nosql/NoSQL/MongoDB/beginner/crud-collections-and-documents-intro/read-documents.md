---
author: stefan.stojanovic

levels:
  - beginner
  
aspects:
  - introduction
    
type: normal

category: must-know

standards: 
  javascript.crud.3: 10
  javascript.crud.4: 10

links:

---
# Read documents
---
## Content

To retrieve a document from a specific collection in MongoDB, you need to use the `db.collection_name.find()` method.

```javascript
db.pokemon.find()
```
Result:
```javascript
{ 
    "_id" : 1,
    "name" : "Pikachu", 
    "type" : "Electric" 
}
```

Using the `.find()` method without any paramaters will retrieve all the documents located in the selected collection.
**Note** that `.find({})` and `.find()` both work the same way.

You can also add different parameters to `.find()` for a more specific search.

Let's say we have over 100 Pokémon in the `pokemon` database and want to find only the `Electric` types.
We would type:

```javascript
db.pokemon.find({type:"Electric"})
```

Result:
```javascript
{ 
    "_id" : 1,
    "name" : "Pikachu",
    "type" : "Electric" 
}
{ 
    "_id" : 26, 
    "name" : "Raichu", 
    "type" : "Electric" 
}
{ 
    "_id" : 100,
    "name" : "Voltorb",
    "type" : "Electric" 
}
{ 
    "_id" : 101,
    "name" : "Electrode",
    "type" : "Electric"
}
```

Next, you can limit the number of results to display by adding the `.limit(NUM)` method. If the limit is not specified, the default limit is `20`. 

```javascript
db.pokemon.find({type:"Electric"}).limit(2)
```

Result:
```javascript
{ 
    "_id" : 1,
    "name" : "Pikachu",
    "type" : "Electric" 
}
{ 
    "_id" : 26, 
    "name" : "Raichu", 
    "type" : "Electric" 
}
```
Furthermore, you can also sort your result with the `.sort({})` method in either ascending or descending order by any field. 

The syntax is `.sort({field_name: 1 or -1})`
- `1` is ascending.
- `-1` is descending.

Let's take the example above, if we wanted to sort it in descending order by `_id` we can just add `.sort({_id:-1})` to our query.

```javascript
db.pokemon.find(
    {type:"Electric"}
    ).limit(2).sort({_id:-1})
```
Result:
```javascript
{ 
    "_id" : 26, 
    "name" : "Raichu", 
    "type" : "Electric" 
}
{ 
    "_id" : 1,
    "name" : "Pikachu",
    "type" : "Electric" 
}
```

---
## Practice

List all documents in the `pokemon` collection.

```javascript
???.???.???
```

* `db`
* `pokemon`
* `find()`
* `database`
* `Pokemon`
* `findAll()`
* `find([])`

---
## Revision

Which method is used to list all documents located within a single collection?

???

Which piece of code lists only the first 3 documents of the `pokemon` collection?

???

Which method is used to make the output of the query sorted by a selected field in ascending or descending order? 

???

* `.find()`
* `db.pokemon.find().limit(3)`
* `.sort()`
* `.order()`
* `.locate()`
* `.list()`
* `db.Pokemon.find().limit(3)`
* `db.pokemon.find().first(3)`