# Tab completion in `npm`
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

notes: 'https://docs.npmjs.com/cli/completion'

links:

  - >-
    [www.marcusoft.net](http://www.marcusoft.net/2015/08/npm-scripting-configs-and-arguments.html#npm-completion){website}

---
## Content

**Tab-completion** can help you speed up typing commands in any command-line environments. You can also enable tab completion for `npm` commands as well as scripts defined in the `package.json` file.

```bash
$ npm completion >> tabCompletion.sh
```
This will create a `.sh` file that enables tab completion for the `package.json` file in the current directory.
You need to load this file into the current *shell*.

Instead of creating a separate file, the tab completion script can be sent to `~/.bashrc` or `~/.zshrc` files to enable tab completion for every new terminal window:
```bash
$ npm completion >> ~/.bashrc
```

---
## Practice

How do you create a `.sh` file that enables tab completion in the current directory?

```
$ npm ??? ??? tabCompletion.sh
```

* `completion`
* `>>`
* `<<`
* `tab`
* `tab-completion`
* `&&`

---
## Revision

How do you create a `.sh` file that enables tab completion in the current directory?

```
$ npm ??? ??? tabCompletion.sh
```

* `completion`
* `>>`
* `<<`
* `tab`
* `tab-completion`
* `&&`