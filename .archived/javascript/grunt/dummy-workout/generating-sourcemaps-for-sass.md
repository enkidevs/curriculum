---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

links:

  - '[github.com](https://github.com/gruntjs/grunt-contrib-sass){website}'

---
# Generating Sourcemaps for Sass

---
## Content

The `contrib-sass` plugin for *`grunt`* can be used to generate source maps when compiling *Sass* stylesheets to *CSS* stylesheets. 

Adding the following code to the configuration will compile the *Sass* code into *CSS* code. Adding `sourceMap: true` means a source map will be created.
```javaScript
sass: {
  styles: {
    options: {
      sourceMap: true, 
    },
    src: 'styles.scss',
    dest: 'styles.css'
  }
}
```
To run the task:
```bash
grunt sass
```
The task would produce the following output:
```bash
Running "sass:styles" (sass) task
File styles.css created.
File styles.css.map created.
```
If you were to check the generated *styles.css* file then the source map would be embedded at the bottom with a link to the source file.

---
## Revision

In the options part of your configuration what must you add to allow source maps to be created? ???
* sourceMap: true
* sourceMap-mode: create
* sourceMap-create: allow
* sourceMap: y