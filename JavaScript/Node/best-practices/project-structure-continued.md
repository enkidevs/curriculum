# Node Best Practices: Project Structure (Cont.)
author: milesflo

levels:

  - basic

  - advanced

type: normal

category: best practice

standard: js.identify-common-design-patterns

links:

  - >-
    [Project Structure Practices](https://github.com/i0natan/nodebestpractices#1-project-structure-practices)

---
## Content

On top of abiding by Separation of Concerns, there are some additional NodeJS-specific best practices that we should address. These are covered with [Express](http://expressjs.com/) in mind, but you can substitute it with any similar HTTP server package.

In general, we should design our modules to be self-contained, and exist as separate layers (I.E., a Networking Layer, a Business Logic Layer, and a Data Access Layer, or DAL). Express methods and objects should be held within its limitations as much as possible in the Networking Layer.

Let's take a look at a sample API that has separate `userAPI.js` and `userDAL.js` files. In it, we have a database call to get a user by ID...
```javaScript
// userAPI.js
const app = require('express');
const database = require('userDAL.js');

app.get('/', (req,res,next) => {
  database.getByID(req);
})


// userDAL.js
class UserDAL {

  getByID(req) {
    // Class can only be used with an Express request. This is _very bad_.
    if (req.user.id) {
      otherFunction(req);
    }
  }

  // . . .
}
```

As you can see, the `getByID` method expects an Express object. This severely limits our ability to test this code in a testing suit. We can __only test with HTTP calls__. Instead, let's first extrapolate the information we need from `req` and create a new object to make this function call...

```javascript
// userAPI.js
const database = require('userDAL.js');

app.get('/', (req,res,next) => {
  const context = {
    user: req.user,
    transactionID: UUID.new(),
    properties: "Whatever else you need here."
  }
  database.getByID(context);
})


// userDAL.js
class UserDAL {

  getByID(obj) {
    if (obj.user.id) {
      otherFunction(obj);
    }
  }

  // . . .
}
```

With this small change, we now have the flexibility to use this class anywhere else in our code!

---
## Practice
What is one product of designing your application to use Express objects wherever possible?
???

* The app can only be tested with HTTP calls, and the code cannot be recycled.
* The app will be >50% faster.
* The app will be easier to maintain, because every function will have the same expected input.
