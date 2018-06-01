---
author: mihaiberq

levels:
  - beginner
  - basic
  - medium
  - advanced

type: normal

category: how to

parent: how-npm3-handles-dependencies

standards:
  javascript.npm-tasks-and-modules-manager.0: 30
  javascript.npm-tasks-and-modules-manager.3: 30

tags:
  - introduction
  - workout
  - deep
---

# Npm Scripting

---

## Content

`npm` is a lot more than just a package manager for Node. It supports scripting using the `run-script` (or the abbreviated `run`) option.

Scripts can be specified inside _package.json_:

```javascript
{
  "name": "enki",
  // ...
  "scripts": {
    "myScript": "echo firstScript"
  }
}
```

And invoked using:

```bash
$ npm run myScript
firstScript
```

Why is this great? Say you are using CSS preprocessors like _LESS_ or _SASS_ and you have to compile them into _CSS_ files. All you have to do is specify `less` as a _devDependency_ and include this script:

```json
"scripts": {
  "build-less": `lessc app/less/main.less
      prod/css/main.css`
}
```

Running:

```bash
$ npm run build-less
```

Will produce the _.css_ file.

Another cool thing about scripting is that you can combine multiple sub-scripts into a single one like so:

```json
"scripts": {
  "build-less":`lessc app/less/main.less
      prod/css/main.css`,
  "build-js":`coffee --output prod/js/
      --compile app/js/main.js`,
  "build":`npm run build-less &
      npm run build-js`
}
```

This will speed up the process as two subshells will be invoked to resolve each build command (asynchronously) because of the `&` token.

---

## Practice

Fill in the following `package.json` file such that it has 2 scripts:

- one called `test` which will run `jest`
- second called `test:ci` which will run the first script with `-- --runInBand` option:

```json
{
  "name": "Enki",
  "???": {
    "???": "???",
    "???": "??? ???"
  }
}
```

- scripts
- test
- jest
- test:ci
- npm run test
- -- runInBand
- script
- node-scripts
- testing
- test --
- runInBand
- run test
- npm

---

## Revision

Given the following is in your `package.json`, execute the script called `dailyStats`

```javascript
{
  "name": "enki",
  // ...
  "scripts": {
    "dailyStats": "node ./bin/stats.js"
  }
}
```

??? ??? ???

- npm
- run
- dailyStats
- script
- exec
