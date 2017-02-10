# Npm Scripting
author: mihaiberq

levels:

  - beginner
  - basic
  - medium
  - advanced

type: normal

category: how to

parent: how-npm3-handles-dependencies

---
## Content

`npm` is a lot more than just a package manager for Node. It supports scripting using the `run-script` (or the abbreviated `run`) option.

Scripts can be specified inside *package.json*:
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
Why is this great? Say you are using CSS preprocessors like *LESS* or *SASS* and you have to compile them into *CSS* files. All you have to do is specify `less` as a *devDependency* and include this script:
```javascript
"scripts": {
  "build-less": `lessc app/less/main.less
      prod/css/main.css`
}
```
Running:
```bash
$ npm run build-less
```
Will produce the *.css* file.

Another cool thing about scripting is that you can combine multiple sub-scripts into a single one like so:
```javascript
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
## Revision

The `npm run` command is an abbreviation for:
```
???
```
* `npm run-script`
* `npm run-scripts`
* `npm run-test`
* `npm install --script`
