---
author: Stefan-Stojanovic
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
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


---

## Practice

The best practice when creating documents in MongoDB is to ???.

What is an `ObjectId`?

???

- omit the _id field and let MongoDB create a unique ObjectID
- An ObjectId is a 12-byte BSON type value that stores unique information about the document it was generated for.
- An ObjectId is an object used to hold all the ids.
- add a manually inputted value for the _id field that you can easily remember for later use
