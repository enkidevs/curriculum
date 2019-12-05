---
author: catalin

levels:
  - beginner

type: normal

category: must-know

links:
  - '[facebook.github.io](https://facebook.github.io/react/docs/getting-started.html){website}'

parent: why-use-react

aspects:
  - introduction

---
# **React** dependencies

---
## Content

Being a truly flexible library, you can create applications from scratch with **React**, but also gradually including it to your code base without having to re-write anything.

To install **React** you can use a *package manager* such as `yarn` or `npm`:

```bash
// yarn
$ yarn add react react-dom
// npm
$ npm install --save react react-dom
```

You can also use a **CDN** (Content Delivery Network). For both the development and production builds (*minified*) check the link appended to the insight.

The former option is advised because it gives you access to a vast ecosystem of *third-party libraries* that can be easily installed and integrated.

Although not required, adopting a modern **build pipeline** is highly recommended to boost productivity and efficiency. Apart from the *package manager*, this includes:

- a **bundler**[1] such as `webpack` or `browserify` to improve load time by modularising your code
- a **compiler** such as `Babel`[2]

Using `Babel` compiler will allow you to write your application with both `ES6`[3] and `JSX` syntax. For this, you need to install `babel-preset-react` and `babel-preset-es2015` and enable them in your `.babelrc` config file.

To create a **Single page application** you can use the officially supported package called `create-react-app`:

```bash
$ npm i -g create-react-app
$ create-react-app myAppName
```

This will automatically create a *static application* with no backend logic or databases. However, this will set-up the development environment including all the modern tools specified above.

To run your `create-react-app` app just:

```bash
$ cd myAppName
$ npm start
```

---
## Practice

Which of the following is not a bundler for react?

???

* jsx
* babel
* webpack
* browserify

---
## Revision

Which tool will automatically set-up the development environment for a simple `React` **SPA**?

???

* create-react-app
* react-dom
* browserify
* babel-preset-react

---
## Footnotes

[1:bundler]
A `JavaScript` **bundler** is a tool that puts your code and all its dependencies together in one `JS` file. There are many of them out there these days, being the most popular ones `browserify` and `webpack`.

[2:Babel]
`Babel` is a compiler that transforms modern (or experimental) `JS` syntax into a format that can run in current and older browsers (or environments). 
You can download `Babel` at:
```
https://babeljs.io/
```

[3:ES6]
**ECMAScript 6** (`ES6`, often referred to as “Harmony”) is the upcoming sixth major release of the `ECMAScript` language specification. `ECMAScript` is the “proper” name for the language known as `JavaScript`.

