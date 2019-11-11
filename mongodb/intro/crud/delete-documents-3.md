---
author: Stefan-Stojanovic

levels:
  - beginner
  
aspects:
  - workout
  - deep


type: normal

category: how to

---

# Delete documents with `findOneAndUpdate()`

---
## Content

The `findOneAndDelete()` method can be used to search through a collection and delete only the first document found based on the specified query. 

For instance, the query below searches for the first pokémon (document) whose `power` is greater than `1000` and deletes it:
```javascript
db.pokemon.findOneAndDelete({
  power: { $gt: 1000 }
})
```

Output:
```javascript
{
	"_id": ObjectId(
    "5d9d9ba30b24990f1939822a"
  ),
	"name": "Zeraora",
	"type": "Electric",
	"power": 3012
}
```

**Note:** When executed, the query returns the document that was deleted.

---
## Practice

Delete the first document that has the `type` equal to `"Water"`:

```js
db.pokemon.???({
  ???: { ???: "Water" }
});
```

* `findOneAndDelete`
* `type`
* `$eq`
* `findOneAndReplace`
* `findOneAndUpdate`
* `$is`
* `$set`