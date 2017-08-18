# Deprecated peer dependencies
author: mihaiberq

levels:
  - beginner
  - basic
  - medium
  - advanced

type: normal

category: feature

parent: dependencies

---
## Content

By now, the question of what happens if one package depends on another package may have crossed your mind. Do you specify both in dependencies field or just the one you would use and hope npm will take care of everything?

The answer lies within the npm version you are using. There's a quick way to find that out:
```bash
$ npm -v
# 3.10.3
```

npm 2 used to handle the problem quite intuitively. If PackageA depended on PackageB, `npm install PackageA` would build the following folder tree:
```bash
~/app
 |- PackageA
    |- PackageB
```
Straight forward, but not quite what you might had been looking for. You could `require('PackageA')`, but not `require('PackageB')` even though both were installed. The additional *package.json* **peerDependencies** property was introduced to solve this.

If *PackageA* had the following *package.json* file, which would tell npm to bundle PackageA and PackageB installations (much like node has to be installed for npm to work):
```javascript
{
  //props
  "peerDependencies": {
    "PackageB": "1.0.0"
  }
}
```
The tree would have the following structure:
```
$ npm install PackageA
~/app
 |- PackageA
 |- PackageB
```
And you could `require('PackageB')` without problem.

---
## Practice

In which version of npm were *peerDependencies* available?

???

* npm v2
* npm v3
* npm v4

---
## Revision

You can find out your npm version with:
```
$ ??? ???
```
* npm
* -v
* v
* node
* -npm
