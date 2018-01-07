# npm can handle multiple versions of a dependency
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

---
## Content

`npm` was created with the idea of avoiding dependency hell. It will keep all installed packages organized in `name/version` folders, making one of the versions **active** at any given time globally.

This being said, `npm` will handle any potential conflicts between dependencies of same version. 

An example: 
the installation of `top@1.0.0` package require both `middle1@1.0.0` and `middle2@1.0.0` packages. The former is dependant on version `1.0.0` of `last ` package while the latter is dependant on version `2.0.0` of the same package. 


```bash
top@1.0.0
|
+--middle1@1.0.0
|   |
|   `--last@1.0.0  -\
|                    \
`-- middle2@1.0.0     > Conflict solved
    |                /
    `--last@2.0.0  -/
```

In most package managers this conflict won't be solvable, while `npm` will handle them automatically.