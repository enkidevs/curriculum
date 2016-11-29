# Current Lifecycle Event
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

links:

  - >-
    [docs.npmjs.com](https://docs.npmjs.com/misc/scripts#current-lifecycle-event){website}

---
## Content

`npm` provides an environment variable called `npm_lifecycle_event` which is set to whichever stage of the cycle is being executed.

Considering the scenario:
```
{ "scripts" :
  { "install" : "enki/install.js"
  , "postinstall" : "enki/install.js"
  , "uninstall" : "enki/uninstall.js"
  }
}
```
`enki/install.js` will be called for both de install and post-install stages of the lifecycle. 

Using:
```javascript
process.env.npm_lifecycle_event
```

you can check on which stage you are on so conditional implementation on the same script can be easily achieved.

---
## Practice

Which environment variable is used to check the stage of the cycle being executed? 

```
process.???.npm_???_event
```
* `env`
* `lifecycle`
* `current`
* `executing`
* `exec`
* `run`

---
## Revision

What environment variable can be used to find out the current lifecycle event?

???

* `process.env.npm_lifecycle_event`
* `process.env.npm_cycle_event`
* `process.env.npm_lifecycle`
* `process.env.npm_args`