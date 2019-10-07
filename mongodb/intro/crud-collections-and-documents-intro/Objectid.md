---
author: Stefan-Stojanovic

levels:
  - beginner
  
aspects:
  - introduction

type: normal

category: must-know

links:

---
# ObjectId
---
## Content

In the previous insights, we used manually inputted `_id`'s when creating new documents. However, since `_id`'s have to be unique for each document, this is not very useful.

If we have a collection with large numbers of documents, we have to check which id's we've already added before adding new ones. 

The best practice when creating documents is to omit the `_id` field because MongoDB will add an auto-generated `ObjectId` to each new document.

### What is an ObjectId

ObjectId's are 12byte of type BSON. These 12 bytes are separated into 3 segments.

The first 4 bytes represent the seconds since the Unix epoch,

The next 5 bytes represent a random value,

And the last 3 bytes represent a counter, which starts from a random value.


### Why ObjectId's are better than manually inputted _id's

Let's say we have 2 databases where we add each new employe from the day they start working.

One database has manually inputted id's while the other has auto-generated `ObjectId`'s.

Both of these have the same documents and field-value pairs(except the `_id`). These are `_id`, `name` and `position`.

Example documents:
```javascript
// 1.
{ 
"_id": ObjectId("5d9b400f6fc68ecf1965c726"),
"name": "Mark",
"position": "developer"
}
// 2.
{ 
"_id": 100,
"name": "Mark",
"position": "developer"
}

```
Looking at the 2nd document, we know *Mark* is the 100th employee, we know his position and we know his name.

However, looking at the first document, we can use the `ObjectId` to find the exact time Mark started to work at our company.

To do so, we need to use the `.getTimestamp()` method after the `ObjectId` in our MongoDB shell and the output will give us the exact time Mark was employed in an `ISODate` format.

```javascript
ObjectId(
  "5d9b400f6fc68ecf1965c726"
).getTimestamp();
```
Output:
```javascript
ISODate("2019-10-07T13:39:27Z")
```

When looking at databases with millions of documents these dates can help us narrow our searches to only find documents from a specific date.

Also, when searching for documents with `ObjectId`'s, we can sort the documents by those Id's and essentially have a chronological order of documents based on the time they were generated.

There are more methods and uses for `ObjectId`'s that we will cover later on.

**Important note:** Even though it is best practice to use ObjectId's instead of manually inputted ones, we will still use some manually inputted id's in our examples for easier readability and explanation of certain functions.

---
## Practice

The best practice when creating documents in MongoDB is to ???

What is an ObjectId?

???

* omit the `_id` field and let MongoDB create a unique `ObjectID`
* An `ObjectId` is a 12-byte BSON type value that stores unique information about the document it was generated for.
* An `ObjectId` is the Id for the object/document
* add a manually inputted value for the `_id` field that you can easily remember for later use
