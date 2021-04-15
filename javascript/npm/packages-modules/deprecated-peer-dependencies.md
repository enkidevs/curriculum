---
author: mihaiberq
type: normal
category: feature
tags:
  - workout
  - deep
  - new
links:
  - >-
    [Peer
    dependencies](https://nodejs.org/en/blog/npm/peer-dependencies/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Deprecated peer dependencies


---

## Content

By now, the question of what happens if one package depends on another package may have crossed your mind. Do you specify both in dependencies field or just the one you would use and hope npm will take care of everything?

The answer lies within the npm version you are using. There's a quick way to find that out:

```bash
npm -v
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

```bash
npm install PackageA
~/app
 |- PackageA
 |- PackageB
```

And you could `require('PackageB')` without problem.


---

## Practice

In which version of npm were *peerDependencies* available?

???

- npm v2
- npm v3
- npm v4


---

## Revision

Add a peer dependency called `enki` to your package using npm3+:

```json
{
  //props
  "???": {
    "???": "1.0.0"
  }
}
```

- peerDependencies
- enki
- dependencies
- enki:peer
- devDependencies
