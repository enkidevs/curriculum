# Niceties for your npm package
author: catalin

levels:

  - basic

  - beginner

type: normal

category: best practice

links:

  - '[npmjs](https://docs.npmjs.com/files/package.json){website}'

  - '[package.json.is](http://package.json.is/){website}'

---
## Content

When publishing your packages to the npm registry, or anywhere publicly, it's good practice and important to let users know about your project by specifying some *package niceties*.

These things, if not present, are presented to the user as **warnings** when typing `npm install`.

First of all, it's recommended to provide a description - be it short or long in the `package.json` file:
```json
{
  //fields
  "description": "Sample description",
  //fields
}
```
In addition to this, a repository link should be listed in this file:
```json
{
  //fields
  "repository": "myLinkToMyRep.com",
  //fields
}
```

`package.json` file can be edited manually or by running `npm init` again.

**README** data should also be provided in the root folder of the project. This is done by creating and editing a `README.md` file.