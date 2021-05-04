---
author: mihaiberq
type: normal
category: how-to
tags:
  - introduction
  - workout
links:
  - >-
    [Node JS and
    Errors](https://www.joyent.com/node-js/production/design/errors){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Handling Operational Errors


---

## Content

There isn't a single place in the application where errors can pop up, so you should be prepared to handle them wherever you are making a HTTP request, performing I/O operations, forking processes or validation input. You may end up handling the same error at different points of the stack, since those functions can't do more than passing the error.

For most operational errors, the message will most likely point to what is left to do. For example, trying to access a file that is not yet created will *return* (async) or *throw* (sync) an `ENOENT: no such file or directory` error.

While we're at it, let's focus on the difference between asynchronous and synchronous functions. Consider the following snippet:

```javascript
import fs from 'fs';

function readAndParseFile(path,
  user_callback) {
    try {
      fs.readFile(path, (err, text) => {
        if(err) throw err;
      });
    } catch(err) {
      user_callback(err);
    }
}
```

Can you identify why the following anti-pattern will fail? `try/catch` expects a synchronous exception (an "synchronous" looking approach using `async/await` won't work either). By the time `fs.read()` returns the error to the callback (or Promise), the `try/catch` block will be marked as successful and exited.

Moreover, always try to document your code and prepare for failure. Take, for example, a case where you want to accept only email addresses as username. Depending on what whether you want the code to work sync or async (but always write this down), you can either throw as soon as you receive the wrong input (`if(!input.match(/regex_here/))` or return an error to a callback/promise.

You should follow the same pattern and expect it from the others. Most of the times it will be stated in the documentation if a function is synchronous or asynchronous.

A stricter approach with regard to handling anything that requires non-standardized input is the safest bet. By regulating the the input range yourself, you are avoiding having to guess what the client meant (or intentionally delivered), which might lead to long-lasting, hard to discover bugs and backwards-compatibility issues after fixing. Otherwise, what should have been an easy to deal with operational error will quickly become a programmer error.


---

## Practice

Can you identify what will be the stack trace of the following snippet?

```javascript
const throw_example = () => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      throw new Error('throw_example');
    }, 0);
  });
};

const reject_example = () => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      reject(new Error('reject_example'));
    }, 0);
  });
};

const main = async () => {
  try {
    await reject_example();
    await throw_example();
  } catch (err) {
    console.log(err.message);
  }
};

main();
```

???

- No error shown, only the message reject_example.
- An exception with the message throw_example.
- An exception with the message reject_example.
- No error shown, only the message throw_example.


---

## Revision

For correctness and consistency, when writing an asynchronous function, errors raised should be ???

- returned
- thrown
- discarded
