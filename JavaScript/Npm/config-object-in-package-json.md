# `config` object in `package.json`
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

links:

  - >-
    [docs.npmjs.com](https://docs.npmjs.com/misc/scripts#special-package-json-config-object){website}

---
## Content

The `package.json` field accepts a field with the key `config`, you can map to it different custom parameters with the following syntax:
```json
<name>[@<version>]:<key>
```

Note that version is purely optional.

These values can become useful as they can be accessed from within the `.js` files as environmental variables: 
```
process.env.npm_package_config_<name>
```

For example, we can set a default port for our application:
```json
//package.json
{ "name" : "enki",
  "config" : { 
    "port" : "8000"
    },
  //other params
}

```
The port can be accessed then from the `.js` file like this: 
```javascript
http.createServer(...).listen(
    process.env.npm_package_config_port);
```

The values can later be changed from within the command line:
```bash
# changes port value from 8000
# to 8080
$ npm config set enki:port 8080
```

---
## Practice

Change the value of `port` field of the config object in `package.json` to 1000 from the command line:

```
$ npm ??? ??? 
        enki:??? 1000
```

* `config`
* `set`
* `port`
* `server`
* `package.json`
* `config.json`
* `8080`

---
## Revision

Change the value of `port` field of the config object in `package.json` to 1000 from the command line:

```
$ npm ??? ??? enki:??? 1000
```

* `config`
* `set`
* `port`
* `server`
* `package.json`
* `config.json`
* `8080`