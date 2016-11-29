# Hook scripts!
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

parent: npm-scripts

links:

  - '[docs.npmjs.com](https://docs.npmjs.com/misc/scripts#hook-scripts){website}'

  - >-
    [www.marcusoft.net](http://www.marcusoft.net/2015/08/pre-and-post-hooks-for-npm-scripting.html){website}

---
## Content

`npm` is aware of some **script names** that will be ran automatically in the lifecycle if they're defined:
-  `publish`
- `install`
- `uninstall`
- `version`
- `test`
- `start`
- `stop` 
- `restart` 

Every one of these have respective `post<name>` and `pre<name>` hooks (e.g. `preinstall` and `postinstall`). 


Executable files are placed at:
```
node_modules/.hooks/{eventname}
```
These will be ran for **all packages** so this is useful when you want to run the same scripts for multiple packages during their lifecycle.

These hook scripts run in the same way as a normal script specified in `package.json`, but in *separate child processes*.

---
## Practice

Executable files are placed at:

```
node_modules/.hooks/{eventname} 
```
These will be ran in the same way as a normal script specified in `package.json` but in separate ???.

*child processes
*worker processes
*functions
*processes

---
## Revision

Where are hook scripts located?

```
???/???/{eventname}
```

*`node_modules`
*`.hooks`
*`hooks`
*`event_hooks`
*`hidden`
*`package.json`