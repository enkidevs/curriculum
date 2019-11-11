---
author: Stefan-Stojanovic

levels:
  - beginner
  
aspects:
  - introduction

type: normal

category: must-know

---

# ObjectId

---
## Content

In the previous workouts, we used manually inputted `_id`s when creating new documents. However, since `_id`s have to be unique for each document, this is not very useful. When working with a large number of documents, you would have to ensure that every new `_id` is unique, and you can imagine how this can get tedious very fast.

Fortunately, MongoDB offers a solution for this problem: auto-generated `ObjectId`s. When creating a document, if you omit the `_id` field, MongoDB will automatically create a unique `_id` for you.

### What is an `ObjectId`?

An `ObjectId` is a value made up of 12-byte of type BSON. These 12-byte values are made up of 3 segments:
- a 4-byte value that represents the seconds since the Unix epoch
- a 5-byte value that represents a random value
- a 3-byte value that represents a counter, which starts from a random value

Here is an example of an `ObjectId` value:

```js
x = ObjectId("507f1f77bcf86cd799439011");
```

### Why are `ObjectId`s better than manually inputted `_id`s?

To understand why `ObjectId`s are better, let's start off by taking a look at an example document:

Example documents:
```javascript
{ 
  "_id": ObjectId(
    "5d9b400f6fc68ecf1965c726"
  ),
  "name": "Mark",
  "position": "developer"
}
```

Besides being auto-generated and maintained by Mongo, `ObjectId`s also contain the creation date of a document. Looking at the example above, we can use the ObjectId to find the exact time Mark started to work at the company.

To do so, we need to use the `getTimestamp()` method after the `ObjectId` in our MongoDB shell and the output will give us the exact time Mark was employed in an `ISODate` format.

```javascript
ObjectId(
  "5d9b400f6fc68ecf1965c726"
).getTimestamp();
```

Output:
```javascript
ISODate("2019-10-07T13:39:27Z")
```

When looking at databases with millions of documents, these dates can help us narrow our searches. Also, when searching for documents with `ObjectId`s, we can sort the documents by those ids and essentially have a chronological order of documents based on the time they were generated.

There are more methods and uses for `ObjectId`s that we will cover later on.

**Important note:** Even though it is best practice to use `ObjectId`s instead of manually inputted ones, we will still use some manually inputted ids in our examples for easier readability and explanation of certain functions.

---
## Practice

The best practice when creating documents in MongoDB is to ???.

What is an `ObjectId`?

???

* omit the `_id` field and let MongoDB create a unique `ObjectID`
* An `ObjectId` is a 12-byte BSON type value that stores unique information about the document it was generated for.
* An `ObjectId` is an object used to hold all the ids.
* add a manually inputted value for the `_id` field that you can easily remember for later use
