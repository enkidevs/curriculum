---
author: catalin
type: normal
category: best-practice
tags:
  - workout
  - deep
links:
  - >-
    [strongloop.com](https://strongloop.com/strongblog/3-neat-tricks-with-npm-run/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Flags for `npm`


---

## Content

Configuration options such as **environment variables** and **command line flags** that are used for *Node.js* are also available for the `npm` package manager.

In particular the `npm run` and `npm start` commands let you set required **flags** (like the old `--harmony`) before running.

For instance:

```javascript
env NODE_PATH=./ node myProject/index.js
```

The script will add the specified directory to the `require()` function's module search path. If this script is used in the testing modules (supposedly in another directory), `require()` will know to look in the current directory resulting in better path organization.

Suppose your application relies on the `env NODE_PATH ./` trick, but also on other flags, a starting script can be easily defined:

```json
{
  "scripts": {
    "start": "env NODE_PATH=./ node
        --harmony_proxies index.js"
  }
}
```


---

## Practice

How would you add an environmental variable called `API_KEY` that's equal to `xyz` at the runtime of your node application? Suppose the main file of your application is `index.js`

```bash
??? ??? ??? ??? ???
```

- API_KEY
- =
- xyz
- node
- index.js
- &&
- API
- ENVS
- =[
- API_KEY("xyz")]


---

## Revision

In `package.json`, define a script that runs `node index.js`. Add to it the `--harmony` flag at the end and an env variable called `API_KEY` that's equal to "abc".

```json
{
  "name": "Enki",
  "scripts": {
    "start": "???=??? ??? ??? ???"
  }
}
```

- API_KEY
- abc
- node
- index.js
- --harmony
- add
- run
- scripts
- npm
- --har
- -h
- "abc"
