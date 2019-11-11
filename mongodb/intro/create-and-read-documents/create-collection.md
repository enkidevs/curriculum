---
author: Stefan-Stojanovic

levels:
    - beginner

aspects:
    - introduction
    - workout

type: normal

category: must-know

---

# Create a collection

---
## Content

To create a collection in MongoDB, you need to use the `db.createCollection(name, options)` method.

**Note:** When creating a collection, you only have to specify the `name` parameter. The `options` parameter is not required and will be explained in a later workout.

```javascript
db.createCollection("pokemon")

// { "ok": 1 }
```

**Note**: If a collection doesn’t exist when you create/insert a new document, MongoDB will create one for you.

To list all collections within a database, you need to use the `show collections` command:

```javascript
show collections

// pokemon
```

---
## Practice

Create a new collection named `pokemon` in MongoDB.

```javascript
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

Display all collections in a MongoDB database.

```javascript
???
```

* `show collections`
* `display collections`
* `db.show.collections`
* `show collections.all`



