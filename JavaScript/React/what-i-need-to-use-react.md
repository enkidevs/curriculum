# What I need to use **React**?
author: catalin

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/installation.html){website}

---
## Content

Being a truly flexible library, you can create applications from scratch with **React**, but also gradually including it to you code base without having to re-write anything.

To install **React** you can use a *package manager* such as `Yarn` or `npm`:
```
// yarn
$ yarn add react react-dom
// npm
$ npm install --save react react-dom
```

You can also use a **CDN** (Content Delivery Network). For both the development and production builds (*minified*) check the link appended at the end of the insight.

However, the former option is advised because it gives you access to a vast ecosystem of *third-party libraries* that can be easily installed and integrated.

Although not required, adopting a modern **build pipeline** is highly recommended as to boost productivity and efficiency. Apart from the *package manager*, this includes:

- a **bundler**[1] such as `webpack` or `browserify` to boost load time by modularising your code
- a **compiler** such as `Babel`

`Babel` compiler will take care of the *transpiling* as well, allowing you to write you application with `ES6` and `JSX` syntax. For this, you need to install `babel-preset-react` and `babel-preset-es2015` and enable them in your `.babelrc` config file.

To create a **Single page application** you can use the officially supported package called `create-react-app`:
```
npm i -g create-react-app
create-react-app myAppName
```

This will automatically create a *static application* with no backend logic or databases. However, this will set-up the development environment will all modern aspects discussed above.

To run your `create-react-app` app just:
```
cd myAppName
npm start
```

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
