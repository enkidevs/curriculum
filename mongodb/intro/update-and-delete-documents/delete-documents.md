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

# Delete documents

---
## Content

### Delete a Single Document

To delete a single document you should use the `db.mycollection.deleteOne()` method.

Let's say we want to delete a pokémon named `Snorlax` from the `pokemon` collection. We can do so like this:

```javascript
db.pokemon.deleteOne({
  name: "Snorlax"
});
```

Output:

```javascript
{
  "acknowledged": true,
  "deletedCount": 1
}
```

If we wanted to delete a pokémon of type `"Grass"` where there are more than one of them, we could attempt to do so like:

```javascript
db.pokemon.deleteOne({
  type: "Grass"
});
```

This method would only delete the first pokémon document of that type. If we wanted to delete all pokémon of that type, we would need to use the `db.pokemon.deleteMany()` method.

### Delete Multiple Documents

To delete multiple documents within the `pokemon` collection, we need to use the `db.pokemon.deleteMany()` method.

For instance, here we delete all pokémon of type `"Grass"`:

```javascript
db.pokemon.deleteMany({
  type: "Grass"
});
```

Output:

```javascript
{
  "acknowledged": true,
  "deletedCount": 5
}
```

Furthermore, you can also delete all documents within a collection by using the `db.pokemon.deleteMany()` method with no parameters.

```javascript
db.pokemon.deleteMany()
```

Output:

```javascript
{
  "acknowledged": true,
  "deletedCount": 12
}
```

---
## Practice

Delete the first document in the `pokemon` table of type `"Fire"`.
```javascript
???.pokemon.???({
  ???: ???
})
```
Delete all documents within the `pokemon` collection: 

```js
???
```

* `db`
* `deleteOne`
* `type`
* `"Fire"`
* `db.pokemon.deleteMany()`
* `db.pokemon.delete({})`
* `db.pokemon.deleteAll()`
* `database`
* `deleteMany`
* `FIRE`

---
## Revision

Delete a single document within the `pokemon` collection with the name `"Abraxas"`:

```javascript
db.pokemon.???({
  ???: ???
})
```

Delete all documents within the `pokemon` collection with a type `"Ghost"`:

```javascript
db.pokemon.???({
  ???: ???
})
```

Delete all documents within the `pokemon` collection:

```javascript
???
```

* `deleteOne`
* `name`
* `"Abraxas"`
* `deleteMany`
* `type`
* `"Ghost"`
* `db.pokemon.deleteMany()`
* `db.pokemon.delete()`
* `db.pokemon.deleteAll()`
