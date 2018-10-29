---
author: stefan.stojanovic

levels:
    - beginner

aspects:
    - introduction

type: normal

category: must-know

standards: 
  javascript.crud.12: 10
  javascript.crud.13: 10

links:

---
# Create A Collection
---
## Content

To create a collection in MongoDB, you need to use the `db.createCollection(name, options)` command.
**Note:** When creating a collection, you can specify only the `name` parameter. The `options` parameter is optional and will be explained in a later workout. 
 

```javascript
db.createCollection("pokemon")

//{ "ok" : 1 }
```

**Note:** MongoDB creates a collection on its own when you create/insert a new document. You don't really need to create a collection unless you want a specific configuration.

To list all collections within a database, you need to use the `show collections` command.
```javascript
show collections

//pokemon
```

---
## Practice

Create a new collection named `pokemon` in MongoDB.
```
???.???
```

* `db`
* `createCollection("pokemon")`
* `collection`
* `newCollection("Pokemon")`
* `new("Pokemon")`
* `database`
* `collection("pokemon")`

---
## Revision

Display all collection in a MongoDB database.

```
???
```

* `show collections`
* `display collections`
* `db.show.connections`
* `show collections.all`



