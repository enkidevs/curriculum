# Environmental Variables
author: mihaiberq

levels:

  - beginner
  - basic
  - medium
  - advanced

type: normal

category: feature

parent: available-binaries-for-scripting

---
## Content

Another feature of npm is allowing the user to set values which would be seen as *environmental variables* in *scripts*. All re-used values should be declared inside the *config* object:
```javascript
"config": {
  "js_dev": "backend/js/",
  "js_prod": "prod/backend/js/",
  "port": "8080"
},
"scripts": {
  "build:js":`browserify
 $npm_package_config_js_dev/main.js
 > $npm_package_config_js_prod/main.js`,
  "watch:js":`watch 'npm run build:js'
        $npm_package_config_js_dev`
}
```
The downside of it is that the reference can get quite verbose, as you have to add the `$npm_package_config_` prefix for every such variable. On the bright side, making changes to the location of the files is easier now as you would only have to change a single line.

You can locally override an existing config by running:
```bash
$ npm config set
    packageName:js_dev js/backend/
```
This would add an entry in the *~/.npmrc* file (`packageName:js_dev=js/backend/`), which is read at run time and changes the path on the local machine.

It is a good idea to include default values as it ensures the scripts can be run without modification. Take *port* for example, in a *server.js* file you could retrieve it by:
```javascript
http.createServer(...).listen(
  process.env.npm_package_config_port);
```
The same principle as above applies if users want to change the default port:
```bash
$ npm config set packageName:port 80
```

Keep in mind, however, that the environmental variables in Windows are invoked using `%`, which may cause OS compatibility problems.

---
## Practice

The prefix needed to invoke preconfigured values is:

???
* `$npm_package_config_`
* `npm_package_config_`
* `npm_package_config`
* `$npm_config`

---
## Revision

You can override the local value of an environmental variable by running:
```
$ npm ??? ??? ??? newValue
```
* `config`
* `set`
* `packageName:property`
* `property`
* `-s`
