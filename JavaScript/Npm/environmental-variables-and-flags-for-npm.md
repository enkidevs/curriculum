# Flags for `npm`
author: catalin

levels:

  - advanced

  - medium

type: normal

category: best practice

parent: check-data-about-a-package

links:

  - >-
    [strongloop.com](https://strongloop.com/strongblog/3-neat-tricks-with-npm-run/){website}


---
## Content

Configuration options such as **environment variables** and **command line flags** that are used for *Node.js* are also available for the `npm` package manager.


In particular the `npm run` and `npm start` commands let you set required **flags** (like the old `--harmony`) before running.


For instance:
```javascript
env NODE_PATH=./ node myProject/index.js

```
The script will add the specified directory to the `require()` function's module search path. If this script is  used in the testing modules (supposedly in another directory), `require()` will know to look in the current directory resulting in better path organization.

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
## Revision

Complete the start script to support `--harmony` flag in `package.json`:
```json
{
  "scripts": {
    "???": "env NODE_PATH=./ ???
        --harmony index.js"
  }
}
```
*`start`
*`node`
*`npm`
*`require`
*`dependencies`
