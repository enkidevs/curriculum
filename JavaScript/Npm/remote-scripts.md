# Remote Scripts
author: mihaiberq

levels:

  - beginner
  - basic
  - medium
  - advanced

type: normal

category: feature

parent: scripts-lifecycle

---
## Content

Another feature of *npm* is running external scripts. These include shell scripts, Makefiles or other build tools that you are more familiar with.

Let's say we have both a shell script (`.sh`) and a Makefile that accomplish different things in your project. This already may be confusing, as you may have to remember what each of these files does. You can simplify everything by invoking them using *npm scripts*.

For example:
```javascript
"scripts": {
  "backend": "cd backend && make",
  "deploy:complex": "./deploy.sh"
}
```
You can then use `npm run` to run both. In case of the Makefile, the target can also be specified:
```bash
$ npm run backend dev
```
This would work if the *Makefile* has *dev* specified as a target:
```text
dev:
	cd .. && NODE_ENV=development
    ENV=development PORT=3000
    node server.js
```
---
## Revision

The syntax to add an external script to *package.json* is:
```javascript
??? : {
  "external": "???"
}
```
* `scripts`
* `./external_script.sh`
* `script`
* `external_script.js`
