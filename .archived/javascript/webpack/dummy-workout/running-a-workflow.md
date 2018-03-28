---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

notes: ''

links:

  - >-
    [christianalfoni.github.io](http://christianalfoni.github.io/javascript/2014/12/13/did-you-know-webpack-and-react-is-awesome.html#runningworkflow){website}

---
# Running a workflow

---
## Content

Instead of setting up a workflow in *Webpack* using `npm run build` which would have to be run after every change, it's best to set up `webpack-dev-server`.

To install:
```bash
npm i webpack-dev-server --save-dev
```

Then modify your *`package.json  -> dev`* script to include `webpack-dev-server`. 

*`Package.json`*:
```javaScript
{
  "scripts": {
    "build": "webpack",
    "dev": "webpack-dev-server --devtool \
            eval --progress \
            --content-base build"
  }
}
```
Now, running `npm run dev` will execute commands stated on the `dev` value. 
In this case:
- *`webpack-dev-server`* starts a web service on *localhost:8080*.
- *`--devtool eval`* creates source URLs for your code.
- *`--progress`* shows the progress of bundling your application.
- *`--content-base build`* points to the output directory configured.

Running `npm run dev` starts up a web service, watches for file changes and automatically re-bundles the application when any changes are found.

---
## Practice

Which of the following commands points to the output directory configured when running a workflow? ???

* --content-base build
* webpack-dev-server
* --devtool eval
* --progress
* --output-dir

---
## Revision

What `webpack-dev-server` flag will show the progress of bundling your application:

???

* --progress
* --devtool eval
* webpack-dev-server
* --content-base-build