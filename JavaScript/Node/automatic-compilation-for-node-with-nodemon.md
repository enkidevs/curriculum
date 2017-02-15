# Automatic compilation for Node with **Nodemon**
author: catalin

levels:

  - basic

  - beginner

type: normal

category: hack

links:

  - '[github.com](https://github.com/remy/nodemon){website}'

---
## Content

**Nodemon** is a replacement for the standard **node** compiler. This utility wraps your application code and watches for any file changes.

When a change occurs the server is automatically restarted.

Install **nodemon** with **npm** in to the *bin* path:
```bash
npm install -g nodemon

```
Run your application with **nodemon**:
```bash
nodemon myapp.js
```

If you have a `package.json` file for your app, you can omit the main script entirely and **nodemon** will read the `package.json` for the main property and use that value as the app.


In order to enable debugging just use the `--debug` flag.

**Nodemon** also supports **CoffeeScript**:
```bash
nodemon myapp.coffee

```

For the command line interface options just type `nodemon --help`.

---
## Practice

Which flag must be used to enable debugging?

???

*`--debug`
*`debug`
*`-debug`
*`debugging`
*`--debugger`

---
## Revision

Which flag must be used to enable debugging?

???

*`--debug`
*`debug`
*`-debug`
*`debugging`
*`--debugger`
