---
author: catalin
type: normal
category: hack
links:
  - >-
    [Source](https://github.com/facebook/react/issues/812#issuecomment-172929366){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Increase performance with `PROCESS.ENV`


---

## Content

Each process is linked to a set of **environmental variables** that your application can use for various configurations.

**Node.js** supports accessing environment variables out of the box. At boot, the `process` global object is extended through the `.env` propriety.

One way of setting *env* variables is through prefixing the `node` command:

```shell
PORT=8080 node index.js
```

Then we can access our `PORT` variable like:

```javascript
// index.js
console.log(process.env.PORT)
// 8080
```

Note `process.env` is a special object which gets the values through the unix `environ` system variable. It's also considered a **live** object, because at any point during runtime it will express the live values of *environmental variables* (although changed since boot time).

Having lots of calls to this object, which are expensive, throughout your project, might show up in its performance.

If your application **doesn't rely** on *live* environmental variables edits there is a simple hack to overcome some performance issues. You can simply replace the live object with a *plain JavaScript* one:

```javascript
process.env = JSON.parse(
  JSON.stringify(
    progress.env
  )
);
```

This hack doesn't guarantee a big performance increase, but for servers making use of *React Server Side rendering*, using it increased their **throughput** by up to `50%`.

In a similar fashion, it's better to cache the value of a variable that can be used multiple time instead of accessing `process.env` each time.


---

## Practice

What kind of object is `process.env`?

???

- live
- plain JavaScript
- static
- immutable


---

## Revision

Which of the followin scenarios do you think would perform better:

```shell
COPY="Enki" node index.js
```

```javascript
// index.js

// A
const copy = process.env.COPY;
for (x = 0; i < 10; i++) {
  console.log('I am ', copy);
}

// B
for (y = 0; y < 10; y++) {
  console.log('I am ', process.env.COPY);
}

// both will print 'I am Enki' 9 times
```

???

- A
- B
- same performance
