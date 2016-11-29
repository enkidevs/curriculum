# Combining script commands in npm
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

notes: JSON markdown in editor apparently does not support multi line strings.

links:

  - >-
    [www.jayway.com](http://www.jayway.com/2014/03/28/running-scripts-with-npm/){website}

---
## Content

`npm` supports combining commands when running scripts. It will run the scripts bypassing the line to `sh`, thus making running scripts just as simple from the command line.

To pipe the result of a script to another use the `|` character:
```json
"scripts" : {
  "build-js" : "browserify  -t reactify \
      app/js/index.js | uglifyjs -mc > \
      static/bundle.js" 
  }
      
```

Supposing `browserify`, `reactify` and ` uglify-js`  are provided in **devDependencies**, this script above will pipe the result of bundling the JavaScript files to `uglifyjs` .

Anding commands is also possible using the `&&` command:
```json
"scripts" : {
  "build":  "npm run build-js && \
        npm run build-less"
}
```

Using the `&` character, concurrent scripts can also be run:
```json
 "scripts": {    
    "first": "npm run one & npm run two" 
    "one": "watchify app/js/file.js -t",
    "two": "nodemon index.js""    
  }
```

If `first` is run, both `one` and `two` scripts will be run concurrently.

---
## Practice

Run scripts `one` and `two` concurrently:

```
"scripts": {    
    "first": "npm ??? one ??? \
              npm run ???" 
    "one": "watchify app/js/file.js -t",
    "two": "nodemon index.js""    
  }
```
* `run`
* `&`
* `two`
* `|`
* `&&`
* `one`
* `script`

---
## Revision

Run scripts `one` and `two` concurrently:

```
"scripts": {    
    "first": "npm ??? one ??? \
              npm run ???" 
    "one": "watchify app/js/file.js -t",
    "two": "nodemon index.js""    
  }
```
* `run`
* `&`
* `two`
* `|`
* `&&`
* `one`
* `script`