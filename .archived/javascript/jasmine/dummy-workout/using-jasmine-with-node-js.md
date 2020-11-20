---
author: tommarshall

levels:

  - basic

  - beginner

type: normal

category: must-know

tags:

  - testing

links:

  - >-
    [blog.codeship.com](http://blog.codeship.com/jasmine-node-js-application-testing-tutorial/){website}

---
# Using Jasmine with node.js

---
## Content

Jasmine's node package consists of helpers for developing and running Jasmine tests with node.js.

You can install Jasmine using npm, locally in your project or globally, which allows the use of the CLI tool.
```bash
npm install -D jasmine
npm install -g jasmine
```

Initializing a project for Jasmine will create a spec directory and a json configuration file.
```bash
jasmine init
```

Customize *`spec/support/jasmine.json`* to get rid of any source and spec files you don't need the Jasmine runner to include. 

Once you have set up your jasmine.json, you can start Jasmine by running:
```bash
jasmine
```

---
## Practice

What file do you customise to get rid of any source or spec files you don't require your Jasmine runner to include? 

???

* spec/support/jasmine.json
* spec/support/jasmine.txt
* spec/support/jasmine.htm
* spec/support/jasmine.js

---
## Revision

How do you install Jasmine globally as to allow the use of the CLI tool?

```bash
npm install ??? ???
```

* -g
* jasmine
* -D
* jas
* node-jasmine
* -t