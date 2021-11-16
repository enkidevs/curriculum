---
author: mihaiberq
type: normal
category: feature
tags:
  - introduction
  - workout
  - deep
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Remote Scripts


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
npm run backend dev
```

This would work if the *Makefile* has *dev* specified as a target:

```plain-text
dev:
  cd .. && NODE_ENV=development
    ENV=development PORT=3000
    node server.js
```


---

## Practice

Consider there is a Makefile in the `output` directory of your project. You want to run this with `prod` argument via an npm script called `makeOutput`:

How would you define the script?

```json
{
  "name": "Enki",
  "???": {
    "???": "??? ??? ???"
  }
}
```

How would you run the script?

```bash
??? ??? ???
```

- scripts
- makeOutput
- cd output
- &&
- make
- npm run
- makeOutput
- prod
- ||
- and
- npm
- makeFile
- output
- add


---

## Revision

The syntax to add an `external_script.sh` (found in the main directory of the project) to `package.json` is:

```javascript
??? : {
  "external": "???"
}
```

- scripts
- ./external_script.sh
- script
- external_script.js
