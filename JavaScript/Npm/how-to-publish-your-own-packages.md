# How to Publish Your Own Packages
author: mihaiberq

levels:

  - beginner
  - basic
  - medium
  - advanced

type: normal

category: how to

parent: tests

---
## Content

You've been using *npm* for some time and you have found out that your favorite framework doesn't do something you really need. The beauty of npm is that everyone can publish their own packages. So you decide to give something back and extend the framework's capabilities.

All you need to publish your package is an installation of node and accounts at GitHub and npm, both of which can be created for free. To avoid entering your details every time you initialize a new *package.json*, you can save your email and name inside the `~/.npmrc` file (a lot like you would do with `git config`):
```bash
$ npm set init.author.name "Mihai Bercu"
$ npm set init.author.email "mihai@enki.com"
```
Running `npm login` would then prompt you to enter your credentials and you are in!

Decide whether you want your package to be scoped (which makes sense in order to avoid naming conflicts) or not:
```bash
$ npm init --scope=username
```
You should also add a short description of what the package does in the *description* field, but keep the too technical details for the *README.md* file on GitHub. Don't forget to add a license as well.

Last but not least, specify an initial version of your package, ideally following the semantic versioning discussed in a previous insight.

---
## Revision

In order to publish your package to the npm repository, you need

???.

* an npm account
* an initial package version of `1.0.0`
* a `README.md` file
