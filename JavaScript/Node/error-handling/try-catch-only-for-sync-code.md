# `try-catch` only for **sync** code
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

links:

  - '[nodejs.org](https://nodejs.org/api/errors.html){website}'

  - >-
    [blog.risingstack.com](https://blog.risingstack.com/node-js-best-practices/){website}

---
## Content

All *JavaScript* errors are handled as exceptions that will **instantly** generate and `throw` and error. To handle them, `try-catch` constructor is used.

However, most errors from within **asynchronous** APIs behave differently (mostly with callbacks or `EventEmitters`) so they can't be handled with `try-catch`.

For example, `JSON.parse` method happens **synchronously**. We can handle its errors with a `try-catch` block:
```javascript
function readJSON(filePath, callback) {  
  fs.readFile(filePath, (err, data) => {
    var parsedJson;

    // Handle error
    if (err) {
       return callback(err);
    }

    // Parse JSON with JSON.parse method
    try {
      parsedJson = JSON.parse(data);
    } catch (exception) {
      return callback(exception);
    }

    return callback(null, parsedJson);
  });
}

```

---
## Practice

Which of the following is the correct declaration of a `try-catch` block? ???

```javascript
// Option A
try (
   // code
) catch {exception} (
   // return exception
);

// Option B
try {
   // code
} catch {
   // return exception
}

// Option C
try {
   // code
} catch (exception) {
   // return exception
}

```

* Option C
* Option A
* Option B

---
## Revision

How must errors happen as to handle them with a `try-catch` block?

???

* `synchronously`
* `asynchronously`
