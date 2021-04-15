---
author: Stefan-Stojanovic
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Why Are `ObjectId` s Better Than Manually Inputted `_id` s?


---

## Content

To understand why `ObjectId`s are better, let's start off by taking a look at an example document:

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

True or False?

Why `ObjectId`s are better than manually inputted ones.

Maintained by MongoDB: ???
Auto-generated: ???
Contain a time stamp in the form of an ISODate: ???
Always unique: ???

- True
- True
- True
- True
- False
- False
- False
- False
